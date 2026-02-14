(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g100228_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100229_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100230_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100233_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100234_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100237_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100238_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100239_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100240_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100244_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100245_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100246_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100247_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100251_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51585%_)
        (let* ((_%__stx9356293563%_ _%stx51585%_)
               (_%g5159451803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9356293563%_))))
          (let ((_%__kont9356593566%_
                 (lambda (_%g5159652695%_
                          _%g5159752697%_
                          _%g5159852698%_
                          _%g5159952699%_
                          _%g5160052700%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5160052700%_
                                     (cons _%g5159952699%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5160052700%_
                                                       (cons _%g5159852698%_
                                                             (cons _%g5159752697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5274352746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5274452749%_)
                  (cons _%g5274352746%_ _%g5274452749%_))
                '()
                _%g5159652695%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9356993570%_
                 (lambda (_%g5162852541%_
                          _%g5162952543%_
                          _%g5163052544%_
                          _%g5163152545%_
                          _%g5163252546%_
                          _%g5163352547%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5163352547%_
                                     (cons _%g5163252546%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5163352547%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5163152545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5163352547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5163052544%_
                                       (cons _%g5162952543%_ '())))
                           (foldr (lambda (_%g5259152594%_ _%g5259252597%_)
                                    (cons _%g5259152594%_ _%g5259252597%_))
                                  '()
                                  _%g5162852541%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9357393574%_
                 (lambda (_%g5166752360%_
                          _%g5166852362%_
                          _%g5166952363%_
                          _%g5167052364%_)
                   (let ((_%meta52401%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51585%_
                             _%g5166852362%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52401%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5167052364%_
                                           (cons _%g5166952363%_
                                                 (cons _%g5166852362%_ '())))
                                     (foldr (lambda (_%g5240552408%_
                                                     _%g5240652411%_)
                                              (cons _%g5240552408%_
                                                    _%g5240652411%_))
                                            '()
                                            _%g5166752360%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52401%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5167052364%_
                                               (cons _%g5166952363%_
                                                     (cons _%g5166852362%_
                                                           '())))
                                         (foldr (lambda (_%g5241552418%_
                                                         _%g5241652421%_)
                                                  (cons _%g5241552418%_
                                                        _%g5241652421%_))
                                                '()
                                                _%g5166752360%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51585%_
                              _%g5166852362%_
                              _%meta52401%_))))))
                (_%__kont9357793578%_
                 (lambda (_%g5169552240%_ _%g5169652242%_ _%g5169752243%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5169752243%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5169652242%_ '())))
                               (foldr (lambda (_%g5226652269%_ _%g5226752272%_)
                                        (cons _%g5226652269%_ _%g5226752272%_))
                                      '()
                                      _%g5169552240%_)))))
                (_%__kont9358193582%_
                 (lambda (_%g5172252100%_
                          _%g5172352102%_
                          _%g5172452103%_
                          _%g5172552104%_
                          _%g5172652105%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5172652105%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5172552104%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5172652105%_
                                                       (cons _%g5172452103%_
                                                             (cons _%g5172352102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5214652149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5214752152%_)
                  (cons _%g5214652149%_ _%g5214752152%_))
                '()
                _%g5172252100%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9358593586%_
                 (lambda (_%g5175751960%_
                          _%g5175851962%_
                          _%g5175951963%_
                          _%g5176051964%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5176051964%_ _%g5175951963%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5175851962%_
                                                 (foldr (lambda (_%g5198651989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5198751992%_)
                  (cons _%g5198651989%_ _%g5198751992%_))
                '()
                _%g5175751960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9358993590%_
                 (lambda (_%g5178251858%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5187651879%_ _%g5187751882%_)
                                        (cons _%g5187651879%_ _%g5187751882%_))
                                      '()
                                      _%g5178251858%_))))))
            (let* ((_%__match9389593896%_
                    (lambda (_%e5178351810%_
                             _%hd5178451814%_
                             _%tl5178551817%_
                             _%e5178651820%_
                             _%hd5178751824%_
                             _%tl5178851827%_
                             _%__splice9359193592%_
                             _%target5178951830%_
                             _%tl5179151833%_)
                      (letrec ((_%loop5179251836%_
                                (lambda (_%hd5179051840%_ _%body5179651843%_)
                                  (if (gx#stx-pair? _%hd5179051840%_)
                                      (let ((_%e5179351845%_
                                             (gx#syntax-e _%hd5179051840%_)))
                                        (let ((_%lp-tl5179551852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5179351845%_)))
                                              (_%lp-hd5179451849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5179351845%_))))
                                          (_%loop5179251836%_
                                           _%lp-tl5179551852%_
                                           (cons _%lp-hd5179451849%_
                                                 _%body5179651843%_))))
                                      (let ((_%body5179751855%_
                                             (reverse _%body5179651843%_)))
                                        (_%__kont9358993590%_
                                         _%body5179751855%_))))))
                        (_%loop5179251836%_ _%target5178951830%_ '()))))
                   (_%__match9387393874%_
                    (lambda (_%e5176151892%_
                             _%hd5176251896%_
                             _%tl5176351899%_
                             _%e5176451902%_
                             _%hd5176551906%_
                             _%tl5176651909%_
                             _%e5176751912%_
                             _%hd5176851916%_
                             _%tl5176951919%_
                             _%e5177051922%_
                             _%hd5177151926%_
                             _%tl5177251929%_
                             _%__splice9358793588%_
                             _%target5177351932%_
                             _%tl5177551935%_)
                      (letrec ((_%loop5177651938%_
                                (lambda (_%hd5177451942%_ _%body5178051945%_)
                                  (if (gx#stx-pair? _%hd5177451942%_)
                                      (let ((_%e5177751947%_
                                             (gx#syntax-e _%hd5177451942%_)))
                                        (let ((_%lp-tl5177951954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177751947%_)))
                                              (_%lp-hd5177851951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177751947%_))))
                                          (_%loop5177651938%_
                                           _%lp-tl5177951954%_
                                           (cons _%lp-hd5177851951%_
                                                 _%body5178051945%_))))
                                      (let ((_%body5178151957%_
                                             (reverse _%body5178051945%_)))
                                        (let ((_%g5175751960%_
                                               _%body5178151957%_)
                                              (_%g5175851962%_
                                               _%tl5176951919%_)
                                              (_%g5175951963%_
                                               _%tl5177251929%_)
                                              (_%g5176051964%_
                                               _%hd5177151926%_))
                                          (if (gx#identifier? _%g5176051964%_)
                                              (_%__kont9358593586%_
                                               _%g5175751960%_
                                               _%g5175851962%_
                                               _%g5175951963%_
                                               _%g5176051964%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_)))))))))
                        (_%loop5177651938%_ _%target5177351932%_ '()))))
                   (_%__match9385993860%_
                    (lambda (_%e5176151892%_
                             _%hd5176251896%_
                             _%tl5176351899%_
                             _%e5176451902%_
                             _%hd5176551906%_
                             _%tl5176651909%_
                             _%e5176751912%_
                             _%hd5176851916%_
                             _%tl5176951919%_)
                      (if (gx#stx-pair? _%hd5176851916%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5176851916%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (if (gx#stx-pair/null? _%tl5176651909%_)
                                  (let ((_%__splice9358793588%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5176651909%_
                                          '0)))
                                    (let ((_%tl5177551935%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '1)))
                                          (_%target5177351932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5177551935%_)
                                          (_%__match9387393874%_
                                           _%e5176151892%_
                                           _%hd5176251896%_
                                           _%tl5176351899%_
                                           _%e5176451902%_
                                           _%hd5176551906%_
                                           _%tl5176651909%_
                                           _%e5176751912%_
                                           _%hd5176851916%_
                                           _%tl5176951919%_
                                           _%e5177051922%_
                                           _%hd5177151926%_
                                           _%tl5177251929%_
                                           _%__splice9358793588%_
                                           _%target5177351932%_
                                           _%tl5177551935%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                   (_%__match9384193842%_
                    (lambda (_%e5172752002%_
                             _%hd5172852006%_
                             _%tl5172952009%_
                             _%e5173052012%_
                             _%hd5173152016%_
                             _%tl5173252019%_
                             _%e5173352022%_
                             _%hd5173452026%_
                             _%tl5173552029%_
                             _%e5173652032%_
                             _%hd5173752036%_
                             _%tl5173852039%_
                             _%e5173952042%_
                             _%hd5174052046%_
                             _%tl5174152049%_
                             _%e5174252052%_
                             _%hd5174352056%_
                             _%tl5174452059%_
                             _%e5174552062%_
                             _%hd5174652066%_
                             _%tl5174752069%_
                             _%__splice9358393584%_
                             _%target5174852072%_
                             _%tl5175052075%_)
                      (letrec ((_%loop5175152078%_
                                (lambda (_%hd5174952082%_ _%body5175552085%_)
                                  (if (gx#stx-pair? _%hd5174952082%_)
                                      (let ((_%e5175252087%_
                                             (gx#syntax-e _%hd5174952082%_)))
                                        (let ((_%lp-tl5175452094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5175252087%_)))
                                              (_%lp-hd5175352091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5175252087%_))))
                                          (_%loop5175152078%_
                                           _%lp-tl5175452094%_
                                           (cons _%lp-hd5175352091%_
                                                 _%body5175552085%_))))
                                      (let ((_%body5175652097%_
                                             (reverse _%body5175552085%_)))
                                        (let ((_%g5172252100%_
                                               _%body5175652097%_)
                                              (_%g5172352102%_
                                               _%hd5174652066%_)
                                              (_%g5172452103%_
                                               _%hd5174352056%_)
                                              (_%g5172552104%_
                                               _%hd5174052046%_)
                                              (_%g5172652105%_
                                               _%hd5173452026%_))
                                          (if (and (gx#identifier?
                                                    _%g5172652105%_)
                                                   (gx#identifier?
                                                    _%g5172352102%_)
                                                   (gx#identifier?
                                                    _%g5172452103%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5172452103%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5172452103%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5172452103%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5172452103%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9358193582%_
                                               _%g5172252100%_
                                               _%g5172352102%_
                                               _%g5172452103%_
                                               _%g5172552104%_
                                               _%g5172652105%_)
                                              (_%__match9385993860%_
                                               _%e5172752002%_
                                               _%hd5172852006%_
                                               _%tl5172952009%_
                                               _%e5173052012%_
                                               _%hd5173152016%_
                                               _%tl5173252019%_
                                               _%e5173352022%_
                                               _%hd5173452026%_
                                               _%tl5173552029%_))))))))
                        (_%loop5175152078%_ _%target5174852072%_ '()))))
                   (_%__match9378593786%_
                    (lambda (_%e5169852162%_
                             _%hd5169952166%_
                             _%tl5170052169%_
                             _%e5170152172%_
                             _%hd5170252176%_
                             _%tl5170352179%_
                             _%e5170452182%_
                             _%hd5170552186%_
                             _%tl5170652189%_
                             _%e5170752192%_
                             _%hd5170852196%_
                             _%tl5170952199%_
                             _%e5171052202%_
                             _%hd5171152206%_
                             _%tl5171252209%_
                             _%__splice9357993580%_
                             _%target5171352212%_
                             _%tl5171552215%_)
                      (letrec ((_%loop5171652218%_
                                (lambda (_%hd5171452222%_ _%body5172052225%_)
                                  (if (gx#stx-pair? _%hd5171452222%_)
                                      (let ((_%e5171752227%_
                                             (gx#syntax-e _%hd5171452222%_)))
                                        (let ((_%lp-tl5171952234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5171752227%_)))
                                              (_%lp-hd5171852231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5171752227%_))))
                                          (_%loop5171652218%_
                                           _%lp-tl5171952234%_
                                           (cons _%lp-hd5171852231%_
                                                 _%body5172052225%_))))
                                      (let ((_%body5172152237%_
                                             (reverse _%body5172052225%_)))
                                        (let ((_%g5169552240%_
                                               _%body5172152237%_)
                                              (_%g5169652242%_
                                               _%hd5171152206%_)
                                              (_%g5169752243%_
                                               _%hd5170552186%_))
                                          (if (gx#identifier? _%g5169752243%_)
                                              (_%__kont9357793578%_
                                               _%g5169552240%_
                                               _%g5169652242%_
                                               _%g5169752243%_)
                                              (_%__match9385993860%_
                                               _%e5169852162%_
                                               _%hd5169952166%_
                                               _%tl5170052169%_
                                               _%e5170152172%_
                                               _%hd5170252176%_
                                               _%tl5170352179%_
                                               _%e5170452182%_
                                               _%hd5170552186%_
                                               _%tl5170652189%_))))))))
                        (_%loop5171652218%_ _%target5171352212%_ '()))))
                   (_%__match9376593766%_
                    (lambda (_%e5169852162%_
                             _%hd5169952166%_
                             _%tl5170052169%_
                             _%e5170152172%_
                             _%hd5170252176%_
                             _%tl5170352179%_
                             _%e5170452182%_
                             _%hd5170552186%_
                             _%tl5170652189%_
                             _%e5170752192%_
                             _%hd5170852196%_
                             _%tl5170952199%_)
                      (if (gx#identifier? _%hd5170852196%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100228_|
                               _%hd5170852196%_)
                              (if (gx#stx-pair? _%tl5170952199%_)
                                  (let ((_%e5171052202%_
                                         (gx#syntax-e _%tl5170952199%_)))
                                    (let ((_%tl5171252209%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5171052202%_)))
                                          (_%hd5171152206%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5171052202%_))))
                                      (if (gx#stx-null? _%tl5171252209%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5170352179%_)
                                              (let ((_%__splice9357993580%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5170352179%_
                                                      '0)))
                                                (let ((_%tl5171552215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9357993580%_
                                                          '1)))
                                                      (_%target5171352212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9357993580%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5171552215%_)
                                                      (_%__match9378593786%_
                                                       _%e5169852162%_
                                                       _%hd5169952166%_
                                                       _%tl5170052169%_
                                                       _%e5170152172%_
                                                       _%hd5170252176%_
                                                       _%tl5170352179%_
                                                       _%e5170452182%_
                                                       _%hd5170552186%_
                                                       _%tl5170652189%_
                                                       _%e5170752192%_
                                                       _%hd5170852196%_
                                                       _%tl5170952199%_
                                                       _%e5171052202%_
                                                       _%hd5171152206%_
                                                       _%tl5171252209%_
                                                       _%__splice9357993580%_
                                                       _%target5171352212%_
                                                       _%tl5171552215%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5170552186%_)
                                                          (let ((_%e5177051922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5170552186%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5170552186%_)
                                                  (let ((_%e5177051922%_
                                                         (gx#syntax-e
                                                          _%hd5170552186%_)))
                                                    (let ((_%tl5177251929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5177051922%_)))
                                                          (_%hd5177151926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5177051922%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5159451803%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))
                                          (if (gx#stx-pair? _%tl5171252209%_)
                                              (let ((_%e5174252052%_
                                                     (gx#syntax-e
                                                      _%tl5171252209%_)))
                                                (let ((_%tl5174452059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5174252052%_)))
                                                      (_%hd5174352056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5174252052%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5174452059%_)
                                                      (let ((_%e5174552062%_
                                                             (gx#syntax-e
                                                              _%tl5174452059%_)))
                                                        (let ((_%tl5174752069%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5174552062%_)))
                      (_%hd5174652066%_
                       (let () (declare (not safe)) (##car _%e5174552062%_))))
                  (if (gx#stx-null? _%tl5174752069%_)
                      (if (gx#stx-pair/null? _%tl5170352179%_)
                          (let ((_%__splice9358393584%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5170352179%_
                                  '0)))
                            (let ((_%tl5175052075%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358393584%_ '1)))
                                  (_%target5174852072%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358393584%_
                                      '0))))
                              (if (gx#stx-null? _%tl5175052075%_)
                                  (_%__match9384193842%_
                                   _%e5169852162%_
                                   _%hd5169952166%_
                                   _%tl5170052169%_
                                   _%e5170152172%_
                                   _%hd5170252176%_
                                   _%tl5170352179%_
                                   _%e5170452182%_
                                   _%hd5170552186%_
                                   _%tl5170652189%_
                                   _%e5170752192%_
                                   _%hd5170852196%_
                                   _%tl5170952199%_
                                   _%e5171052202%_
                                   _%hd5171152206%_
                                   _%tl5171252209%_
                                   _%e5174252052%_
                                   _%hd5174352056%_
                                   _%tl5174452059%_
                                   _%e5174552062%_
                                   _%hd5174652066%_
                                   _%tl5174752069%_
                                   _%__splice9358393584%_
                                   _%target5174852072%_
                                   _%tl5175052075%_)
                                  (if (gx#stx-pair? _%hd5170552186%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5170552186%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))
                          (if (gx#stx-pair? _%hd5170552186%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5170552186%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                      (if (gx#stx-pair? _%hd5170552186%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5170552186%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (if (gx#stx-pair/null? _%tl5170352179%_)
                                  (let ((_%__splice9358793588%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5170352179%_
                                          '0)))
                                    (let ((_%tl5177551935%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '1)))
                                          (_%target5177351932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5177551935%_)
                                          (_%__match9387393874%_
                                           _%e5169852162%_
                                           _%hd5169952166%_
                                           _%tl5170052169%_
                                           _%e5170152172%_
                                           _%hd5170252176%_
                                           _%tl5170352179%_
                                           _%e5170452182%_
                                           _%hd5170552186%_
                                           _%tl5170652189%_
                                           _%e5177051922%_
                                           _%hd5177151926%_
                                           _%tl5177251929%_
                                           _%__splice9358793588%_
                                           _%target5177351932%_
                                           _%tl5177551935%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_))))))
              (if (gx#stx-pair? _%hd5170552186%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5170552186%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5170352179%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5170352179%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5169852162%_
                                   _%hd5169952166%_
                                   _%tl5170052169%_
                                   _%e5170152172%_
                                   _%hd5170252176%_
                                   _%tl5170352179%_
                                   _%e5170452182%_
                                   _%hd5170552186%_
                                   _%tl5170652189%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5170552186%_)
                                                  (let ((_%e5177051922%_
                                                         (gx#syntax-e
                                                          _%hd5170552186%_)))
                                                    (let ((_%tl5177251929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5177051922%_)))
                                                          (_%hd5177151926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5177051922%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5170352179%_)
                                                          (let ((_%__splice9358793588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5170352179%_ '0)))
                    (let ((_%tl5177551935%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '1)))
                          (_%target5177351932%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '0))))
                      (if (gx#stx-null? _%tl5177551935%_)
                          (_%__match9387393874%_
                           _%e5169852162%_
                           _%hd5169952166%_
                           _%tl5170052169%_
                           _%e5170152172%_
                           _%hd5170252176%_
                           _%tl5170352179%_
                           _%e5170452182%_
                           _%hd5170552186%_
                           _%tl5170652189%_
                           _%e5177051922%_
                           _%hd5177151926%_
                           _%tl5177251929%_
                           _%__splice9358793588%_
                           _%target5177351932%_
                           _%tl5177551935%_)
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))))
                                  (if (gx#stx-pair? _%hd5170552186%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5170552186%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5170352179%_)
                                              (let ((_%__splice9358793588%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5170352179%_
                                                      '0)))
                                                (let ((_%tl5177551935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '1)))
                                                      (_%target5177351932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5177551935%_)
                                                      (_%__match9387393874%_
                                                       _%e5169852162%_
                                                       _%hd5169952166%_
                                                       _%tl5170052169%_
                                                       _%e5170152172%_
                                                       _%hd5170252176%_
                                                       _%tl5170352179%_
                                                       _%e5170452182%_
                                                       _%hd5170552186%_
                                                       _%tl5170652189%_
                                                       _%e5177051922%_
                                                       _%hd5177151926%_
                                                       _%tl5177251929%_
                                                       _%__splice9358793588%_
                                                       _%target5177351932%_
                                                       _%tl5177551935%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5159451803%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                              (if (gx#stx-pair? _%hd5170552186%_)
                                  (let ((_%e5177051922%_
                                         (gx#syntax-e _%hd5170552186%_)))
                                    (let ((_%tl5177251929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5177051922%_)))
                                          (_%hd5177151926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5177051922%_))))
                                      (if (gx#stx-pair/null? _%tl5170352179%_)
                                          (let ((_%__splice9358793588%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5170352179%_
                                                  '0)))
                                            (let ((_%tl5177551935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9358793588%_
                                                      '1)))
                                                  (_%target5177351932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9358793588%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5177551935%_)
                                                  (_%__match9387393874%_
                                                   _%e5169852162%_
                                                   _%hd5169952166%_
                                                   _%tl5170052169%_
                                                   _%e5170152172%_
                                                   _%hd5170252176%_
                                                   _%tl5170352179%_
                                                   _%e5170452182%_
                                                   _%hd5170552186%_
                                                   _%tl5170652189%_
                                                   _%e5177051922%_
                                                   _%hd5177151926%_
                                                   _%tl5177251929%_
                                                   _%__splice9358793588%_
                                                   _%target5177351932%_
                                                   _%tl5177551935%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                          (if (gx#stx-pair? _%hd5170552186%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5170552186%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (if (gx#stx-pair/null? _%tl5170352179%_)
                                      (let ((_%__splice9358793588%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5170352179%_
                                              '0)))
                                        (let ((_%tl5177551935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9358793588%_
                                                  '1)))
                                              (_%target5177351932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9358793588%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5177551935%_)
                                              (_%__match9387393874%_
                                               _%e5169852162%_
                                               _%hd5169952166%_
                                               _%tl5170052169%_
                                               _%e5170152172%_
                                               _%hd5170252176%_
                                               _%tl5170352179%_
                                               _%e5170452182%_
                                               _%hd5170552186%_
                                               _%tl5170652189%_
                                               _%e5177051922%_
                                               _%hd5177151926%_
                                               _%tl5177251929%_
                                               _%__splice9358793588%_
                                               _%target5177351932%_
                                               _%tl5177551935%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_))))))
                   (_%__match9374193742%_
                    (lambda (_%e5167152282%_
                             _%hd5167252286%_
                             _%tl5167352289%_
                             _%e5167452292%_
                             _%hd5167552296%_
                             _%tl5167652299%_
                             _%e5167752302%_
                             _%hd5167852306%_
                             _%tl5167952309%_
                             _%e5168052312%_
                             _%hd5168152316%_
                             _%tl5168252319%_
                             _%e5168352322%_
                             _%hd5168452326%_
                             _%tl5168552329%_
                             _%__splice9357593576%_
                             _%target5168652332%_
                             _%tl5168852335%_)
                      (letrec ((_%loop5168952338%_
                                (lambda (_%hd5168752342%_ _%body5169352345%_)
                                  (if (gx#stx-pair? _%hd5168752342%_)
                                      (let ((_%e5169052347%_
                                             (gx#syntax-e _%hd5168752342%_)))
                                        (let ((_%lp-tl5169252354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5169052347%_)))
                                              (_%lp-hd5169152351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5169052347%_))))
                                          (_%loop5168952338%_
                                           _%lp-tl5169252354%_
                                           (cons _%lp-hd5169152351%_
                                                 _%body5169352345%_))))
                                      (let ((_%body5169452357%_
                                             (reverse _%body5169352345%_)))
                                        (let ((_%g5166752360%_
                                               _%body5169452357%_)
                                              (_%g5166852362%_
                                               _%hd5168452326%_)
                                              (_%g5166952363%_
                                               _%hd5168152316%_)
                                              (_%g5167052364%_
                                               _%hd5167852306%_))
                                          (if (and (gx#identifier?
                                                    _%g5167052364%_)
                                                   (gx#identifier?
                                                    _%g5166852362%_)
                                                   (gx#identifier?
                                                    _%g5166952363%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5166952363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5166952363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5166952363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5166952363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9357393574%_
                                               _%g5166752360%_
                                               _%g5166852362%_
                                               _%g5166952363%_
                                               _%g5167052364%_)
                                              (_%__match9376593766%_
                                               _%e5167152282%_
                                               _%hd5167252286%_
                                               _%tl5167352289%_
                                               _%e5167452292%_
                                               _%hd5167552296%_
                                               _%tl5167652299%_
                                               _%e5167752302%_
                                               _%hd5167852306%_
                                               _%tl5167952309%_
                                               _%e5168052312%_
                                               _%hd5168152316%_
                                               _%tl5168252319%_))))))))
                        (_%loop5168952338%_ _%target5168652332%_ '()))))
                   (_%__match9370193702%_
                    (lambda (_%e5163452433%_
                             _%hd5163552437%_
                             _%tl5163652440%_
                             _%e5163752443%_
                             _%hd5163852447%_
                             _%tl5163952450%_
                             _%e5164052453%_
                             _%hd5164152457%_
                             _%tl5164252460%_
                             _%e5164352463%_
                             _%hd5164452467%_
                             _%tl5164552470%_
                             _%e5164652473%_
                             _%hd5164752477%_
                             _%tl5164852480%_
                             _%e5164952483%_
                             _%hd5165052487%_
                             _%tl5165152490%_
                             _%e5165252493%_
                             _%hd5165352497%_
                             _%tl5165452500%_
                             _%e5165552503%_
                             _%hd5165652507%_
                             _%tl5165752510%_
                             _%__splice9357193572%_
                             _%target5165852513%_
                             _%tl5166052516%_)
                      (letrec ((_%loop5166152519%_
                                (lambda (_%hd5165952523%_ _%body5166552526%_)
                                  (if (gx#stx-pair? _%hd5165952523%_)
                                      (let ((_%e5166252528%_
                                             (gx#syntax-e _%hd5165952523%_)))
                                        (let ((_%lp-tl5166452535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5166252528%_)))
                                              (_%lp-hd5166352532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5166252528%_))))
                                          (_%loop5166152519%_
                                           _%lp-tl5166452535%_
                                           (cons _%lp-hd5166352532%_
                                                 _%body5166552526%_))))
                                      (let ((_%body5166652538%_
                                             (reverse _%body5166552526%_)))
                                        (let ((_%g5162852541%_
                                               _%body5166652538%_)
                                              (_%g5162952543%_
                                               _%hd5165652507%_)
                                              (_%g5163052544%_
                                               _%hd5165352497%_)
                                              (_%g5163152545%_
                                               _%hd5165052487%_)
                                              (_%g5163252546%_
                                               _%hd5164452467%_)
                                              (_%g5163352547%_
                                               _%hd5164152457%_))
                                          (if (and (gx#identifier?
                                                    _%g5163352547%_)
                                                   (gx#identifier?
                                                    _%g5162952543%_)
                                                   (gx#identifier?
                                                    _%g5163052544%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5163052544%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5163052544%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5163052544%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5163052544%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9356993570%_
                                               _%g5162852541%_
                                               _%g5162952543%_
                                               _%g5163052544%_
                                               _%g5163152545%_
                                               _%g5163252546%_
                                               _%g5163352547%_)
                                              (_%__match9376593766%_
                                               _%e5163452433%_
                                               _%hd5163552437%_
                                               _%tl5163652440%_
                                               _%e5163752443%_
                                               _%hd5163852447%_
                                               _%tl5163952450%_
                                               _%e5164052453%_
                                               _%hd5164152457%_
                                               _%tl5164252460%_
                                               _%e5164352463%_
                                               _%hd5164452467%_
                                               _%tl5164552470%_))))))))
                        (_%loop5166152519%_ _%target5165852513%_ '()))))
                   (_%__match9366993670%_
                    (lambda (_%e5163452433%_
                             _%hd5163552437%_
                             _%tl5163652440%_
                             _%e5163752443%_
                             _%hd5163852447%_
                             _%tl5163952450%_
                             _%e5164052453%_
                             _%hd5164152457%_
                             _%tl5164252460%_
                             _%e5164352463%_
                             _%hd5164452467%_
                             _%tl5164552470%_
                             _%e5164652473%_
                             _%hd5164752477%_
                             _%tl5164852480%_)
                      (if (gx#identifier? _%hd5164752477%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100229_|
                               _%hd5164752477%_)
                              (if (gx#stx-pair? _%tl5164852480%_)
                                  (let ((_%e5164952483%_
                                         (gx#syntax-e _%tl5164852480%_)))
                                    (let ((_%tl5165152490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5164952483%_)))
                                          (_%hd5165052487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5164952483%_))))
                                      (if (gx#stx-pair? _%tl5165152490%_)
                                          (let ((_%e5165252493%_
                                                 (gx#syntax-e
                                                  _%tl5165152490%_)))
                                            (let ((_%tl5165452500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5165252493%_)))
                                                  (_%hd5165352497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5165252493%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5165452500%_)
                                                  (let ((_%e5165552503%_
                                                         (gx#syntax-e
                                                          _%tl5165452500%_)))
                                                    (let ((_%tl5165752510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5165552503%_)))
                                                          (_%hd5165652507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5165552503%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5165752510%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5163952450%_)
                                                              (let ((_%__splice9357193572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5163952450%_
                              '0)))
                        (let ((_%tl5166052516%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9357193572%_ '1)))
                              (_%target5165852513%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9357193572%_ '0))))
                          (if (gx#stx-null? _%tl5166052516%_)
                              (_%__match9370193702%_
                               _%e5163452433%_
                               _%hd5163552437%_
                               _%tl5163652440%_
                               _%e5163752443%_
                               _%hd5163852447%_
                               _%tl5163952450%_
                               _%e5164052453%_
                               _%hd5164152457%_
                               _%tl5164252460%_
                               _%e5164352463%_
                               _%hd5164452467%_
                               _%tl5164552470%_
                               _%e5164652473%_
                               _%hd5164752477%_
                               _%tl5164852480%_
                               _%e5164952483%_
                               _%hd5165052487%_
                               _%tl5165152490%_
                               _%e5165252493%_
                               _%hd5165352497%_
                               _%tl5165452500%_
                               _%e5165552503%_
                               _%hd5165652507%_
                               _%tl5165752510%_
                               _%__splice9357193572%_
                               _%target5165852513%_
                               _%tl5166052516%_)
                              (if (gx#stx-pair? _%hd5164152457%_)
                                  (let ((_%e5177051922%_
                                         (gx#syntax-e _%hd5164152457%_)))
                                    (let ((_%tl5177251929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5177051922%_)))
                                          (_%hd5177151926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5177051922%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))))
                      (if (gx#stx-pair? _%hd5164152457%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5164152457%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                  (if (gx#stx-pair? _%hd5164152457%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5164152457%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (if (gx#stx-pair/null? _%tl5163952450%_)
                              (let ((_%__splice9358793588%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5163952450%_
                                      '0)))
                                (let ((_%tl5177551935%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '1)))
                                      (_%target5177351932%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5177551935%_)
                                      (_%__match9387393874%_
                                       _%e5163452433%_
                                       _%hd5163552437%_
                                       _%tl5163652440%_
                                       _%e5163752443%_
                                       _%hd5163852447%_
                                       _%tl5163952450%_
                                       _%e5164052453%_
                                       _%hd5164152457%_
                                       _%tl5164252460%_
                                       _%e5177051922%_
                                       _%hd5177151926%_
                                       _%tl5177251929%_
                                       _%__splice9358793588%_
                                       _%target5177351932%_
                                       _%tl5177551935%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5164452467%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100228_|
                                                           _%hd5164452467%_)
                                                          (if (gx#stx-null?
                                                               _%tl5165452500%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5163952450%_)
                          (let ((_%__splice9358393584%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5163952450%_
                                  '0)))
                            (let ((_%tl5175052075%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358393584%_ '1)))
                                  (_%target5174852072%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358393584%_
                                      '0))))
                              (if (gx#stx-null? _%tl5175052075%_)
                                  (_%__match9384193842%_
                                   _%e5163452433%_
                                   _%hd5163552437%_
                                   _%tl5163652440%_
                                   _%e5163752443%_
                                   _%hd5163852447%_
                                   _%tl5163952450%_
                                   _%e5164052453%_
                                   _%hd5164152457%_
                                   _%tl5164252460%_
                                   _%e5164352463%_
                                   _%hd5164452467%_
                                   _%tl5164552470%_
                                   _%e5164652473%_
                                   _%hd5164752477%_
                                   _%tl5164852480%_
                                   _%e5164952483%_
                                   _%hd5165052487%_
                                   _%tl5165152490%_
                                   _%e5165252493%_
                                   _%hd5165352497%_
                                   _%tl5165452500%_
                                   _%__splice9358393584%_
                                   _%target5174852072%_
                                   _%tl5175052075%_)
                                  (if (gx#stx-pair? _%hd5164152457%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5164152457%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))
                          (if (gx#stx-pair? _%hd5164152457%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5164152457%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                      (if (gx#stx-pair? _%hd5164152457%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5164152457%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (if (gx#stx-pair/null? _%tl5163952450%_)
                                  (let ((_%__splice9358793588%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5163952450%_
                                          '0)))
                                    (let ((_%tl5177551935%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '1)))
                                          (_%target5177351932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5177551935%_)
                                          (_%__match9387393874%_
                                           _%e5163452433%_
                                           _%hd5163552437%_
                                           _%tl5163652440%_
                                           _%e5163752443%_
                                           _%hd5163852447%_
                                           _%tl5163952450%_
                                           _%e5164052453%_
                                           _%hd5164152457%_
                                           _%tl5164252460%_
                                           _%e5177051922%_
                                           _%hd5177151926%_
                                           _%tl5177251929%_
                                           _%__splice9358793588%_
                                           _%target5177351932%_
                                           _%tl5177551935%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                  (if (gx#stx-pair? _%hd5164152457%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5164152457%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (if (gx#stx-pair/null? _%tl5163952450%_)
                              (let ((_%__splice9358793588%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5163952450%_
                                      '0)))
                                (let ((_%tl5177551935%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '1)))
                                      (_%target5177351932%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5177551935%_)
                                      (_%__match9387393874%_
                                       _%e5163452433%_
                                       _%hd5163552437%_
                                       _%tl5163652440%_
                                       _%e5163752443%_
                                       _%hd5163852447%_
                                       _%tl5163952450%_
                                       _%e5164052453%_
                                       _%hd5164152457%_
                                       _%tl5164252460%_
                                       _%e5177051922%_
                                       _%hd5177151926%_
                                       _%tl5177251929%_
                                       _%__splice9358793588%_
                                       _%target5177351932%_
                                       _%tl5177551935%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
              (if (gx#stx-pair? _%hd5164152457%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5164152457%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5163952450%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5163952450%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5163452433%_
                                   _%hd5163552437%_
                                   _%tl5163652440%_
                                   _%e5163752443%_
                                   _%hd5163852447%_
                                   _%tl5163952450%_
                                   _%e5164052453%_
                                   _%hd5164152457%_
                                   _%tl5164252460%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5164152457%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5164152457%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5163952450%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5163952450%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5163452433%_
                       _%hd5163552437%_
                       _%tl5163652440%_
                       _%e5163752443%_
                       _%hd5163852447%_
                       _%tl5163952450%_
                       _%e5164052453%_
                       _%hd5164152457%_
                       _%tl5164252460%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))))
                                  (if (gx#stx-null? _%tl5164852480%_)
                                      (if (gx#stx-pair/null? _%tl5163952450%_)
                                          (let ((_%__splice9357593576%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5163952450%_
                                                  '0)))
                                            (let ((_%tl5168852335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9357593576%_
                                                      '1)))
                                                  (_%target5168652332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9357593576%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5168852335%_)
                                                  (_%__match9374193742%_
                                                   _%e5163452433%_
                                                   _%hd5163552437%_
                                                   _%tl5163652440%_
                                                   _%e5163752443%_
                                                   _%hd5163852447%_
                                                   _%tl5163952450%_
                                                   _%e5164052453%_
                                                   _%hd5164152457%_
                                                   _%tl5164252460%_
                                                   _%e5164352463%_
                                                   _%hd5164452467%_
                                                   _%tl5164552470%_
                                                   _%e5164652473%_
                                                   _%hd5164752477%_
                                                   _%tl5164852480%_
                                                   _%__splice9357593576%_
                                                   _%target5168652332%_
                                                   _%tl5168852335%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5164152457%_)
                                                      (let ((_%e5177051922%_
                                                             (gx#syntax-e
                                                              _%hd5164152457%_)))
                                                        (let ((_%tl5177251929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5177051922%_)))
                      (_%hd5177151926%_
                       (let () (declare (not safe)) (##car _%e5177051922%_))))
                  (let () (declare (not safe)) (_%g5159451803%_))))
              (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5164152457%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5164152457%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                      (if (gx#stx-pair? _%hd5164152457%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5164152457%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5163952450%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5163952450%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5163452433%_
                                                           _%hd5163552437%_
                                                           _%tl5163652440%_
                                                           _%e5163752443%_
                                                           _%hd5163852447%_
                                                           _%tl5163952450%_
                                                           _%e5164052453%_
                                                           _%hd5164152457%_
                                                           _%tl5164252460%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                              (if (gx#stx-null? _%tl5164852480%_)
                                  (if (gx#stx-pair/null? _%tl5163952450%_)
                                      (let ((_%__splice9357593576%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5163952450%_
                                              '0)))
                                        (let ((_%tl5168852335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9357593576%_
                                                  '1)))
                                              (_%target5168652332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9357593576%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5168852335%_)
                                              (_%__match9374193742%_
                                               _%e5163452433%_
                                               _%hd5163552437%_
                                               _%tl5163652440%_
                                               _%e5163752443%_
                                               _%hd5163852447%_
                                               _%tl5163952450%_
                                               _%e5164052453%_
                                               _%hd5164152457%_
                                               _%tl5164252460%_
                                               _%e5164352463%_
                                               _%hd5164452467%_
                                               _%tl5164552470%_
                                               _%e5164652473%_
                                               _%hd5164752477%_
                                               _%tl5164852480%_
                                               _%__splice9357593576%_
                                               _%target5168652332%_
                                               _%tl5168852335%_)
                                              (if (gx#stx-pair?
                                                   _%hd5164152457%_)
                                                  (let ((_%e5177051922%_
                                                         (gx#syntax-e
                                                          _%hd5164152457%_)))
                                                    (let ((_%tl5177251929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5177051922%_)))
                                                          (_%hd5177151926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5177051922%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5159451803%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))))
                                      (if (gx#stx-pair? _%hd5164152457%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5164152457%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                  (if (gx#identifier? _%hd5164452467%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100228_|
                                           _%hd5164452467%_)
                                          (if (gx#stx-pair? _%tl5164852480%_)
                                              (let ((_%e5174252052%_
                                                     (gx#syntax-e
                                                      _%tl5164852480%_)))
                                                (let ((_%tl5174452059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5174252052%_)))
                                                      (_%hd5174352056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5174252052%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5174452059%_)
                                                      (let ((_%e5174552062%_
                                                             (gx#syntax-e
                                                              _%tl5174452059%_)))
                                                        (let ((_%tl5174752069%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5174552062%_)))
                      (_%hd5174652066%_
                       (let () (declare (not safe)) (##car _%e5174552062%_))))
                  (if (gx#stx-null? _%tl5174752069%_)
                      (if (gx#stx-pair/null? _%tl5163952450%_)
                          (let ((_%__splice9358393584%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5163952450%_
                                  '0)))
                            (let ((_%tl5175052075%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358393584%_ '1)))
                                  (_%target5174852072%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358393584%_
                                      '0))))
                              (if (gx#stx-null? _%tl5175052075%_)
                                  (_%__match9384193842%_
                                   _%e5163452433%_
                                   _%hd5163552437%_
                                   _%tl5163652440%_
                                   _%e5163752443%_
                                   _%hd5163852447%_
                                   _%tl5163952450%_
                                   _%e5164052453%_
                                   _%hd5164152457%_
                                   _%tl5164252460%_
                                   _%e5164352463%_
                                   _%hd5164452467%_
                                   _%tl5164552470%_
                                   _%e5164652473%_
                                   _%hd5164752477%_
                                   _%tl5164852480%_
                                   _%e5174252052%_
                                   _%hd5174352056%_
                                   _%tl5174452059%_
                                   _%e5174552062%_
                                   _%hd5174652066%_
                                   _%tl5174752069%_
                                   _%__splice9358393584%_
                                   _%target5174852072%_
                                   _%tl5175052075%_)
                                  (if (gx#stx-pair? _%hd5164152457%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5164152457%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))
                          (if (gx#stx-pair? _%hd5164152457%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5164152457%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                      (if (gx#stx-pair? _%hd5164152457%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5164152457%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (if (gx#stx-pair/null? _%tl5163952450%_)
                                  (let ((_%__splice9358793588%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5163952450%_
                                          '0)))
                                    (let ((_%tl5177551935%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '1)))
                                          (_%target5177351932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5177551935%_)
                                          (_%__match9387393874%_
                                           _%e5163452433%_
                                           _%hd5163552437%_
                                           _%tl5163652440%_
                                           _%e5163752443%_
                                           _%hd5163852447%_
                                           _%tl5163952450%_
                                           _%e5164052453%_
                                           _%hd5164152457%_
                                           _%tl5164252460%_
                                           _%e5177051922%_
                                           _%hd5177151926%_
                                           _%tl5177251929%_
                                           _%__splice9358793588%_
                                           _%target5177351932%_
                                           _%tl5177551935%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_))))))
              (if (gx#stx-pair? _%hd5164152457%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5164152457%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5163952450%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5163952450%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5163452433%_
                                   _%hd5163552437%_
                                   _%tl5163652440%_
                                   _%e5163752443%_
                                   _%hd5163852447%_
                                   _%tl5163952450%_
                                   _%e5164052453%_
                                   _%hd5164152457%_
                                   _%tl5164252460%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5164152457%_)
                                                  (let ((_%e5177051922%_
                                                         (gx#syntax-e
                                                          _%hd5164152457%_)))
                                                    (let ((_%tl5177251929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5177051922%_)))
                                                          (_%hd5177151926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5177051922%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5163952450%_)
                                                          (let ((_%__splice9358793588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5163952450%_ '0)))
                    (let ((_%tl5177551935%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '1)))
                          (_%target5177351932%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '0))))
                      (if (gx#stx-null? _%tl5177551935%_)
                          (_%__match9387393874%_
                           _%e5163452433%_
                           _%hd5163552437%_
                           _%tl5163652440%_
                           _%e5163752443%_
                           _%hd5163852447%_
                           _%tl5163952450%_
                           _%e5164052453%_
                           _%hd5164152457%_
                           _%tl5164252460%_
                           _%e5177051922%_
                           _%hd5177151926%_
                           _%tl5177251929%_
                           _%__splice9358793588%_
                           _%target5177351932%_
                           _%tl5177551935%_)
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))
                                          (if (gx#stx-pair? _%hd5164152457%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5164152457%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5163952450%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5163952450%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5163452433%_
                       _%hd5163552437%_
                       _%tl5163652440%_
                       _%e5163752443%_
                       _%hd5163852447%_
                       _%tl5163952450%_
                       _%e5164052453%_
                       _%hd5164152457%_
                       _%tl5164252460%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                      (if (gx#stx-pair? _%hd5164152457%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5164152457%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5163952450%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5163952450%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5163452433%_
                                                           _%hd5163552437%_
                                                           _%tl5163652440%_
                                                           _%e5163752443%_
                                                           _%hd5163852447%_
                                                           _%tl5163952450%_
                                                           _%e5164052453%_
                                                           _%hd5164152457%_
                                                           _%tl5164252460%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))))
                          (if (gx#stx-null? _%tl5164852480%_)
                              (if (gx#stx-pair/null? _%tl5163952450%_)
                                  (let ((_%__splice9357593576%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5163952450%_
                                          '0)))
                                    (let ((_%tl5168852335%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9357593576%_
                                              '1)))
                                          (_%target5168652332%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9357593576%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5168852335%_)
                                          (_%__match9374193742%_
                                           _%e5163452433%_
                                           _%hd5163552437%_
                                           _%tl5163652440%_
                                           _%e5163752443%_
                                           _%hd5163852447%_
                                           _%tl5163952450%_
                                           _%e5164052453%_
                                           _%hd5164152457%_
                                           _%tl5164252460%_
                                           _%e5164352463%_
                                           _%hd5164452467%_
                                           _%tl5164552470%_
                                           _%e5164652473%_
                                           _%hd5164752477%_
                                           _%tl5164852480%_
                                           _%__splice9357593576%_
                                           _%target5168652332%_
                                           _%tl5168852335%_)
                                          (if (gx#stx-pair? _%hd5164152457%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5164152457%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))))
                                  (if (gx#stx-pair? _%hd5164152457%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5164152457%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                              (if (gx#identifier? _%hd5164452467%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100228_|
                                       _%hd5164452467%_)
                                      (if (gx#stx-pair? _%tl5164852480%_)
                                          (let ((_%e5174252052%_
                                                 (gx#syntax-e
                                                  _%tl5164852480%_)))
                                            (let ((_%tl5174452059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5174252052%_)))
                                                  (_%hd5174352056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5174252052%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5174452059%_)
                                                  (let ((_%e5174552062%_
                                                         (gx#syntax-e
                                                          _%tl5174452059%_)))
                                                    (let ((_%tl5174752069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5174552062%_)))
                                                          (_%hd5174652066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5174552062%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5174752069%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5163952450%_)
                                                              (let ((_%__splice9358393584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5163952450%_
                              '0)))
                        (let ((_%tl5175052075%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358393584%_ '1)))
                              (_%target5174852072%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358393584%_ '0))))
                          (if (gx#stx-null? _%tl5175052075%_)
                              (_%__match9384193842%_
                               _%e5163452433%_
                               _%hd5163552437%_
                               _%tl5163652440%_
                               _%e5163752443%_
                               _%hd5163852447%_
                               _%tl5163952450%_
                               _%e5164052453%_
                               _%hd5164152457%_
                               _%tl5164252460%_
                               _%e5164352463%_
                               _%hd5164452467%_
                               _%tl5164552470%_
                               _%e5164652473%_
                               _%hd5164752477%_
                               _%tl5164852480%_
                               _%e5174252052%_
                               _%hd5174352056%_
                               _%tl5174452059%_
                               _%e5174552062%_
                               _%hd5174652066%_
                               _%tl5174752069%_
                               _%__splice9358393584%_
                               _%target5174852072%_
                               _%tl5175052075%_)
                              (if (gx#stx-pair? _%hd5164152457%_)
                                  (let ((_%e5177051922%_
                                         (gx#syntax-e _%hd5164152457%_)))
                                    (let ((_%tl5177251929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5177051922%_)))
                                          (_%hd5177151926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5177051922%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))))
                      (if (gx#stx-pair? _%hd5164152457%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5164152457%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                  (if (gx#stx-pair? _%hd5164152457%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5164152457%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (if (gx#stx-pair/null? _%tl5163952450%_)
                              (let ((_%__splice9358793588%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5163952450%_
                                      '0)))
                                (let ((_%tl5177551935%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '1)))
                                      (_%target5177351932%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5177551935%_)
                                      (_%__match9387393874%_
                                       _%e5163452433%_
                                       _%hd5163552437%_
                                       _%tl5163652440%_
                                       _%e5163752443%_
                                       _%hd5163852447%_
                                       _%tl5163952450%_
                                       _%e5164052453%_
                                       _%hd5164152457%_
                                       _%tl5164252460%_
                                       _%e5177051922%_
                                       _%hd5177151926%_
                                       _%tl5177251929%_
                                       _%__splice9358793588%_
                                       _%target5177351932%_
                                       _%tl5177551935%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5164152457%_)
                                                      (let ((_%e5177051922%_
                                                             (gx#syntax-e
                                                              _%hd5164152457%_)))
                                                        (let ((_%tl5177251929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5177051922%_)))
                      (_%hd5177151926%_
                       (let () (declare (not safe)) (##car _%e5177051922%_))))
                  (if (gx#stx-pair/null? _%tl5163952450%_)
                      (let ((_%__splice9358793588%_
                             (gx#syntax-split-splice->vector
                              _%tl5163952450%_
                              '0)))
                        (let ((_%tl5177551935%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '1)))
                              (_%target5177351932%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '0))))
                          (if (gx#stx-null? _%tl5177551935%_)
                              (_%__match9387393874%_
                               _%e5163452433%_
                               _%hd5163552437%_
                               _%tl5163652440%_
                               _%e5163752443%_
                               _%hd5163852447%_
                               _%tl5163952450%_
                               _%e5164052453%_
                               _%hd5164152457%_
                               _%tl5164252460%_
                               _%e5177051922%_
                               _%hd5177151926%_
                               _%tl5177251929%_
                               _%__splice9358793588%_
                               _%target5177351932%_
                               _%tl5177551935%_)
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5164152457%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5164152457%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5163952450%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5163952450%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5163452433%_
                       _%hd5163552437%_
                       _%tl5163652440%_
                       _%e5163752443%_
                       _%hd5163852447%_
                       _%tl5163952450%_
                       _%e5164052453%_
                       _%hd5164152457%_
                       _%tl5164252460%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                      (if (gx#stx-pair? _%hd5164152457%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5164152457%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5163952450%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5163952450%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5163452433%_
                                                           _%hd5163552437%_
                                                           _%tl5163652440%_
                                                           _%e5163752443%_
                                                           _%hd5163852447%_
                                                           _%tl5163952450%_
                                                           _%e5164052453%_
                                                           _%hd5164152457%_
                                                           _%tl5164252460%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                  (if (gx#stx-pair? _%hd5164152457%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5164152457%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5163952450%_)
                                              (let ((_%__splice9358793588%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5163952450%_
                                                      '0)))
                                                (let ((_%tl5177551935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '1)))
                                                      (_%target5177351932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5177551935%_)
                                                      (_%__match9387393874%_
                                                       _%e5163452433%_
                                                       _%hd5163552437%_
                                                       _%tl5163652440%_
                                                       _%e5163752443%_
                                                       _%hd5163852447%_
                                                       _%tl5163952450%_
                                                       _%e5164052453%_
                                                       _%hd5164152457%_
                                                       _%tl5164252460%_
                                                       _%e5177051922%_
                                                       _%hd5177151926%_
                                                       _%tl5177251929%_
                                                       _%__splice9358793588%_
                                                       _%target5177351932%_
                                                       _%tl5177551935%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5159451803%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))))
                   (_%__match9363993640%_
                    (lambda (_%e5160152607%_
                             _%hd5160252611%_
                             _%tl5160352614%_
                             _%e5160452617%_
                             _%hd5160552621%_
                             _%tl5160652624%_
                             _%e5160752627%_
                             _%hd5160852631%_
                             _%tl5160952634%_
                             _%e5161052637%_
                             _%hd5161152641%_
                             _%tl5161252644%_
                             _%e5161352647%_
                             _%hd5161452651%_
                             _%tl5161552654%_
                             _%e5161652657%_
                             _%hd5161752661%_
                             _%tl5161852664%_
                             _%__splice9356793568%_
                             _%target5161952667%_
                             _%tl5162152670%_)
                      (letrec ((_%loop5162252673%_
                                (lambda (_%hd5162052677%_ _%body5162652680%_)
                                  (if (gx#stx-pair? _%hd5162052677%_)
                                      (let ((_%e5162352682%_
                                             (gx#syntax-e _%hd5162052677%_)))
                                        (let ((_%lp-tl5162552689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5162352682%_)))
                                              (_%lp-hd5162452686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5162352682%_))))
                                          (_%loop5162252673%_
                                           _%lp-tl5162552689%_
                                           (cons _%lp-hd5162452686%_
                                                 _%body5162652680%_))))
                                      (let ((_%body5162752692%_
                                             (reverse _%body5162652680%_)))
                                        (let ((_%g5159652695%_
                                               _%body5162752692%_)
                                              (_%g5159752697%_
                                               _%hd5161752661%_)
                                              (_%g5159852698%_
                                               _%hd5161452651%_)
                                              (_%g5159952699%_
                                               _%hd5161152641%_)
                                              (_%g5160052700%_
                                               _%hd5160852631%_))
                                          (if (and (gx#identifier?
                                                    _%g5160052700%_)
                                                   (gx#identifier?
                                                    _%g5159852698%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5159852698%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5159852698%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5159852698%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5159852698%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5159852698%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9356593566%_
                                               _%g5159652695%_
                                               _%g5159752697%_
                                               _%g5159852698%_
                                               _%g5159952699%_
                                               _%g5160052700%_)
                                              (_%__match9366993670%_
                                               _%e5160152607%_
                                               _%hd5160252611%_
                                               _%tl5160352614%_
                                               _%e5160452617%_
                                               _%hd5160552621%_
                                               _%tl5160652624%_
                                               _%e5160752627%_
                                               _%hd5160852631%_
                                               _%tl5160952634%_
                                               _%e5161052637%_
                                               _%hd5161152641%_
                                               _%tl5161252644%_
                                               _%e5161352647%_
                                               _%hd5161452651%_
                                               _%tl5161552654%_))))))))
                        (_%loop5162252673%_ _%target5161952667%_ '())))))
              (if (gx#stx-pair? _%__stx9356293563%_)
                  (let ((_%e5160152607%_ (gx#syntax-e _%__stx9356293563%_)))
                    (let ((_%tl5160352614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5160152607%_)))
                          (_%hd5160252611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5160152607%_))))
                      (if (gx#stx-pair? _%tl5160352614%_)
                          (let ((_%e5160452617%_
                                 (gx#syntax-e _%tl5160352614%_)))
                            (let ((_%tl5160652624%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5160452617%_)))
                                  (_%hd5160552621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5160452617%_))))
                              (if (gx#stx-pair? _%hd5160552621%_)
                                  (let ((_%e5160752627%_
                                         (gx#syntax-e _%hd5160552621%_)))
                                    (let ((_%tl5160952634%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5160752627%_)))
                                          (_%hd5160852631%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5160752627%_))))
                                      (if (gx#stx-pair? _%tl5160952634%_)
                                          (let ((_%e5161052637%_
                                                 (gx#syntax-e
                                                  _%tl5160952634%_)))
                                            (let ((_%tl5161252644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5161052637%_)))
                                                  (_%hd5161152641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5161052637%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5161252644%_)
                                                  (let ((_%e5161352647%_
                                                         (gx#syntax-e
                                                          _%tl5161252644%_)))
                                                    (let ((_%tl5161552654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5161352647%_)))
                                                          (_%hd5161452651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5161352647%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5161552654%_)
                                                          (let ((_%e5161652657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5161552654%_)))
                    (let ((_%tl5161852664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5161652657%_)))
                          (_%hd5161752661%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5161652657%_))))
                      (if (gx#stx-null? _%tl5161852664%_)
                          (if (gx#stx-pair/null? _%tl5160652624%_)
                              (let ((_%__splice9356793568%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5160652624%_
                                      '0)))
                                (let ((_%tl5162152670%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9356793568%_
                                          '1)))
                                      (_%target5161952667%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9356793568%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5162152670%_)
                                      (_%__match9363993640%_
                                       _%e5160152607%_
                                       _%hd5160252611%_
                                       _%tl5160352614%_
                                       _%e5160452617%_
                                       _%hd5160552621%_
                                       _%tl5160652624%_
                                       _%e5160752627%_
                                       _%hd5160852631%_
                                       _%tl5160952634%_
                                       _%e5161052637%_
                                       _%hd5161152641%_
                                       _%tl5161252644%_
                                       _%e5161352647%_
                                       _%hd5161452651%_
                                       _%tl5161552654%_
                                       _%e5161652657%_
                                       _%hd5161752661%_
                                       _%tl5161852664%_
                                       _%__splice9356793568%_
                                       _%target5161952667%_
                                       _%tl5162152670%_)
                                      (if (gx#stx-pair? _%hd5160852631%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5160852631%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))))
                              (if (gx#stx-pair? _%hd5160852631%_)
                                  (let ((_%e5177051922%_
                                         (gx#syntax-e _%hd5160852631%_)))
                                    (let ((_%tl5177251929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5177051922%_)))
                                          (_%hd5177151926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5177051922%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                          (if (gx#identifier? _%hd5161452651%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g100229_|
                                   _%hd5161452651%_)
                                  (if (gx#stx-pair? _%tl5161852664%_)
                                      (let ((_%e5165252493%_
                                             (gx#syntax-e _%tl5161852664%_)))
                                        (let ((_%tl5165452500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5165252493%_)))
                                              (_%hd5165352497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5165252493%_))))
                                          (if (gx#stx-pair? _%tl5165452500%_)
                                              (let ((_%e5165552503%_
                                                     (gx#syntax-e
                                                      _%tl5165452500%_)))
                                                (let ((_%tl5165752510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5165552503%_)))
                                                      (_%hd5165652507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5165552503%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5165752510%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5160652624%_)
                                                          (let ((_%__splice9357193572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5160652624%_ '0)))
                    (let ((_%tl5166052516%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9357193572%_ '1)))
                          (_%target5165852513%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9357193572%_ '0))))
                      (if (gx#stx-null? _%tl5166052516%_)
                          (_%__match9370193702%_
                           _%e5160152607%_
                           _%hd5160252611%_
                           _%tl5160352614%_
                           _%e5160452617%_
                           _%hd5160552621%_
                           _%tl5160652624%_
                           _%e5160752627%_
                           _%hd5160852631%_
                           _%tl5160952634%_
                           _%e5161052637%_
                           _%hd5161152641%_
                           _%tl5161252644%_
                           _%e5161352647%_
                           _%hd5161452651%_
                           _%tl5161552654%_
                           _%e5161652657%_
                           _%hd5161752661%_
                           _%tl5161852664%_
                           _%e5165252493%_
                           _%hd5165352497%_
                           _%tl5165452500%_
                           _%e5165552503%_
                           _%hd5165652507%_
                           _%tl5165752510%_
                           _%__splice9357193572%_
                           _%target5165852513%_
                           _%tl5166052516%_)
                          (if (gx#stx-pair? _%hd5160852631%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5160852631%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_))))))
                  (if (gx#stx-pair? _%hd5160852631%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
              (if (gx#stx-pair? _%hd5160852631%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5160652624%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5160652624%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5160152607%_
                                   _%hd5160252611%_
                                   _%tl5160352614%_
                                   _%e5160452617%_
                                   _%hd5160552621%_
                                   _%tl5160652624%_
                                   _%e5160752627%_
                                   _%hd5160852631%_
                                   _%tl5160952634%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5161152641%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g100228_|
                                                       _%hd5161152641%_)
                                                      (if (gx#stx-null?
                                                           _%tl5165452500%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5160652624%_)
                                                              (let ((_%__splice9358393584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5160652624%_
                              '0)))
                        (let ((_%tl5175052075%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358393584%_ '1)))
                              (_%target5174852072%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358393584%_ '0))))
                          (if (gx#stx-null? _%tl5175052075%_)
                              (_%__match9384193842%_
                               _%e5160152607%_
                               _%hd5160252611%_
                               _%tl5160352614%_
                               _%e5160452617%_
                               _%hd5160552621%_
                               _%tl5160652624%_
                               _%e5160752627%_
                               _%hd5160852631%_
                               _%tl5160952634%_
                               _%e5161052637%_
                               _%hd5161152641%_
                               _%tl5161252644%_
                               _%e5161352647%_
                               _%hd5161452651%_
                               _%tl5161552654%_
                               _%e5161652657%_
                               _%hd5161752661%_
                               _%tl5161852664%_
                               _%e5165252493%_
                               _%hd5165352497%_
                               _%tl5165452500%_
                               _%__splice9358393584%_
                               _%target5174852072%_
                               _%tl5175052075%_)
                              (if (gx#stx-pair? _%hd5160852631%_)
                                  (let ((_%e5177051922%_
                                         (gx#syntax-e _%hd5160852631%_)))
                                    (let ((_%tl5177251929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5177051922%_)))
                                          (_%hd5177151926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5177051922%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))))
                      (if (gx#stx-pair? _%hd5160852631%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5160852631%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                  (if (gx#stx-pair? _%hd5160852631%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (if (gx#stx-pair/null? _%tl5160652624%_)
                              (let ((_%__splice9358793588%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5160652624%_
                                      '0)))
                                (let ((_%tl5177551935%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '1)))
                                      (_%target5177351932%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358793588%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5177551935%_)
                                      (_%__match9387393874%_
                                       _%e5160152607%_
                                       _%hd5160252611%_
                                       _%tl5160352614%_
                                       _%e5160452617%_
                                       _%hd5160552621%_
                                       _%tl5160652624%_
                                       _%e5160752627%_
                                       _%hd5160852631%_
                                       _%tl5160952634%_
                                       _%e5177051922%_
                                       _%hd5177151926%_
                                       _%tl5177251929%_
                                       _%__splice9358793588%_
                                       _%target5177351932%_
                                       _%tl5177551935%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
              (if (gx#stx-pair? _%hd5160852631%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5160652624%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5160652624%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5160152607%_
                                   _%hd5160252611%_
                                   _%tl5160352614%_
                                   _%e5160452617%_
                                   _%hd5160552621%_
                                   _%tl5160652624%_
                                   _%e5160752627%_
                                   _%hd5160852631%_
                                   _%tl5160952634%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5160852631%_)
                                                      (let ((_%e5177051922%_
                                                             (gx#syntax-e
                                                              _%hd5160852631%_)))
                                                        (let ((_%tl5177251929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5177051922%_)))
                      (_%hd5177151926%_
                       (let () (declare (not safe)) (##car _%e5177051922%_))))
                  (if (gx#stx-pair/null? _%tl5160652624%_)
                      (let ((_%__splice9358793588%_
                             (gx#syntax-split-splice->vector
                              _%tl5160652624%_
                              '0)))
                        (let ((_%tl5177551935%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '1)))
                              (_%target5177351932%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '0))))
                          (if (gx#stx-null? _%tl5177551935%_)
                              (_%__match9387393874%_
                               _%e5160152607%_
                               _%hd5160252611%_
                               _%tl5160352614%_
                               _%e5160452617%_
                               _%hd5160552621%_
                               _%tl5160652624%_
                               _%e5160752627%_
                               _%hd5160852631%_
                               _%tl5160952634%_
                               _%e5177051922%_
                               _%hd5177151926%_
                               _%tl5177251929%_
                               _%__splice9358793588%_
                               _%target5177351932%_
                               _%tl5177551935%_)
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5160852631%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5160852631%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5160652624%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5160652624%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5160152607%_
                                                           _%hd5160252611%_
                                                           _%tl5160352614%_
                                                           _%e5160452617%_
                                                           _%hd5160552621%_
                                                           _%tl5160652624%_
                                                           _%e5160752627%_
                                                           _%hd5160852631%_
                                                           _%tl5160952634%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                  (if (gx#identifier? _%hd5161152641%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100228_|
                                           _%hd5161152641%_)
                                          (if (gx#stx-pair? _%tl5161852664%_)
                                              (let ((_%e5174552062%_
                                                     (gx#syntax-e
                                                      _%tl5161852664%_)))
                                                (let ((_%tl5174752069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5174552062%_)))
                                                      (_%hd5174652066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5174552062%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5174752069%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5160652624%_)
                                                          (let ((_%__splice9358393584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5160652624%_ '0)))
                    (let ((_%tl5175052075%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358393584%_ '1)))
                          (_%target5174852072%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358393584%_ '0))))
                      (if (gx#stx-null? _%tl5175052075%_)
                          (_%__match9384193842%_
                           _%e5160152607%_
                           _%hd5160252611%_
                           _%tl5160352614%_
                           _%e5160452617%_
                           _%hd5160552621%_
                           _%tl5160652624%_
                           _%e5160752627%_
                           _%hd5160852631%_
                           _%tl5160952634%_
                           _%e5161052637%_
                           _%hd5161152641%_
                           _%tl5161252644%_
                           _%e5161352647%_
                           _%hd5161452651%_
                           _%tl5161552654%_
                           _%e5161652657%_
                           _%hd5161752661%_
                           _%tl5161852664%_
                           _%e5174552062%_
                           _%hd5174652066%_
                           _%tl5174752069%_
                           _%__splice9358393584%_
                           _%target5174852072%_
                           _%tl5175052075%_)
                          (if (gx#stx-pair? _%hd5160852631%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5160852631%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_))))))
                  (if (gx#stx-pair? _%hd5160852631%_)
                      (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                        (let ((_%tl5177251929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5177051922%_)))
                              (_%hd5177151926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5177051922%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
              (if (gx#stx-pair? _%hd5160852631%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (if (gx#stx-pair/null? _%tl5160652624%_)
                          (let ((_%__splice9358793588%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5160652624%_
                                  '0)))
                            (let ((_%tl5177551935%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9358793588%_ '1)))
                                  (_%target5177351932%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9358793588%_
                                      '0))))
                              (if (gx#stx-null? _%tl5177551935%_)
                                  (_%__match9387393874%_
                                   _%e5160152607%_
                                   _%hd5160252611%_
                                   _%tl5160352614%_
                                   _%e5160452617%_
                                   _%hd5160552621%_
                                   _%tl5160652624%_
                                   _%e5160752627%_
                                   _%hd5160852631%_
                                   _%tl5160952634%_
                                   _%e5177051922%_
                                   _%hd5177151926%_
                                   _%tl5177251929%_
                                   _%__splice9358793588%_
                                   _%target5177351932%_
                                   _%tl5177551935%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5160852631%_)
                                                  (let ((_%e5177051922%_
                                                         (gx#syntax-e
                                                          _%hd5160852631%_)))
                                                    (let ((_%tl5177251929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5177051922%_)))
                                                          (_%hd5177151926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5177051922%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5160652624%_)
                                                          (let ((_%__splice9358793588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5160652624%_ '0)))
                    (let ((_%tl5177551935%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '1)))
                          (_%target5177351932%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9358793588%_ '0))))
                      (if (gx#stx-null? _%tl5177551935%_)
                          (_%__match9387393874%_
                           _%e5160152607%_
                           _%hd5160252611%_
                           _%tl5160352614%_
                           _%e5160452617%_
                           _%hd5160552621%_
                           _%tl5160652624%_
                           _%e5160752627%_
                           _%hd5160852631%_
                           _%tl5160952634%_
                           _%e5177051922%_
                           _%hd5177151926%_
                           _%tl5177251929%_
                           _%__splice9358793588%_
                           _%target5177351932%_
                           _%tl5177551935%_)
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_))))
                                          (if (gx#stx-pair? _%hd5160852631%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5160852631%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5160652624%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5160652624%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5160152607%_
                       _%hd5160252611%_
                       _%tl5160352614%_
                       _%e5160452617%_
                       _%hd5160552621%_
                       _%tl5160652624%_
                       _%e5160752627%_
                       _%hd5160852631%_
                       _%tl5160952634%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                      (if (gx#stx-pair? _%hd5160852631%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5160852631%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5160652624%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5160652624%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5160152607%_
                                                           _%hd5160252611%_
                                                           _%tl5160352614%_
                                                           _%e5160452617%_
                                                           _%hd5160552621%_
                                                           _%tl5160652624%_
                                                           _%e5160752627%_
                                                           _%hd5160852631%_
                                                           _%tl5160952634%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                              (if (gx#identifier? _%hd5161152641%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100228_|
                                       _%hd5161152641%_)
                                      (if (gx#stx-pair? _%tl5161852664%_)
                                          (let ((_%e5174552062%_
                                                 (gx#syntax-e
                                                  _%tl5161852664%_)))
                                            (let ((_%tl5174752069%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5174552062%_)))
                                                  (_%hd5174652066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5174552062%_))))
                                              (if (gx#stx-null?
                                                   _%tl5174752069%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5160652624%_)
                                                      (let ((_%__splice9358393584%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5160652624%_
                                                              '0)))
                                                        (let ((_%tl5175052075%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358393584%_ '1)))
                      (_%target5174852072%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358393584%_ '0))))
                  (if (gx#stx-null? _%tl5175052075%_)
                      (_%__match9384193842%_
                       _%e5160152607%_
                       _%hd5160252611%_
                       _%tl5160352614%_
                       _%e5160452617%_
                       _%hd5160552621%_
                       _%tl5160652624%_
                       _%e5160752627%_
                       _%hd5160852631%_
                       _%tl5160952634%_
                       _%e5161052637%_
                       _%hd5161152641%_
                       _%tl5161252644%_
                       _%e5161352647%_
                       _%hd5161452651%_
                       _%tl5161552654%_
                       _%e5161652657%_
                       _%hd5161752661%_
                       _%tl5161852664%_
                       _%e5174552062%_
                       _%hd5174652066%_
                       _%tl5174752069%_
                       _%__splice9358393584%_
                       _%target5174852072%_
                       _%tl5175052075%_)
                      (if (gx#stx-pair? _%hd5160852631%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5160852631%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                          (let () (declare (not safe)) (_%g5159451803%_))))))
              (if (gx#stx-pair? _%hd5160852631%_)
                  (let ((_%e5177051922%_ (gx#syntax-e _%hd5160852631%_)))
                    (let ((_%tl5177251929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5177051922%_)))
                          (_%hd5177151926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5177051922%_))))
                      (let () (declare (not safe)) (_%g5159451803%_))))
                  (let () (declare (not safe)) (_%g5159451803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5160852631%_)
                                                      (let ((_%e5177051922%_
                                                             (gx#syntax-e
                                                              _%hd5160852631%_)))
                                                        (let ((_%tl5177251929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5177051922%_)))
                      (_%hd5177151926%_
                       (let () (declare (not safe)) (##car _%e5177051922%_))))
                  (if (gx#stx-pair/null? _%tl5160652624%_)
                      (let ((_%__splice9358793588%_
                             (gx#syntax-split-splice->vector
                              _%tl5160652624%_
                              '0)))
                        (let ((_%tl5177551935%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '1)))
                              (_%target5177351932%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '0))))
                          (if (gx#stx-null? _%tl5177551935%_)
                              (_%__match9387393874%_
                               _%e5160152607%_
                               _%hd5160252611%_
                               _%tl5160352614%_
                               _%e5160452617%_
                               _%hd5160552621%_
                               _%tl5160652624%_
                               _%e5160752627%_
                               _%hd5160852631%_
                               _%tl5160952634%_
                               _%e5177051922%_
                               _%hd5177151926%_
                               _%tl5177251929%_
                               _%__splice9358793588%_
                               _%target5177351932%_
                               _%tl5177551935%_)
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5160852631%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5160852631%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5160652624%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5160652624%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5160152607%_
                       _%hd5160252611%_
                       _%tl5160352614%_
                       _%e5160452617%_
                       _%hd5160552621%_
                       _%tl5160652624%_
                       _%e5160752627%_
                       _%hd5160852631%_
                       _%tl5160952634%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))
                                      (if (gx#stx-pair? _%hd5160852631%_)
                                          (let ((_%e5177051922%_
                                                 (gx#syntax-e
                                                  _%hd5160852631%_)))
                                            (let ((_%tl5177251929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5177051922%_)))
                                                  (_%hd5177151926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5177051922%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5160652624%_)
                                                  (let ((_%__splice9358793588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5160652624%_
                                                          '0)))
                                                    (let ((_%tl5177551935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '1)))
                                                          (_%target5177351932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9358793588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5177551935%_)
                                                          (_%__match9387393874%_
                                                           _%e5160152607%_
                                                           _%hd5160252611%_
                                                           _%tl5160352614%_
                                                           _%e5160452617%_
                                                           _%hd5160552621%_
                                                           _%tl5160652624%_
                                                           _%e5160752627%_
                                                           _%hd5160852631%_
                                                           _%tl5160952634%_
                                                           _%e5177051922%_
                                                           _%hd5177151926%_
                                                           _%tl5177251929%_
                                                           _%__splice9358793588%_
                                                           _%target5177351932%_
                                                           _%tl5177551935%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5159451803%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                  (if (gx#stx-pair? _%hd5160852631%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5160852631%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5160652624%_)
                                              (let ((_%__splice9358793588%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5160652624%_
                                                      '0)))
                                                (let ((_%tl5177551935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '1)))
                                                      (_%target5177351932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9358793588%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5177551935%_)
                                                      (_%__match9387393874%_
                                                       _%e5160152607%_
                                                       _%hd5160252611%_
                                                       _%tl5160352614%_
                                                       _%e5160452617%_
                                                       _%hd5160552621%_
                                                       _%tl5160652624%_
                                                       _%e5160752627%_
                                                       _%hd5160852631%_
                                                       _%tl5160952634%_
                                                       _%e5177051922%_
                                                       _%hd5177151926%_
                                                       _%tl5177251929%_
                                                       _%__splice9358793588%_
                                                       _%target5177351932%_
                                                       _%tl5177551935%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5159451803%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))))
                  (if (gx#stx-null? _%tl5161552654%_)
                      (if (gx#stx-pair/null? _%tl5160652624%_)
                          (let ((_%__splice9357593576%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5160652624%_
                                  '0)))
                            (let ((_%tl5168852335%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9357593576%_ '1)))
                                  (_%target5168652332%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9357593576%_
                                      '0))))
                              (if (gx#stx-null? _%tl5168852335%_)
                                  (_%__match9374193742%_
                                   _%e5160152607%_
                                   _%hd5160252611%_
                                   _%tl5160352614%_
                                   _%e5160452617%_
                                   _%hd5160552621%_
                                   _%tl5160652624%_
                                   _%e5160752627%_
                                   _%hd5160852631%_
                                   _%tl5160952634%_
                                   _%e5161052637%_
                                   _%hd5161152641%_
                                   _%tl5161252644%_
                                   _%e5161352647%_
                                   _%hd5161452651%_
                                   _%tl5161552654%_
                                   _%__splice9357593576%_
                                   _%target5168652332%_
                                   _%tl5168852335%_)
                                  (if (gx#stx-pair? _%hd5160852631%_)
                                      (let ((_%e5177051922%_
                                             (gx#syntax-e _%hd5160852631%_)))
                                        (let ((_%tl5177251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177051922%_)))
                                              (_%hd5177151926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177051922%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))
                          (if (gx#stx-pair? _%hd5160852631%_)
                              (let ((_%e5177051922%_
                                     (gx#syntax-e _%hd5160852631%_)))
                                (let ((_%tl5177251929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5177051922%_)))
                                      (_%hd5177151926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5177051922%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_))))
                              (let () (declare (not safe)) (_%g5159451803%_))))
                      (if (gx#stx-pair? _%hd5160852631%_)
                          (let ((_%e5177051922%_
                                 (gx#syntax-e _%hd5160852631%_)))
                            (let ((_%tl5177251929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5177051922%_)))
                                  (_%hd5177151926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5177051922%_))))
                              (if (gx#stx-pair/null? _%tl5160652624%_)
                                  (let ((_%__splice9358793588%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5160652624%_
                                          '0)))
                                    (let ((_%tl5177551935%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '1)))
                                          (_%target5177351932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9358793588%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5177551935%_)
                                          (_%__match9387393874%_
                                           _%e5160152607%_
                                           _%hd5160252611%_
                                           _%tl5160352614%_
                                           _%e5160452617%_
                                           _%hd5160552621%_
                                           _%tl5160652624%_
                                           _%e5160752627%_
                                           _%hd5160852631%_
                                           _%tl5160952634%_
                                           _%e5177051922%_
                                           _%hd5177151926%_
                                           _%tl5177251929%_
                                           _%__splice9358793588%_
                                           _%target5177351932%_
                                           _%tl5177551935%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5159451803%_)))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5160852631%_)
                                                      (let ((_%e5177051922%_
                                                             (gx#syntax-e
                                                              _%hd5160852631%_)))
                                                        (let ((_%tl5177251929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5177051922%_)))
                      (_%hd5177151926%_
                       (let () (declare (not safe)) (##car _%e5177051922%_))))
                  (if (gx#stx-pair/null? _%tl5160652624%_)
                      (let ((_%__splice9358793588%_
                             (gx#syntax-split-splice->vector
                              _%tl5160652624%_
                              '0)))
                        (let ((_%tl5177551935%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '1)))
                              (_%target5177351932%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9358793588%_ '0))))
                          (if (gx#stx-null? _%tl5177551935%_)
                              (_%__match9387393874%_
                               _%e5160152607%_
                               _%hd5160252611%_
                               _%tl5160352614%_
                               _%e5160452617%_
                               _%hd5160552621%_
                               _%tl5160652624%_
                               _%e5160752627%_
                               _%hd5160852631%_
                               _%tl5160952634%_
                               _%e5177051922%_
                               _%hd5177151926%_
                               _%tl5177251929%_
                               _%__splice9358793588%_
                               _%target5177351932%_
                               _%tl5177551935%_)
                              (let ()
                                (declare (not safe))
                                (_%g5159451803%_)))))
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5160852631%_)
                                              (let ((_%e5177051922%_
                                                     (gx#syntax-e
                                                      _%hd5160852631%_)))
                                                (let ((_%tl5177251929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5177051922%_)))
                                                      (_%hd5177151926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5177051922%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5160652624%_)
                                                      (let ((_%__splice9358793588%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5160652624%_
                                                              '0)))
                                                        (let ((_%tl5177551935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '1)))
                      (_%target5177351932%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9358793588%_ '0))))
                  (if (gx#stx-null? _%tl5177551935%_)
                      (_%__match9387393874%_
                       _%e5160152607%_
                       _%hd5160252611%_
                       _%tl5160352614%_
                       _%e5160452617%_
                       _%hd5160552621%_
                       _%tl5160652624%_
                       _%e5160752627%_
                       _%hd5160852631%_
                       _%tl5160952634%_
                       _%e5177051922%_
                       _%hd5177151926%_
                       _%tl5177251929%_
                       _%__splice9358793588%_
                       _%target5177351932%_
                       _%tl5177551935%_)
                      (let () (declare (not safe)) (_%g5159451803%_)))))
              (let () (declare (not safe)) (_%g5159451803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5159451803%_))))))
                                  (if (gx#stx-null? _%hd5160552621%_)
                                      (if (gx#stx-pair/null? _%tl5160652624%_)
                                          (let ((_%__splice9359193592%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5160652624%_
                                                  '0)))
                                            (let ((_%tl5179151833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9359193592%_
                                                      '1)))
                                                  (_%target5178951830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9359193592%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5179151833%_)
                                                  (_%__match9389593896%_
                                                   _%e5160152607%_
                                                   _%hd5160252611%_
                                                   _%tl5160352614%_
                                                   _%e5160452617%_
                                                   _%hd5160552621%_
                                                   _%tl5160652624%_
                                                   _%__splice9359193592%_
                                                   _%target5178951830%_
                                                   _%tl5179151833%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5159451803%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5159451803%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5159451803%_))))))
                          (let () (declare (not safe)) (_%g5159451803%_)))))
                  (let () (declare (not safe)) (_%g5159451803%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52763%_)
        (let* ((_%g5276752801%_
                (lambda (_%g5276852797%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5276852797%_)))
               (_%g5276652922%_
                (lambda (_%g5276852805%_)
                  (if (gx#stx-pair? _%g5276852805%_)
                      (let ((_%e5277252808%_ (gx#syntax-e _%g5276852805%_)))
                        (let ((_%hd5277352812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5277252808%_)))
                              (_%tl5277452815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5277252808%_))))
                          (if (gx#stx-pair? _%tl5277452815%_)
                              (let ((_%e5277552818%_
                                     (gx#syntax-e _%tl5277452815%_)))
                                (let ((_%hd5277652822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5277552818%_)))
                                      (_%tl5277752825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5277552818%_))))
                                  (if (gx#stx-pair? _%hd5277652822%_)
                                      (let ((_%e5277852828%_
                                             (gx#syntax-e _%hd5277652822%_)))
                                        (let ((_%hd5277952832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5277852828%_)))
                                              (_%tl5278052835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5277852828%_))))
                                          (if (gx#stx-pair? _%tl5278052835%_)
                                              (let ((_%e5278152838%_
                                                     (gx#syntax-e
                                                      _%tl5278052835%_)))
                                                (let ((_%hd5278252842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5278152838%_)))
                                                      (_%tl5278352845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5278152838%_))))
                                                  (if (gx#identifier?
                                                       _%hd5278252842%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100230_|
                                                           _%hd5278252842%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5278352845%_)
                                                              (let ((_%e5278452848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5278352845%_)))
                        (let ((_%hd5278552852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5278452848%_)))
                              (_%tl5278652855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5278452848%_))))
                          (if (gx#stx-null? _%tl5278652855%_)
                              (if (gx#stx-pair/null? _%tl5277752825%_)
                                  (let ((_g100231_
                                         (gx#syntax-split-splice
                                          _%tl5277752825%_
                                          '0)))
                                    (begin
                                      (let ((_g100232_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g100231_)
                                                   (##values-length _g100231_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g100232_ 2)))
                                            (error "Context expects 2 values"
                                                   _g100232_)))
                                      (let ((_%target5278752858%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100231_ 0)))
                                            (_%tl5278952861%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100231_ 1))))
                                        (if (gx#stx-null? _%tl5278952861%_)
                                            (letrec ((_%loop5279052864%_
                                                      (lambda (_%hd5278852868%_
                                                               _%body5279452871%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5278852868%_)
                                                            (let ((_%e5279152873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5278852868%_)))
                      (let ((_%lp-hd5279252877%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5279152873%_)))
                            (_%lp-tl5279352880%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5279152873%_))))
                        (_%loop5279052864%_
                         _%lp-tl5279352880%_
                         (cons _%lp-hd5279252877%_ _%body5279452871%_))))
                    (let ((_%body5279552883%_ (reverse _%body5279452871%_)))
                      ((lambda (_%g5276952886%_
                                _%g5277052888%_
                                _%g5277152889%_)
                         (if (gx#identifier? _%g5277152889%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5277052888%_
                                               (cons _%g5277152889%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5291352916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5291452919%_)
                            (cons _%g5291352916%_ _%g5291452919%_))
                          '()
                          _%g5276952886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5277152889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5277052888%_ (cons _%g5277152889%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5276752801%_ _%g5276852805%_)))
                       _%body5279552883%_
                       _%hd5278552852%_
                       _%hd5277952832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5279052864%_
                                               _%target5278752858%_
                                               '()))
                                            (_%g5276752801%_
                                             _%g5276852805%_)))))
                                  (_%g5276752801%_ _%g5276852805%_))
                              (_%g5276752801%_ _%g5276852805%_))))
                      (_%g5276752801%_ _%g5276852805%_))
                  (_%g5276752801%_ _%g5276852805%_))
              (_%g5276752801%_ _%g5276852805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5276752801%_
                                               _%g5276852805%_))))
                                      (_%g5276752801%_ _%g5276852805%_))))
                              (_%g5276752801%_ _%g5276852805%_))))
                      (_%g5276752801%_ _%g5276852805%_)))))
          (_%g5276652922%_ _%$stx52763%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53680%_ _%slot53682%_)
        (let ((_%$e53684%_
               (let ((__obj100030 _%klass53680%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100030
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100030 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100030
                      'slot-types)))))
          (if _%$e53684%_
              ((lambda (_%slot-types53688%_)
                 (agetq _%slot53682%_ _%slot-types53688%_))
               _%$e53684%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53661%_ _%slot53663%_)
        (let ((_%$e53665%_
               (let ((__obj100031 _%klass53661%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100031
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100031 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100031
                      'slot-defaults)))))
          (if _%$e53665%_
              ((lambda (_%slot-defaults53669%_)
                 (let ((_%$e53672%_
                        (agetq _%slot53663%_ _%slot-defaults53669%_)))
                   (if _%$e53672%_
                       (gx#syntax-local-introduce _%$e53672%_)
                       '#f)))
               _%$e53665%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53642%_ _%slot53644%_)
        (let ((_%$e53646%_
               (let ((__obj100032 _%klass53642%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100032
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100032 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100032
                      'slot-defaults)))))
          (if _%$e53646%_
              ((lambda (_%slot-defaults53650%_)
                 (let ((_%$e53653%_
                        (agetq _%slot53644%_ _%slot-defaults53650%_)))
                   (if _%$e53653%_
                       (gx#syntax-local-introduce _%$e53653%_)
                       '#f)))
               _%$e53646%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53411%_ _%slot53413%_)
        (let ((_%contract5341453416%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53411%_
                _%slot53413%_)))
          (if _%contract5341453416%_
              (let* ((_%contract53419%_ _%contract5341453416%_)
                     (_%__stx9389893899%_ _%contract53419%_)
                     (_%g5342453461%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9389893899%_))))
                (let ((_%__kont9390193902%_
                       (lambda (_%g5342653611%_ _%g5342753613%_)
                         (not (gx#free-identifier=?
                               _%g5342753613%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9390393904%_
                       (lambda (_%g5343453551%_
                                _%g5343553553%_
                                _%g5343653554%_)
                         (not (gx#free-identifier=?
                               _%g5343553553%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9390593906%_ (lambda (_%g5344953488%_) '#f)))
                  (let* ((_%__match9395193952%_
                          (lambda (_%e5343753511%_
                                   _%hd5343853515%_
                                   _%tl5343953518%_
                                   _%e5344053521%_
                                   _%hd5344153525%_
                                   _%tl5344253528%_
                                   _%e5344353531%_
                                   _%hd5344453535%_
                                   _%tl5344553538%_
                                   _%e5344653541%_
                                   _%hd5344753545%_
                                   _%tl5344853548%_)
                            (let ((_%g5343453551%_ _%hd5344753545%_)
                                  (_%g5343553553%_ _%hd5344453535%_)
                                  (_%g5343653554%_ _%hd5344153525%_))
                              (if (and (gx#identifier? _%g5343553553%_)
                                       (or (gx#free-identifier=?
                                            _%g5343553553%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5343553553%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5343553553%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5343553553%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9390393904%_
                                   _%g5343453551%_
                                   _%g5343553553%_
                                   _%g5343653554%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5342453461%_))))))
                         (_%__match9392193922%_
                          (lambda (_%e5342853591%_
                                   _%hd5342953595%_
                                   _%tl5343053598%_
                                   _%e5343153601%_
                                   _%hd5343253605%_
                                   _%tl5343353608%_)
                            (let ((_%g5342653611%_ _%hd5343253605%_)
                                  (_%g5342753613%_ _%hd5342953595%_))
                              (if (and (gx#identifier? _%g5342753613%_)
                                       (or (gx#free-identifier=?
                                            _%g5342753613%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5342753613%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5342753613%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5342753613%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9390193902%_
                                   _%g5342653611%_
                                   _%g5342753613%_)
                                  (if (gx#identifier? _%hd5342953595%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100233_|
                                           _%hd5342953595%_)
                                          (_%__kont9390593906%_
                                           _%hd5343253605%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5342453461%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5342453461%_))))))))
                    (if (gx#stx-pair? _%__stx9389893899%_)
                        (let ((_%e5342853591%_
                               (gx#syntax-e _%__stx9389893899%_)))
                          (let ((_%tl5343053598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5342853591%_)))
                                (_%hd5342953595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5342853591%_))))
                            (if (gx#stx-pair? _%tl5343053598%_)
                                (let ((_%e5343153601%_
                                       (gx#syntax-e _%tl5343053598%_)))
                                  (let ((_%tl5343353608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5343153601%_)))
                                        (_%hd5343253605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5343153601%_))))
                                    (if (gx#stx-null? _%tl5343353608%_)
                                        (_%__match9392193922%_
                                         _%e5342853591%_
                                         _%hd5342953595%_
                                         _%tl5343053598%_
                                         _%e5343153601%_
                                         _%hd5343253605%_
                                         _%tl5343353608%_)
                                        (if (gx#identifier? _%hd5342953595%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100233_|
                                                 _%hd5342953595%_)
                                                (if (gx#stx-pair?
                                                     _%tl5343353608%_)
                                                    (let ((_%e5344353531%_
                                                           (gx#syntax-e
                                                            _%tl5343353608%_)))
                                                      (let ((_%tl5344553538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5344353531%_)))
                    (_%hd5344453535%_
                     (let () (declare (not safe)) (##car _%e5344353531%_))))
                (if (gx#stx-pair? _%tl5344553538%_)
                    (let ((_%e5344653541%_ (gx#syntax-e _%tl5344553538%_)))
                      (let ((_%tl5344853548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5344653541%_)))
                            (_%hd5344753545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5344653541%_))))
                        (if (gx#stx-null? _%tl5344853548%_)
                            (_%__match9395193952%_
                             _%e5342853591%_
                             _%hd5342953595%_
                             _%tl5343053598%_
                             _%e5343153601%_
                             _%hd5343253605%_
                             _%tl5343353608%_
                             _%e5344353531%_
                             _%hd5344453535%_
                             _%tl5344553538%_
                             _%e5344653541%_
                             _%hd5344753545%_
                             _%tl5344853548%_)
                            (let () (declare (not safe)) (_%g5342453461%_)))))
                    (let () (declare (not safe)) (_%g5342453461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5342453461%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5342453461%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5342453461%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5342453461%_)))))
                        (let () (declare (not safe)) (_%g5342453461%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53180%_ _%slot53182%_)
        (let ((_%contract5318353185%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53180%_
                _%slot53182%_)))
          (if _%contract5318353185%_
              (let* ((_%contract53188%_ _%contract5318353185%_)
                     (_%__stx9397293973%_ _%contract53188%_)
                     (_%g5319353230%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9397293973%_))))
                (let ((_%__kont9397593976%_
                       (lambda (_%g5319553380%_ _%g5319653382%_)
                         (not (gx#free-identifier=?
                               _%g5319653382%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9397793978%_
                       (lambda (_%g5320353320%_
                                _%g5320453322%_
                                _%g5320553323%_)
                         '#t))
                      (_%__kont9397993980%_ (lambda (_%g5321853257%_) '#t)))
                  (let* ((_%__match9402594026%_
                          (lambda (_%e5320653280%_
                                   _%hd5320753284%_
                                   _%tl5320853287%_
                                   _%e5320953290%_
                                   _%hd5321053294%_
                                   _%tl5321153297%_
                                   _%e5321253300%_
                                   _%hd5321353304%_
                                   _%tl5321453307%_
                                   _%e5321553310%_
                                   _%hd5321653314%_
                                   _%tl5321753317%_)
                            (let ((_%g5320353320%_ _%hd5321653314%_)
                                  (_%g5320453322%_ _%hd5321353304%_)
                                  (_%g5320553323%_ _%hd5321053294%_))
                              (if (and (gx#identifier? _%g5320453322%_)
                                       (or (gx#free-identifier=?
                                            _%g5320453322%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5320453322%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5320453322%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5320453322%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9397793978%_
                                   _%g5320353320%_
                                   _%g5320453322%_
                                   _%g5320553323%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5319353230%_))))))
                         (_%__match9399593996%_
                          (lambda (_%e5319753360%_
                                   _%hd5319853364%_
                                   _%tl5319953367%_
                                   _%e5320053370%_
                                   _%hd5320153374%_
                                   _%tl5320253377%_)
                            (let ((_%g5319553380%_ _%hd5320153374%_)
                                  (_%g5319653382%_ _%hd5319853364%_))
                              (if (and (gx#identifier? _%g5319653382%_)
                                       (or (gx#free-identifier=?
                                            _%g5319653382%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5319653382%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5319653382%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5319653382%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9397593976%_
                                   _%g5319553380%_
                                   _%g5319653382%_)
                                  (if (gx#identifier? _%hd5319853364%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100234_|
                                           _%hd5319853364%_)
                                          (_%__kont9397993980%_
                                           _%hd5320153374%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5319353230%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5319353230%_))))))))
                    (if (gx#stx-pair? _%__stx9397293973%_)
                        (let ((_%e5319753360%_
                               (gx#syntax-e _%__stx9397293973%_)))
                          (let ((_%tl5319953367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5319753360%_)))
                                (_%hd5319853364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5319753360%_))))
                            (if (gx#stx-pair? _%tl5319953367%_)
                                (let ((_%e5320053370%_
                                       (gx#syntax-e _%tl5319953367%_)))
                                  (let ((_%tl5320253377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5320053370%_)))
                                        (_%hd5320153374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5320053370%_))))
                                    (if (gx#stx-null? _%tl5320253377%_)
                                        (_%__match9399593996%_
                                         _%e5319753360%_
                                         _%hd5319853364%_
                                         _%tl5319953367%_
                                         _%e5320053370%_
                                         _%hd5320153374%_
                                         _%tl5320253377%_)
                                        (if (gx#identifier? _%hd5319853364%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100234_|
                                                 _%hd5319853364%_)
                                                (if (gx#stx-pair?
                                                     _%tl5320253377%_)
                                                    (let ((_%e5321253300%_
                                                           (gx#syntax-e
                                                            _%tl5320253377%_)))
                                                      (let ((_%tl5321453307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5321253300%_)))
                    (_%hd5321353304%_
                     (let () (declare (not safe)) (##car _%e5321253300%_))))
                (if (gx#stx-pair? _%tl5321453307%_)
                    (let ((_%e5321553310%_ (gx#syntax-e _%tl5321453307%_)))
                      (let ((_%tl5321753317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5321553310%_)))
                            (_%hd5321653314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5321553310%_))))
                        (if (gx#stx-null? _%tl5321753317%_)
                            (_%__match9402594026%_
                             _%e5319753360%_
                             _%hd5319853364%_
                             _%tl5319953367%_
                             _%e5320053370%_
                             _%hd5320153374%_
                             _%tl5320253377%_
                             _%e5321253300%_
                             _%hd5321353304%_
                             _%tl5321453307%_
                             _%e5321553310%_
                             _%hd5321653314%_
                             _%tl5321753317%_)
                            (let () (declare (not safe)) (_%g5319353230%_)))))
                    (let () (declare (not safe)) (_%g5319353230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5319353230%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5319353230%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5319353230%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5319353230%_)))))
                        (let () (declare (not safe)) (_%g5319353230%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53167%_)
        (if (gx#identifier? _%id53167%_)
            (let* ((_%str53170%_ (symbol->string (gx#stx-e _%id53167%_)))
                   (_%index5317253174%_ (string-index _%str53170%_ '#\.)))
              (if _%index5317253174%_
                  (let ((_%index53177%_ _%index5317253174%_))
                    (if (let () (declare (not safe)) (##fx> _%index53177%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53170%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53160%_ _%id53162%_)
        (let ((_%parts53164%_
               (string-split (symbol->string (gx#stx-e _%id53162%_)) '#\.)))
          (if (find string-empty? _%parts53164%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53160%_
               _%id53162%_)
              (cons (gx#stx-identifier _%id53162%_ (car _%parts53164%_))
                    (map string->symbol (cdr _%parts53164%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53046%_ _%klass-or-id53048%_ _%slot53049%_)
        (let* ((_%klass53051%_
                (if (gx#identifier? _%klass-or-id53048%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53046%_
                       _%klass-or-id53048%_))
                    _%klass-or-id53048%_))
               (_%$e53056%_
                (agetq _%slot53049%_
                       (let ((__obj100033 _%klass53051%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100033
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100033
                                '17
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj100033
                              'unchecked-accessors))))))
          (if _%$e53056%_
              _%$e53056%_
              (let ((_%$e53064%_
                     (agetq _%slot53049%_
                            (let ((_%$e53060%_
                                   (let ((__obj100034 _%klass53051%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100034
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100034
                                            '22
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100034
                                          'slot-offsets)))))
                              (if _%$e53060%_ _%$e53060%_ '())))))
                (if _%$e53064%_
                    ((lambda (_%offset53068%_)
                       (let* ((_%g5307153090%_
                               (lambda (_%g5307253086%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5307253086%_)))
                              (_%g5307053154%_
                               (lambda (_%g5307253094%_)
                                 (if (gx#stx-pair? _%g5307253094%_)
                                     (let ((_%e5307653097%_
                                            (gx#syntax-e _%g5307253094%_)))
                                       (let ((_%hd5307753101%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5307653097%_)))
                                             (_%tl5307853104%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5307653097%_))))
                                         (if (gx#stx-pair? _%tl5307853104%_)
                                             (let ((_%e5307953107%_
                                                    (gx#syntax-e
                                                     _%tl5307853104%_)))
                                               (let ((_%hd5308053111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5307953107%_)))
                                                     (_%tl5308153114%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5307953107%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5308153114%_)
                                                     (let ((_%e5308253117%_
                                                            (gx#syntax-e
                                                             _%tl5308153114%_)))
                                                       (let ((_%hd5308353121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5308253117%_)))
                     (_%tl5308453124%_
                      (let () (declare (not safe)) (##cdr _%e5308253117%_))))
                 (if (gx#stx-null? _%tl5308453124%_)
                     ((lambda (_%g5307353127%_ _%g5307453129%_ _%g5307553130%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-ref)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons _%g5307353127%_
                                                             (cons _%g5307553130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g5307453129%_ '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx53046%_)))
                      _%hd5308353121%_
                      _%hd5308053111%_
                      _%hd5307753101%_)
                     (_%g5307153090%_ _%g5307253094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5307153090%_
                                                      _%g5307253094%_))))
                                             (_%g5307153090%_
                                              _%g5307253094%_))))
                                     (_%g5307153090%_ _%g5307253094%_)))))
                         (_%g5307053154%_
                          (list (let ((__obj100035 _%klass53051%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100035
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100035
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100035
                                       'type-descriptor)))
                                _%slot53049%_
                                _%offset53068%_))))
                     _%$e53064%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53046%_
                     _%klass53051%_
                     _%slot53049%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52927%_
               _%klass-or-id52929%_
               _%slot52930%_
               _%checked?52931%_)
        (let* ((_%klass52933%_
                (if (gx#identifier? _%klass-or-id52929%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52927%_
                       _%klass-or-id52929%_))
                    _%klass-or-id52929%_))
               (_%mutators52936%_
                (if _%checked?52931%_
                    (let ((__obj100036 _%klass52933%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100036
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100036
                             '16
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100036
                           'mutators)))
                    (let ((__obj100037 _%klass52933%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100037
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100037
                             '18
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100037
                           'unchecked-mutators)))))
               (_%$e52941%_ (agetq _%slot52930%_ _%mutators52936%_)))
          (if _%$e52941%_
              _%$e52941%_
              (let ((_%$e52949%_
                     (agetq _%slot52930%_
                            (let ((_%$e52945%_
                                   (let ((__obj100038 _%klass52933%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100038
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100038
                                            '22
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100038
                                          'slot-offsets)))))
                              (if _%$e52945%_ _%$e52945%_ '())))))
                (if _%$e52949%_
                    ((lambda (_%offset52953%_)
                       (let* ((_%g5295652975%_
                               (lambda (_%g5295752971%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5295752971%_)))
                              (_%g5295553040%_
                               (lambda (_%g5295752979%_)
                                 (if (gx#stx-pair? _%g5295752979%_)
                                     (let ((_%e5296152982%_
                                            (gx#syntax-e _%g5295752979%_)))
                                       (let ((_%hd5296252986%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5296152982%_)))
                                             (_%tl5296352989%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5296152982%_))))
                                         (if (gx#stx-pair? _%tl5296352989%_)
                                             (let ((_%e5296452992%_
                                                    (gx#syntax-e
                                                     _%tl5296352989%_)))
                                               (let ((_%hd5296552996%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5296452992%_)))
                                                     (_%tl5296652999%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5296452992%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5296652999%_)
                                                     (let ((_%e5296753002%_
                                                            (gx#syntax-e
                                                             _%tl5296652999%_)))
                                                       (let ((_%hd5296853006%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5296753002%_)))
                     (_%tl5296953009%_
                      (let () (declare (not safe)) (##cdr _%e5296753002%_))))
                 (if (gx#stx-null? _%tl5296953009%_)
                     ((lambda (_%g5295853012%_ _%g5295953014%_ _%g5296053015%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj)
                                           (cons (gx#datum->syntax '#f '$val)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-set!)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons _%g5295853012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g5296053015%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g5295953014%_ '()))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx52927%_)))
                      _%hd5296853006%_
                      _%hd5296552996%_
                      _%hd5296252986%_)
                     (_%g5295652975%_ _%g5295752979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5295652975%_
                                                      _%g5295752979%_))))
                                             (_%g5295652975%_
                                              _%g5295752979%_))))
                                     (_%g5295652975%_ _%g5295752979%_)))))
                         (_%g5295553040%_
                          (list (let ((__obj100039 _%klass52933%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100039
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100039
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100039
                                       'type-descriptor)))
                                _%slot52930%_
                                _%offset52953%_))))
                     _%$e52949%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx52927%_
                     _%klass52933%_
                     _%slot52930%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53693%_)
        (letrec ((_%expand-body53696%_
                  (lambda (_%klass54594%_
                           _%var54596%_
                           _%Type54597%_
                           _%body54598%_
                           _%checked?54599%_)
                    (let* ((_%g5460154645%_
                            (lambda (_%g5460254641%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5460254641%_)))
                           (_%g5460054800%_
                            (lambda (_%g5460254649%_)
                              (if (gx#stx-pair? _%g5460254649%_)
                                  (let ((_%e5461054652%_
                                         (gx#syntax-e _%g5460254649%_)))
                                    (let ((_%hd5461154656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5461054652%_)))
                                          (_%tl5461254659%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5461054652%_))))
                                      (if (gx#stx-pair? _%tl5461254659%_)
                                          (let ((_%e5461354662%_
                                                 (gx#syntax-e
                                                  _%tl5461254659%_)))
                                            (let ((_%hd5461454666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5461354662%_)))
                                                  (_%tl5461554669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5461354662%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5461554669%_)
                                                  (let ((_%e5461654672%_
                                                         (gx#syntax-e
                                                          _%tl5461554669%_)))
                                                    (let ((_%hd5461754676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5461654672%_)))
                                                          (_%tl5461854679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5461654672%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5461854679%_)
                                                          (let ((_%e5461954682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5461854679%_)))
                    (let ((_%hd5462054686%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5461954682%_)))
                          (_%tl5462154689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5461954682%_))))
                      (if (gx#stx-pair? _%tl5462154689%_)
                          (let ((_%e5462254692%_
                                 (gx#syntax-e _%tl5462154689%_)))
                            (let ((_%hd5462354696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5462254692%_)))
                                  (_%tl5462454699%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5462254692%_))))
                              (if (gx#stx-pair? _%tl5462454699%_)
                                  (let ((_%e5462554702%_
                                         (gx#syntax-e _%tl5462454699%_)))
                                    (let ((_%hd5462654706%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5462554702%_)))
                                          (_%tl5462754709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5462554702%_))))
                                      (if (gx#stx-pair? _%tl5462754709%_)
                                          (let ((_%e5462854712%_
                                                 (gx#syntax-e
                                                  _%tl5462754709%_)))
                                            (let ((_%hd5462954716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5462854712%_)))
                                                  (_%tl5463054719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5462854712%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5462954716%_)
                                                  (let ((_g100235_
                                                         (gx#syntax-split-splice
                                                          _%hd5462954716%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100236_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100235_)
                           (##values-length _g100235_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100236_ 2)))
                    (error "Context expects 2 values" _g100236_)))
              (let ((_%target5463154722%_
                     (let () (declare (not safe)) (##values-ref _g100235_ 0)))
                    (_%tl5463354725%_
                     (let () (declare (not safe)) (##values-ref _g100235_ 1))))
                (if (gx#stx-null? _%tl5463354725%_)
                    (letrec ((_%loop5463454728%_
                              (lambda (_%hd5463254732%_ _%body5463854735%_)
                                (if (gx#stx-pair? _%hd5463254732%_)
                                    (let ((_%e5463554737%_
                                           (gx#syntax-e _%hd5463254732%_)))
                                      (let ((_%lp-hd5463654741%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5463554737%_)))
                                            (_%lp-tl5463754744%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5463554737%_))))
                                        (_%loop5463454728%_
                                         _%lp-tl5463754744%_
                                         (cons _%lp-hd5463654741%_
                                               _%body5463854735%_))))
                                    (let ((_%body5463954747%_
                                           (reverse _%body5463854735%_)))
                                      (if (gx#stx-null? _%tl5463054719%_)
                                          ((lambda (_%g5460354750%_
                                                    _%g5460454752%_
                                                    _%g5460554753%_
                                                    _%g5460654754%_
                                                    _%g5460754755%_
                                                    _%g5460854756%_
                                                    _%g5460954757%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5460754755%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5460854756%_ '()))
                                         (cons _%g5460754755%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5460954757%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5460754755%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5460654754%_ '()))
                               (cons _%g5460554753%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5460454752%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5479154794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5479254797%_)
                      (cons _%g5479154794%_ _%g5479254797%_))
                    '()
                    _%g5460354750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5463954747%_
                                           _%hd5462654706%_
                                           _%hd5462354696%_
                                           _%hd5462054686%_
                                           _%hd5461754676%_
                                           _%hd5461454666%_
                                           _%hd5461154656%_)
                                          (_%g5460154645%_
                                           _%g5460254649%_)))))))
                      (_%loop5463454728%_ _%target5463154722%_ '()))
                    (_%g5460154645%_ _%g5460254649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5460154645%_
                                                   _%g5460254649%_))))
                                          (_%g5460154645%_ _%g5460254649%_))))
                                  (_%g5460154645%_ _%g5460254649%_))))
                          (_%g5460154645%_ _%g5460254649%_))))
                  (_%g5460154645%_ _%g5460254649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5460154645%_
                                                   _%g5460254649%_))))
                                          (_%g5460154645%_ _%g5460254649%_))))
                                  (_%g5460154645%_ _%g5460254649%_)))))
                      (_%g5460054800%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj100040 _%klass54594%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100040
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100040
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj100040
                                    'type-descriptor)))
                             _%var54596%_
                             _%klass54594%_
                             _%checked?54599%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54598%_)))))
                 (_%expand53698%_
                  (lambda (_%var54486%_
                           _%Type54488%_
                           _%body54489%_
                           _%checked?54490%_
                           _%checked-mutators?54491%_
                           _%maybe?54492%_)
                    (let* ((_%klass54494%_
                            (gx#syntax-local-value _%Type54488%_ false))
                           (_%expr-body54501%_
                            (_%expand-body53696%_
                             _%klass54494%_
                             _%var54486%_
                             _%Type54488%_
                             _%body54489%_
                             (let ((_%$e54497%_ _%checked?54490%_))
                               (if _%$e54497%_
                                   _%$e54497%_
                                   _%checked-mutators?54491%_)))))
                      (if _%checked?54490%_
                          (let* ((_%g5450654525%_
                                  (lambda (_%g5450754521%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5450754521%_)))
                                 (_%g5450554587%_
                                  (lambda (_%g5450754529%_)
                                    (if (gx#stx-pair? _%g5450754529%_)
                                        (let ((_%e5451154532%_
                                               (gx#syntax-e _%g5450754529%_)))
                                          (let ((_%hd5451254536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5451154532%_)))
                                                (_%tl5451354539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5451154532%_))))
                                            (if (gx#stx-pair? _%tl5451354539%_)
                                                (let ((_%e5451454542%_
                                                       (gx#syntax-e
                                                        _%tl5451354539%_)))
                                                  (let ((_%hd5451554546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5451454542%_)))
                                                        (_%tl5451654549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5451454542%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5451654549%_)
                                                        (let ((_%e5451754552%_
                                                               (gx#syntax-e
                                                                _%tl5451654549%_)))
                                                          (let ((_%hd5451854556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5451754552%_)))
                        (_%tl5451954559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5451754552%_))))
                    (if (gx#stx-null? _%tl5451954559%_)
                        ((lambda (_%g5450854562%_
                                  _%g5450954564%_
                                  _%g5451054565%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5450954564%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5451054565%_ '())))
                                       (cons _%g5450854562%_ '()))))
                         _%hd5451854556%_
                         _%hd5451554546%_
                         _%hd5451254536%_)
                        (_%g5450654525%_ _%g5450754529%_))))
                (_%g5450654525%_ _%g5450754529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5450654525%_
                                                 _%g5450754529%_))))
                                        (_%g5450654525%_ _%g5450754529%_)))))
                            (_%g5450554587%_
                             (list (let ((_%instance?54591%_
                                          (let ((__obj100041 _%klass54494%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj100041
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj100041
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj100041
                                                 'predicate)))))
                                     (if _%maybe?54492%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54591%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54591%_))
                                   _%var54486%_
                                   _%expr-body54501%_)))
                          _%expr-body54501%_)))))
          (let* ((_%__stx9404694047%_ _%stx53693%_)
                 (_%g5370453847%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9404694047%_))))
            (let ((_%__kont9404994050%_
                   (lambda (_%g5370654414%_
                            _%g5370754416%_
                            _%g5370854417%_
                            _%g5370954418%_)
                     (let* ((_%g5444354451%_
                             (lambda (_%g5444454447%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5444454447%_)))
                            (_%g5444254478%_
                             (lambda (_%g5444454455%_)
                               ((lambda (_%g5444554458%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5370954418%_
                                                    (cons _%g5370854417%_
                                                          (cons _%g5444554458%_
                                                                '())))
                                              (foldr (lambda (_%g5446954472%_
                                                              _%g5447054475%_)
                                                       (cons _%g5446954472%_
                                                             _%g5447054475%_))
                                                     '()
                                                     _%g5370654414%_))))
                                _%g5444454455%_))))
                       (_%g5444254478%_
                        (let ((__obj100042
                               (gx#syntax-local-value _%g5370754416%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100042
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100042
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100042
                               'identifier)))))))
                  (_%__kont9405394054%_
                   (lambda (_%g5373454294%_ _%g5373554296%_ _%g5373654297%_)
                     (_%expand53698%_
                      _%g5373654297%_
                      _%g5373554296%_
                      (foldr (lambda (_%g5432054323%_ _%g5432154326%_)
                               (cons _%g5432054323%_ _%g5432154326%_))
                             '()
                             _%g5373454294%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9405794058%_
                   (lambda (_%g5376154174%_ _%g5376254176%_ _%g5376354177%_)
                     (_%expand53698%_
                      _%g5376354177%_
                      _%g5376254176%_
                      (foldr (lambda (_%g5420054203%_ _%g5420154206%_)
                               (cons _%g5420054203%_ _%g5420154206%_))
                             '()
                             _%g5376154174%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9406194062%_
                   (lambda (_%g5378854054%_ _%g5378954056%_ _%g5379054057%_)
                     (_%expand53698%_
                      _%g5379054057%_
                      _%g5378954056%_
                      (foldr (lambda (_%g5408054083%_ _%g5408154086%_)
                               (cons _%g5408054083%_ _%g5408154086%_))
                             '()
                             _%g5378854054%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9406594066%_
                   (lambda (_%g5381553932%_ _%g5381653934%_ _%g5381753935%_)
                     (_%expand53698%_
                      _%g5381753935%_
                      _%g5381653934%_
                      (foldr (lambda (_%g5396053963%_ _%g5396153966%_)
                               (cons _%g5396053963%_ _%g5396153966%_))
                             '()
                             _%g5381553932%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9428594286%_
                      (lambda (_%e5381853854%_
                               _%hd5381953858%_
                               _%tl5382053861%_
                               _%e5382153864%_
                               _%hd5382253868%_
                               _%tl5382353871%_
                               _%e5382453874%_
                               _%hd5382553878%_
                               _%tl5382653881%_
                               _%e5382753884%_
                               _%hd5382853888%_
                               _%tl5382953891%_
                               _%e5383053894%_
                               _%hd5383153898%_
                               _%tl5383253901%_
                               _%__splice9406794068%_
                               _%target5383353904%_
                               _%tl5383553907%_)
                        (letrec ((_%loop5383653910%_
                                  (lambda (_%hd5383453914%_ _%body5384053917%_)
                                    (if (gx#stx-pair? _%hd5383453914%_)
                                        (let ((_%e5383753919%_
                                               (gx#syntax-e _%hd5383453914%_)))
                                          (let ((_%lp-tl5383953926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5383753919%_)))
                                                (_%lp-hd5383853923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5383753919%_))))
                                            (_%loop5383653910%_
                                             _%lp-tl5383953926%_
                                             (cons _%lp-hd5383853923%_
                                                   _%body5384053917%_))))
                                        (let ((_%body5384153929%_
                                               (reverse _%body5384053917%_)))
                                          (let ((_%g5381553932%_
                                                 _%body5384153929%_)
                                                (_%g5381653934%_
                                                 _%hd5383153898%_)
                                                (_%g5381753935%_
                                                 _%hd5382553878%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5381653934%_))
                                                (_%__kont9406594066%_
                                                 _%g5381553932%_
                                                 _%g5381653934%_
                                                 _%g5381753935%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))))))))
                          (_%loop5383653910%_ _%target5383353904%_ '()))))
                     (_%__match9424194242%_
                      (lambda (_%e5379153976%_
                               _%hd5379253980%_
                               _%tl5379353983%_
                               _%e5379453986%_
                               _%hd5379553990%_
                               _%tl5379653993%_
                               _%e5379753996%_
                               _%hd5379854000%_
                               _%tl5379954003%_
                               _%e5380054006%_
                               _%hd5380154010%_
                               _%tl5380254013%_
                               _%e5380354016%_
                               _%hd5380454020%_
                               _%tl5380554023%_
                               _%__splice9406394064%_
                               _%target5380654026%_
                               _%tl5380854029%_)
                        (letrec ((_%loop5380954032%_
                                  (lambda (_%hd5380754036%_ _%body5381354039%_)
                                    (if (gx#stx-pair? _%hd5380754036%_)
                                        (let ((_%e5381054041%_
                                               (gx#syntax-e _%hd5380754036%_)))
                                          (let ((_%lp-tl5381254048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5381054041%_)))
                                                (_%lp-hd5381154045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5381054041%_))))
                                            (_%loop5380954032%_
                                             _%lp-tl5381254048%_
                                             (cons _%lp-hd5381154045%_
                                                   _%body5381354039%_))))
                                        (let ((_%body5381454051%_
                                               (reverse _%body5381354039%_)))
                                          (let ((_%g5378854054%_
                                                 _%body5381454051%_)
                                                (_%g5378954056%_
                                                 _%hd5380454020%_)
                                                (_%g5379054057%_
                                                 _%hd5379854000%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5378954056%_))
                                                (_%__kont9406194062%_
                                                 _%g5378854054%_
                                                 _%g5378954056%_
                                                 _%g5379054057%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))))))))
                          (_%loop5380954032%_ _%target5380654026%_ '()))))
                     (_%__match9419794198%_
                      (lambda (_%e5376454096%_
                               _%hd5376554100%_
                               _%tl5376654103%_
                               _%e5376754106%_
                               _%hd5376854110%_
                               _%tl5376954113%_
                               _%e5377054116%_
                               _%hd5377154120%_
                               _%tl5377254123%_
                               _%e5377354126%_
                               _%hd5377454130%_
                               _%tl5377554133%_
                               _%e5377654136%_
                               _%hd5377754140%_
                               _%tl5377854143%_
                               _%__splice9405994060%_
                               _%target5377954146%_
                               _%tl5378154149%_)
                        (letrec ((_%loop5378254152%_
                                  (lambda (_%hd5378054156%_ _%body5378654159%_)
                                    (if (gx#stx-pair? _%hd5378054156%_)
                                        (let ((_%e5378354161%_
                                               (gx#syntax-e _%hd5378054156%_)))
                                          (let ((_%lp-tl5378554168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5378354161%_)))
                                                (_%lp-hd5378454165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5378354161%_))))
                                            (_%loop5378254152%_
                                             _%lp-tl5378554168%_
                                             (cons _%lp-hd5378454165%_
                                                   _%body5378654159%_))))
                                        (let ((_%body5378754171%_
                                               (reverse _%body5378654159%_)))
                                          (let ((_%g5376154174%_
                                                 _%body5378754171%_)
                                                (_%g5376254176%_
                                                 _%hd5377754140%_)
                                                (_%g5376354177%_
                                                 _%hd5377154120%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5376254176%_))
                                                (_%__kont9405794058%_
                                                 _%g5376154174%_
                                                 _%g5376254176%_
                                                 _%g5376354177%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))))))))
                          (_%loop5378254152%_ _%target5377954146%_ '()))))
                     (_%__match9415394154%_
                      (lambda (_%e5373754216%_
                               _%hd5373854220%_
                               _%tl5373954223%_
                               _%e5374054226%_
                               _%hd5374154230%_
                               _%tl5374254233%_
                               _%e5374354236%_
                               _%hd5374454240%_
                               _%tl5374554243%_
                               _%e5374654246%_
                               _%hd5374754250%_
                               _%tl5374854253%_
                               _%e5374954256%_
                               _%hd5375054260%_
                               _%tl5375154263%_
                               _%__splice9405594056%_
                               _%target5375254266%_
                               _%tl5375454269%_)
                        (letrec ((_%loop5375554272%_
                                  (lambda (_%hd5375354276%_ _%body5375954279%_)
                                    (if (gx#stx-pair? _%hd5375354276%_)
                                        (let ((_%e5375654281%_
                                               (gx#syntax-e _%hd5375354276%_)))
                                          (let ((_%lp-tl5375854288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5375654281%_)))
                                                (_%lp-hd5375754285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5375654281%_))))
                                            (_%loop5375554272%_
                                             _%lp-tl5375854288%_
                                             (cons _%lp-hd5375754285%_
                                                   _%body5375954279%_))))
                                        (let ((_%body5376054291%_
                                               (reverse _%body5375954279%_)))
                                          (let ((_%g5373454294%_
                                                 _%body5376054291%_)
                                                (_%g5373554296%_
                                                 _%hd5375054260%_)
                                                (_%g5373654297%_
                                                 _%hd5374454240%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5373554296%_))
                                                (_%__kont9405394054%_
                                                 _%g5373454294%_
                                                 _%g5373554296%_
                                                 _%g5373654297%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))))))))
                          (_%loop5375554272%_ _%target5375254266%_ '()))))
                     (_%__match9413394134%_
                      (lambda (_%e5373754216%_
                               _%hd5373854220%_
                               _%tl5373954223%_
                               _%e5374054226%_
                               _%hd5374154230%_
                               _%tl5374254233%_
                               _%e5374354236%_
                               _%hd5374454240%_
                               _%tl5374554243%_
                               _%e5374654246%_
                               _%hd5374754250%_
                               _%tl5374854253%_)
                        (if (gx#identifier? _%hd5374754250%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100237_|
                                 _%hd5374754250%_)
                                (if (gx#stx-pair? _%tl5374854253%_)
                                    (let ((_%e5374954256%_
                                           (gx#syntax-e _%tl5374854253%_)))
                                      (let ((_%tl5375154263%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5374954256%_)))
                                            (_%hd5375054260%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5374954256%_))))
                                        (if (gx#stx-null? _%tl5375154263%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5374254233%_)
                                                (let ((_%__splice9405594056%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5374254233%_
                                                        '0)))
                                                  (let ((_%tl5375454269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9405594056%_
                                                            '1)))
                                                        (_%target5375254266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9405594056%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5375454269%_)
                                                        (_%__match9415394154%_
                                                         _%e5373754216%_
                                                         _%hd5373854220%_
                                                         _%tl5373954223%_
                                                         _%e5374054226%_
                                                         _%hd5374154230%_
                                                         _%tl5374254233%_
                                                         _%e5374354236%_
                                                         _%hd5374454240%_
                                                         _%tl5374554243%_
                                                         _%e5374654246%_
                                                         _%hd5374754250%_
                                                         _%tl5374854253%_
                                                         _%e5374954256%_
                                                         _%hd5375054260%_
                                                         _%tl5375154263%_
                                                         _%__splice9405594056%_
                                                         _%target5375254266%_
                                                         _%tl5375454269%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5370453847%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5370453847%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5370453847%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100238_|
                                     _%hd5374754250%_)
                                    (if (gx#stx-pair? _%tl5374854253%_)
                                        (let ((_%e5377654136%_
                                               (gx#syntax-e _%tl5374854253%_)))
                                          (let ((_%tl5377854143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5377654136%_)))
                                                (_%hd5377754140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5377654136%_))))
                                            (if (gx#stx-null? _%tl5377854143%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5374254233%_)
                                                    (let ((_%__splice9405994060%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5374254233%_
                                                            '0)))
                                                      (let ((_%tl5378154149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9405994060%_ '1)))
                    (_%target5377954146%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9405994060%_ '0))))
                (if (gx#stx-null? _%tl5378154149%_)
                    (_%__match9419794198%_
                     _%e5373754216%_
                     _%hd5373854220%_
                     _%tl5373954223%_
                     _%e5374054226%_
                     _%hd5374154230%_
                     _%tl5374254233%_
                     _%e5374354236%_
                     _%hd5374454240%_
                     _%tl5374554243%_
                     _%e5374654246%_
                     _%hd5374754250%_
                     _%tl5374854253%_
                     _%e5377654136%_
                     _%hd5377754140%_
                     _%tl5377854143%_
                     _%__splice9405994060%_
                     _%target5377954146%_
                     _%tl5378154149%_)
                    (let () (declare (not safe)) (_%g5370453847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5370453847%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5370453847%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100239_|
                                         _%hd5374754250%_)
                                        (if (gx#stx-pair? _%tl5374854253%_)
                                            (let ((_%e5380354016%_
                                                   (gx#syntax-e
                                                    _%tl5374854253%_)))
                                              (let ((_%tl5380554023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5380354016%_)))
                                                    (_%hd5380454020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5380354016%_))))
                                                (if (gx#stx-null?
                                                     _%tl5380554023%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5374254233%_)
                                                        (let ((_%__splice9406394064%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5374254233%_
                                                                '0)))
                                                          (let ((_%tl5380854029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9406394064%_ '1)))
                        (_%target5380654026%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9406394064%_ '0))))
                    (if (gx#stx-null? _%tl5380854029%_)
                        (_%__match9424194242%_
                         _%e5373754216%_
                         _%hd5373854220%_
                         _%tl5373954223%_
                         _%e5374054226%_
                         _%hd5374154230%_
                         _%tl5374254233%_
                         _%e5374354236%_
                         _%hd5374454240%_
                         _%tl5374554243%_
                         _%e5374654246%_
                         _%hd5374754250%_
                         _%tl5374854253%_
                         _%e5380354016%_
                         _%hd5380454020%_
                         _%tl5380554023%_
                         _%__splice9406394064%_
                         _%target5380654026%_
                         _%tl5380854029%_)
                        (let () (declare (not safe)) (_%g5370453847%_)))))
                (let () (declare (not safe)) (_%g5370453847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5370453847%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5370453847%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100240_|
                                             _%hd5374754250%_)
                                            (if (gx#stx-pair? _%tl5374854253%_)
                                                (let ((_%e5383053894%_
                                                       (gx#syntax-e
                                                        _%tl5374854253%_)))
                                                  (let ((_%tl5383253901%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5383053894%_)))
                                                        (_%hd5383153898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5383053894%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5383253901%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5374254233%_)
                                                            (let ((_%__splice9406794068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5374254233%_
                            '0)))
                      (let ((_%tl5383553907%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9406794068%_ '1)))
                            (_%target5383353904%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9406794068%_ '0))))
                        (if (gx#stx-null? _%tl5383553907%_)
                            (_%__match9428594286%_
                             _%e5373754216%_
                             _%hd5373854220%_
                             _%tl5373954223%_
                             _%e5374054226%_
                             _%hd5374154230%_
                             _%tl5374254233%_
                             _%e5374354236%_
                             _%hd5374454240%_
                             _%tl5374554243%_
                             _%e5374654246%_
                             _%hd5374754250%_
                             _%tl5374854253%_
                             _%e5383053894%_
                             _%hd5383153898%_
                             _%tl5383253901%_
                             _%__splice9406794068%_
                             _%target5383353904%_
                             _%tl5383553907%_)
                            (let () (declare (not safe)) (_%g5370453847%_)))))
                    (let () (declare (not safe)) (_%g5370453847%_)))
                (let () (declare (not safe)) (_%g5370453847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5370453847%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5370453847%_))))))
                            (let () (declare (not safe)) (_%g5370453847%_)))))
                     (_%__match9410994110%_
                      (lambda (_%e5371054336%_
                               _%hd5371154340%_
                               _%tl5371254343%_
                               _%e5371354346%_
                               _%hd5371454350%_
                               _%tl5371554353%_
                               _%e5371654356%_
                               _%hd5371754360%_
                               _%tl5371854363%_
                               _%e5371954366%_
                               _%hd5372054370%_
                               _%tl5372154373%_
                               _%e5372254376%_
                               _%hd5372354380%_
                               _%tl5372454383%_
                               _%__splice9405194052%_
                               _%target5372554386%_
                               _%tl5372754389%_)
                        (letrec ((_%loop5372854392%_
                                  (lambda (_%hd5372654396%_ _%body5373254399%_)
                                    (if (gx#stx-pair? _%hd5372654396%_)
                                        (let ((_%e5372954401%_
                                               (gx#syntax-e _%hd5372654396%_)))
                                          (let ((_%lp-tl5373154408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5372954401%_)))
                                                (_%lp-hd5373054405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5372954401%_))))
                                            (_%loop5372854392%_
                                             _%lp-tl5373154408%_
                                             (cons _%lp-hd5373054405%_
                                                   _%body5373254399%_))))
                                        (let ((_%body5373354411%_
                                               (reverse _%body5373254399%_)))
                                          (let ((_%g5370654414%_
                                                 _%body5373354411%_)
                                                (_%g5370754416%_
                                                 _%hd5372354380%_)
                                                (_%g5370854417%_
                                                 _%hd5372054370%_)
                                                (_%g5370954418%_
                                                 _%hd5371754360%_))
                                            (if (let ((__tmp100241
                                                       (gx#syntax-local-value
                                                        _%g5370754416%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100241))
                                                (_%__kont9404994050%_
                                                 _%g5370654414%_
                                                 _%g5370754416%_
                                                 _%g5370854417%_
                                                 _%g5370954418%_)
                                                (_%__match9413394134%_
                                                 _%e5371054336%_
                                                 _%hd5371154340%_
                                                 _%tl5371254343%_
                                                 _%e5371354346%_
                                                 _%hd5371454350%_
                                                 _%tl5371554353%_
                                                 _%e5371654356%_
                                                 _%hd5371754360%_
                                                 _%tl5371854363%_
                                                 _%e5371954366%_
                                                 _%hd5372054370%_
                                                 _%tl5372154373%_))))))))
                          (_%loop5372854392%_ _%target5372554386%_ '())))))
                (if (gx#stx-pair? _%__stx9404694047%_)
                    (let ((_%e5371054336%_ (gx#syntax-e _%__stx9404694047%_)))
                      (let ((_%tl5371254343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5371054336%_)))
                            (_%hd5371154340%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5371054336%_))))
                        (if (gx#stx-pair? _%tl5371254343%_)
                            (let ((_%e5371354346%_
                                   (gx#syntax-e _%tl5371254343%_)))
                              (let ((_%tl5371554353%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5371354346%_)))
                                    (_%hd5371454350%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5371354346%_))))
                                (if (gx#stx-pair? _%hd5371454350%_)
                                    (let ((_%e5371654356%_
                                           (gx#syntax-e _%hd5371454350%_)))
                                      (let ((_%tl5371854363%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5371654356%_)))
                                            (_%hd5371754360%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5371654356%_))))
                                        (if (gx#stx-pair? _%tl5371854363%_)
                                            (let ((_%e5371954366%_
                                                   (gx#syntax-e
                                                    _%tl5371854363%_)))
                                              (let ((_%tl5372154373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5371954366%_)))
                                                    (_%hd5372054370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5371954366%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5372154373%_)
                                                    (let ((_%e5372254376%_
                                                           (gx#syntax-e
                                                            _%tl5372154373%_)))
                                                      (let ((_%tl5372454383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5372254376%_)))
                    (_%hd5372354380%_
                     (let () (declare (not safe)) (##car _%e5372254376%_))))
                (if (gx#stx-null? _%tl5372454383%_)
                    (if (gx#stx-pair/null? _%tl5371554353%_)
                        (let ((_%__splice9405194052%_
                               (gx#syntax-split-splice->vector
                                _%tl5371554353%_
                                '0)))
                          (let ((_%tl5372754389%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9405194052%_ '1)))
                                (_%target5372554386%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9405194052%_ '0))))
                            (if (gx#stx-null? _%tl5372754389%_)
                                (_%__match9410994110%_
                                 _%e5371054336%_
                                 _%hd5371154340%_
                                 _%tl5371254343%_
                                 _%e5371354346%_
                                 _%hd5371454350%_
                                 _%tl5371554353%_
                                 _%e5371654356%_
                                 _%hd5371754360%_
                                 _%tl5371854363%_
                                 _%e5371954366%_
                                 _%hd5372054370%_
                                 _%tl5372154373%_
                                 _%e5372254376%_
                                 _%hd5372354380%_
                                 _%tl5372454383%_
                                 _%__splice9405194052%_
                                 _%target5372554386%_
                                 _%tl5372754389%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5370453847%_)))))
                        (let () (declare (not safe)) (_%g5370453847%_)))
                    (let () (declare (not safe)) (_%g5370453847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5370453847%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5370453847%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5370453847%_)))))
                            (let () (declare (not safe)) (_%g5370453847%_)))))
                    (let () (declare (not safe)) (_%g5370453847%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54810%_)
        (letrec ((_%expand-body54813%_
                  (lambda (_%var55804%_
                           _%Interface55806%_
                           _%body55807%_
                           _%checked?55808%_)
                    (let* ((_%type55810%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54810%_
                               _%Interface55806%_)))
                           (_%g5581355857%_
                            (lambda (_%g5581455853%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5581455853%_)))
                           (_%g5581256013%_
                            (lambda (_%g5581455861%_)
                              (if (gx#stx-pair? _%g5581455861%_)
                                  (let ((_%e5582255864%_
                                         (gx#syntax-e _%g5581455861%_)))
                                    (let ((_%hd5582355868%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5582255864%_)))
                                          (_%tl5582455871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5582255864%_))))
                                      (if (gx#stx-pair? _%tl5582455871%_)
                                          (let ((_%e5582555874%_
                                                 (gx#syntax-e
                                                  _%tl5582455871%_)))
                                            (let ((_%hd5582655878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5582555874%_)))
                                                  (_%tl5582755881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5582555874%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5582755881%_)
                                                  (let ((_%e5582855884%_
                                                         (gx#syntax-e
                                                          _%tl5582755881%_)))
                                                    (let ((_%hd5582955888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5582855884%_)))
                                                          (_%tl5583055891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5582855884%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5583055891%_)
                                                          (let ((_%e5583155894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5583055891%_)))
                    (let ((_%hd5583255898%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5583155894%_)))
                          (_%tl5583355901%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5583155894%_))))
                      (if (gx#stx-pair? _%tl5583355901%_)
                          (let ((_%e5583455904%_
                                 (gx#syntax-e _%tl5583355901%_)))
                            (let ((_%hd5583555908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5583455904%_)))
                                  (_%tl5583655911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5583455904%_))))
                              (if (gx#stx-pair? _%tl5583655911%_)
                                  (let ((_%e5583755914%_
                                         (gx#syntax-e _%tl5583655911%_)))
                                    (let ((_%hd5583855918%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5583755914%_)))
                                          (_%tl5583955921%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5583755914%_))))
                                      (if (gx#stx-pair? _%tl5583955921%_)
                                          (let ((_%e5584055924%_
                                                 (gx#syntax-e
                                                  _%tl5583955921%_)))
                                            (let ((_%hd5584155928%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5584055924%_)))
                                                  (_%tl5584255931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5584055924%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5584155928%_)
                                                  (let ((_g100242_
                                                         (gx#syntax-split-splice
                                                          _%hd5584155928%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100242_)
                           (##values-length _g100242_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100243_ 2)))
                    (error "Context expects 2 values" _g100243_)))
              (let ((_%target5584355934%_
                     (let () (declare (not safe)) (##values-ref _g100242_ 0)))
                    (_%tl5584555937%_
                     (let () (declare (not safe)) (##values-ref _g100242_ 1))))
                (if (gx#stx-null? _%tl5584555937%_)
                    (letrec ((_%loop5584655940%_
                              (lambda (_%hd5584455944%_ _%body5585055947%_)
                                (if (gx#stx-pair? _%hd5584455944%_)
                                    (let ((_%e5584755949%_
                                           (gx#syntax-e _%hd5584455944%_)))
                                      (let ((_%lp-hd5584855953%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5584755949%_)))
                                            (_%lp-tl5584955956%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5584755949%_))))
                                        (_%loop5584655940%_
                                         _%lp-tl5584955956%_
                                         (cons _%lp-hd5584855953%_
                                               _%body5585055947%_))))
                                    (let ((_%body5585155959%_
                                           (reverse _%body5585055947%_)))
                                      (if (gx#stx-null? _%tl5584255931%_)
                                          ((lambda (_%g5581555962%_
                                                    _%g5581655964%_
                                                    _%g5581755965%_
                                                    _%g5581855966%_
                                                    _%g5581955967%_
                                                    _%g5582055968%_
                                                    _%g5582155969%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5581855966%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5581955967%_ '()))
                                         (cons _%g5581855966%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5582155969%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5581855966%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5582055968%_ '()))
                               (cons _%g5581755965%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5581655964%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5600456007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5600556010%_)
                      (cons _%g5600456007%_ _%g5600556010%_))
                    '()
                    _%g5581555962%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5585155959%_
                                           _%hd5583855918%_
                                           _%hd5583555908%_
                                           _%hd5583255898%_
                                           _%hd5582955888%_
                                           _%hd5582655878%_
                                           _%hd5582355868%_)
                                          (_%g5581355857%_
                                           _%g5581455861%_)))))))
                      (_%loop5584655940%_ _%target5584355934%_ '()))
                    (_%g5581355857%_ _%g5581455861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5581355857%_
                                                   _%g5581455861%_))))
                                          (_%g5581355857%_ _%g5581455861%_))))
                                  (_%g5581355857%_ _%g5581455861%_))))
                          (_%g5581355857%_ _%g5581455861%_))))
                  (_%g5581355857%_ _%g5581455861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5581355857%_
                                                   _%g5581455861%_))))
                                          (_%g5581355857%_ _%g5581455861%_))))
                                  (_%g5581355857%_ _%g5581455861%_)))))
                      (_%g5581256013%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55810%_
                             (let ((__obj100043 _%type55810%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100043
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100043
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj100043
                                    'type-descriptor)))
                             _%var55804%_
                             _%checked?55808%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55807%_)))))
                 (_%expand54815%_
                  (lambda (_%var55603%_
                           _%Interface55605%_
                           _%body55606%_
                           _%checked?55607%_
                           _%checked-methods?55608%_
                           _%maybe?55609%_)
                    (let* ((_%g5561155619%_
                            (lambda (_%g5561255615%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5561255615%_)))
                           (_%g5561055796%_
                            (lambda (_%g5561255623%_)
                              ((lambda (_%g5561355626%_)
                                 (if _%checked?55607%_
                                     (if _%maybe?55609%_
                                         (let* ((_%g5563855653%_
                                                 (lambda (_%g5563955649%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5563955649%_)))
                                                (_%g5563755699%_
                                                 (lambda (_%g5563955657%_)
                                                   (if (gx#stx-pair?
                                                        _%g5563955657%_)
                                                       (let ((_%e5564255660%_
                                                              (gx#syntax-e
                                                               _%g5563955657%_)))
                                                         (let ((_%hd5564355664%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5564255660%_)))
                       (_%tl5564455667%_
                        (let () (declare (not safe)) (##cdr _%e5564255660%_))))
                   (if (gx#stx-pair? _%tl5564455667%_)
                       (let ((_%e5564555670%_ (gx#syntax-e _%tl5564455667%_)))
                         (let ((_%hd5564655674%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5564555670%_)))
                               (_%tl5564755677%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5564555670%_))))
                           (if (gx#stx-null? _%tl5564755677%_)
                               ((lambda (_%g5564055680%_ _%g5564155682%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5564155682%_
                                                    (cons (cons _%g5564055680%_
                                                                (cons _%g5564155682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5564155682%_
                                                                (cons _%g5561355626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5564155682%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5564655674%_
                                _%hd5564355664%_)
                               (_%g5563855653%_ _%g5563955657%_))))
                       (_%g5563855653%_ _%g5563955657%_))))
               (_%g5563855653%_ _%g5563955657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5563755699%_
                                            (list _%var55603%_
                                                  _%Interface55605%_)))
                                         (let* ((_%g5570355718%_
                                                 (lambda (_%g5570455714%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5570455714%_)))
                                                (_%g5570255762%_
                                                 (lambda (_%g5570455722%_)
                                                   (if (gx#stx-pair?
                                                        _%g5570455722%_)
                                                       (let ((_%e5570755725%_
                                                              (gx#syntax-e
                                                               _%g5570455722%_)))
                                                         (let ((_%hd5570855729%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5570755725%_)))
                       (_%tl5570955732%_
                        (let () (declare (not safe)) (##cdr _%e5570755725%_))))
                   (if (gx#stx-pair? _%tl5570955732%_)
                       (let ((_%e5571055735%_ (gx#syntax-e _%tl5570955732%_)))
                         (let ((_%hd5571155739%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5571055735%_)))
                               (_%tl5571255742%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5571055735%_))))
                           (if (gx#stx-null? _%tl5571255742%_)
                               ((lambda (_%g5570555745%_ _%g5570655747%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5570655747%_
                                                    (cons (cons _%g5570555745%_
                                                                (cons _%g5570655747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5561355626%_ '()))))
                                _%hd5571155739%_
                                _%hd5570855729%_)
                               (_%g5570355718%_ _%g5570455722%_))))
                       (_%g5570355718%_ _%g5570455722%_))))
               (_%g5570355718%_ _%g5570455722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5570255762%_
                                            (list _%var55603%_
                                                  _%Interface55605%_))))
                                     (if _%maybe?55609%_
                                         (let* ((_%g5576655774%_
                                                 (lambda (_%g5576755770%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5576755770%_)))
                                                (_%g5576555792%_
                                                 (lambda (_%g5576755778%_)
                                                   ((lambda (_%g5576855781%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5576855781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5561355626%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5576855781%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5576755778%_))))
                                           (_%g5576555792%_ _%var55603%_))
                                         _%g5561355626%_)))
                               _%g5561255623%_))))
                      (_%g5561055796%_
                       (_%expand-body54813%_
                        _%var55603%_
                        _%Interface55605%_
                        _%body55606%_
                        (let ((_%$e55800%_ _%checked?55607%_))
                          (if _%$e55800%_
                              _%$e55800%_
                              _%checked-methods?55608%_))))))))
          (let* ((_%__stx9428894289%_ _%stx54810%_)
                 (_%g5482154964%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9428894289%_))))
            (let ((_%__kont9429194292%_
                   (lambda (_%g5482355531%_
                            _%g5482455533%_
                            _%g5482555534%_
                            _%g5482655535%_)
                     (let* ((_%g5556055568%_
                             (lambda (_%g5556155564%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5556155564%_)))
                            (_%g5555955595%_
                             (lambda (_%g5556155572%_)
                               ((lambda (_%g5556255575%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5482655535%_
                                                    (cons _%g5482555534%_
                                                          (cons _%g5556255575%_
                                                                '())))
                                              (foldr (lambda (_%g5558655589%_
                                                              _%g5558755592%_)
                                                       (cons _%g5558655589%_
                                                             _%g5558755592%_))
                                                     '()
                                                     _%g5482355531%_))))
                                _%g5556155572%_))))
                       (_%g5555955595%_
                        (let ((__obj100044
                               (gx#syntax-local-value _%g5482455533%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100044
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100044
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100044
                               'identifier)))))))
                  (_%__kont9429594296%_
                   (lambda (_%g5485155411%_ _%g5485255413%_ _%g5485355414%_)
                     (_%expand54815%_
                      _%g5485355414%_
                      _%g5485255413%_
                      (foldr (lambda (_%g5543755440%_ _%g5543855443%_)
                               (cons _%g5543755440%_ _%g5543855443%_))
                             '()
                             _%g5485155411%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9429994300%_
                   (lambda (_%g5487855291%_ _%g5487955293%_ _%g5488055294%_)
                     (_%expand54815%_
                      _%g5488055294%_
                      _%g5487955293%_
                      (foldr (lambda (_%g5531755320%_ _%g5531855323%_)
                               (cons _%g5531755320%_ _%g5531855323%_))
                             '()
                             _%g5487855291%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9430394304%_
                   (lambda (_%g5490555171%_ _%g5490655173%_ _%g5490755174%_)
                     (_%expand54815%_
                      _%g5490755174%_
                      _%g5490655173%_
                      (foldr (lambda (_%g5519755200%_ _%g5519855203%_)
                               (cons _%g5519755200%_ _%g5519855203%_))
                             '()
                             _%g5490555171%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9430794308%_
                   (lambda (_%g5493255049%_ _%g5493355051%_ _%g5493455052%_)
                     (_%expand54815%_
                      _%g5493455052%_
                      _%g5493355051%_
                      (foldr (lambda (_%g5507755080%_ _%g5507855083%_)
                               (cons _%g5507755080%_ _%g5507855083%_))
                             '()
                             _%g5493255049%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9452794528%_
                      (lambda (_%e5493554971%_
                               _%hd5493654975%_
                               _%tl5493754978%_
                               _%e5493854981%_
                               _%hd5493954985%_
                               _%tl5494054988%_
                               _%e5494154991%_
                               _%hd5494254995%_
                               _%tl5494354998%_
                               _%e5494455001%_
                               _%hd5494555005%_
                               _%tl5494655008%_
                               _%e5494755011%_
                               _%hd5494855015%_
                               _%tl5494955018%_
                               _%__splice9430994310%_
                               _%target5495055021%_
                               _%tl5495255024%_)
                        (letrec ((_%loop5495355027%_
                                  (lambda (_%hd5495155031%_ _%body5495755034%_)
                                    (if (gx#stx-pair? _%hd5495155031%_)
                                        (let ((_%e5495455036%_
                                               (gx#syntax-e _%hd5495155031%_)))
                                          (let ((_%lp-tl5495655043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5495455036%_)))
                                                (_%lp-hd5495555040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5495455036%_))))
                                            (_%loop5495355027%_
                                             _%lp-tl5495655043%_
                                             (cons _%lp-hd5495555040%_
                                                   _%body5495755034%_))))
                                        (let ((_%body5495855046%_
                                               (reverse _%body5495755034%_)))
                                          (let ((_%g5493255049%_
                                                 _%body5495855046%_)
                                                (_%g5493355051%_
                                                 _%hd5494855015%_)
                                                (_%g5493455052%_
                                                 _%hd5494254995%_))
                                            (if (and (gx#identifier?
                                                      _%g5493455052%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5493355051%_)))
                                                (_%__kont9430794308%_
                                                 _%g5493255049%_
                                                 _%g5493355051%_
                                                 _%g5493455052%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))))))))
                          (_%loop5495355027%_ _%target5495055021%_ '()))))
                     (_%__match9448394484%_
                      (lambda (_%e5490855093%_
                               _%hd5490955097%_
                               _%tl5491055100%_
                               _%e5491155103%_
                               _%hd5491255107%_
                               _%tl5491355110%_
                               _%e5491455113%_
                               _%hd5491555117%_
                               _%tl5491655120%_
                               _%e5491755123%_
                               _%hd5491855127%_
                               _%tl5491955130%_
                               _%e5492055133%_
                               _%hd5492155137%_
                               _%tl5492255140%_
                               _%__splice9430594306%_
                               _%target5492355143%_
                               _%tl5492555146%_)
                        (letrec ((_%loop5492655149%_
                                  (lambda (_%hd5492455153%_ _%body5493055156%_)
                                    (if (gx#stx-pair? _%hd5492455153%_)
                                        (let ((_%e5492755158%_
                                               (gx#syntax-e _%hd5492455153%_)))
                                          (let ((_%lp-tl5492955165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5492755158%_)))
                                                (_%lp-hd5492855162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5492755158%_))))
                                            (_%loop5492655149%_
                                             _%lp-tl5492955165%_
                                             (cons _%lp-hd5492855162%_
                                                   _%body5493055156%_))))
                                        (let ((_%body5493155168%_
                                               (reverse _%body5493055156%_)))
                                          (let ((_%g5490555171%_
                                                 _%body5493155168%_)
                                                (_%g5490655173%_
                                                 _%hd5492155137%_)
                                                (_%g5490755174%_
                                                 _%hd5491555117%_))
                                            (if (and (gx#identifier?
                                                      _%g5490755174%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5490655173%_)))
                                                (_%__kont9430394304%_
                                                 _%g5490555171%_
                                                 _%g5490655173%_
                                                 _%g5490755174%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))))))))
                          (_%loop5492655149%_ _%target5492355143%_ '()))))
                     (_%__match9443994440%_
                      (lambda (_%e5488155213%_
                               _%hd5488255217%_
                               _%tl5488355220%_
                               _%e5488455223%_
                               _%hd5488555227%_
                               _%tl5488655230%_
                               _%e5488755233%_
                               _%hd5488855237%_
                               _%tl5488955240%_
                               _%e5489055243%_
                               _%hd5489155247%_
                               _%tl5489255250%_
                               _%e5489355253%_
                               _%hd5489455257%_
                               _%tl5489555260%_
                               _%__splice9430194302%_
                               _%target5489655263%_
                               _%tl5489855266%_)
                        (letrec ((_%loop5489955269%_
                                  (lambda (_%hd5489755273%_ _%body5490355276%_)
                                    (if (gx#stx-pair? _%hd5489755273%_)
                                        (let ((_%e5490055278%_
                                               (gx#syntax-e _%hd5489755273%_)))
                                          (let ((_%lp-tl5490255285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5490055278%_)))
                                                (_%lp-hd5490155282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5490055278%_))))
                                            (_%loop5489955269%_
                                             _%lp-tl5490255285%_
                                             (cons _%lp-hd5490155282%_
                                                   _%body5490355276%_))))
                                        (let ((_%body5490455288%_
                                               (reverse _%body5490355276%_)))
                                          (let ((_%g5487855291%_
                                                 _%body5490455288%_)
                                                (_%g5487955293%_
                                                 _%hd5489455257%_)
                                                (_%g5488055294%_
                                                 _%hd5488855237%_))
                                            (if (and (gx#identifier?
                                                      _%g5488055294%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5487955293%_)))
                                                (_%__kont9429994300%_
                                                 _%g5487855291%_
                                                 _%g5487955293%_
                                                 _%g5488055294%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))))))))
                          (_%loop5489955269%_ _%target5489655263%_ '()))))
                     (_%__match9439594396%_
                      (lambda (_%e5485455333%_
                               _%hd5485555337%_
                               _%tl5485655340%_
                               _%e5485755343%_
                               _%hd5485855347%_
                               _%tl5485955350%_
                               _%e5486055353%_
                               _%hd5486155357%_
                               _%tl5486255360%_
                               _%e5486355363%_
                               _%hd5486455367%_
                               _%tl5486555370%_
                               _%e5486655373%_
                               _%hd5486755377%_
                               _%tl5486855380%_
                               _%__splice9429794298%_
                               _%target5486955383%_
                               _%tl5487155386%_)
                        (letrec ((_%loop5487255389%_
                                  (lambda (_%hd5487055393%_ _%body5487655396%_)
                                    (if (gx#stx-pair? _%hd5487055393%_)
                                        (let ((_%e5487355398%_
                                               (gx#syntax-e _%hd5487055393%_)))
                                          (let ((_%lp-tl5487555405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5487355398%_)))
                                                (_%lp-hd5487455402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5487355398%_))))
                                            (_%loop5487255389%_
                                             _%lp-tl5487555405%_
                                             (cons _%lp-hd5487455402%_
                                                   _%body5487655396%_))))
                                        (let ((_%body5487755408%_
                                               (reverse _%body5487655396%_)))
                                          (let ((_%g5485155411%_
                                                 _%body5487755408%_)
                                                (_%g5485255413%_
                                                 _%hd5486755377%_)
                                                (_%g5485355414%_
                                                 _%hd5486155357%_))
                                            (if (and (gx#identifier?
                                                      _%g5485355414%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5485255413%_)))
                                                (_%__kont9429594296%_
                                                 _%g5485155411%_
                                                 _%g5485255413%_
                                                 _%g5485355414%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))))))))
                          (_%loop5487255389%_ _%target5486955383%_ '()))))
                     (_%__match9437594376%_
                      (lambda (_%e5485455333%_
                               _%hd5485555337%_
                               _%tl5485655340%_
                               _%e5485755343%_
                               _%hd5485855347%_
                               _%tl5485955350%_
                               _%e5486055353%_
                               _%hd5486155357%_
                               _%tl5486255360%_
                               _%e5486355363%_
                               _%hd5486455367%_
                               _%tl5486555370%_)
                        (if (gx#identifier? _%hd5486455367%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100244_|
                                 _%hd5486455367%_)
                                (if (gx#stx-pair? _%tl5486555370%_)
                                    (let ((_%e5486655373%_
                                           (gx#syntax-e _%tl5486555370%_)))
                                      (let ((_%tl5486855380%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5486655373%_)))
                                            (_%hd5486755377%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5486655373%_))))
                                        (if (gx#stx-null? _%tl5486855380%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5485955350%_)
                                                (let ((_%__splice9429794298%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5485955350%_
                                                        '0)))
                                                  (let ((_%tl5487155386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9429794298%_
                                                            '1)))
                                                        (_%target5486955383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9429794298%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5487155386%_)
                                                        (_%__match9439594396%_
                                                         _%e5485455333%_
                                                         _%hd5485555337%_
                                                         _%tl5485655340%_
                                                         _%e5485755343%_
                                                         _%hd5485855347%_
                                                         _%tl5485955350%_
                                                         _%e5486055353%_
                                                         _%hd5486155357%_
                                                         _%tl5486255360%_
                                                         _%e5486355363%_
                                                         _%hd5486455367%_
                                                         _%tl5486555370%_
                                                         _%e5486655373%_
                                                         _%hd5486755377%_
                                                         _%tl5486855380%_
                                                         _%__splice9429794298%_
                                                         _%target5486955383%_
                                                         _%tl5487155386%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5482154964%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5482154964%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5482154964%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100245_|
                                     _%hd5486455367%_)
                                    (if (gx#stx-pair? _%tl5486555370%_)
                                        (let ((_%e5489355253%_
                                               (gx#syntax-e _%tl5486555370%_)))
                                          (let ((_%tl5489555260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5489355253%_)))
                                                (_%hd5489455257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5489355253%_))))
                                            (if (gx#stx-null? _%tl5489555260%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5485955350%_)
                                                    (let ((_%__splice9430194302%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5485955350%_
                                                            '0)))
                                                      (let ((_%tl5489855266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9430194302%_ '1)))
                    (_%target5489655263%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9430194302%_ '0))))
                (if (gx#stx-null? _%tl5489855266%_)
                    (_%__match9443994440%_
                     _%e5485455333%_
                     _%hd5485555337%_
                     _%tl5485655340%_
                     _%e5485755343%_
                     _%hd5485855347%_
                     _%tl5485955350%_
                     _%e5486055353%_
                     _%hd5486155357%_
                     _%tl5486255360%_
                     _%e5486355363%_
                     _%hd5486455367%_
                     _%tl5486555370%_
                     _%e5489355253%_
                     _%hd5489455257%_
                     _%tl5489555260%_
                     _%__splice9430194302%_
                     _%target5489655263%_
                     _%tl5489855266%_)
                    (let () (declare (not safe)) (_%g5482154964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5482154964%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5482154964%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100246_|
                                         _%hd5486455367%_)
                                        (if (gx#stx-pair? _%tl5486555370%_)
                                            (let ((_%e5492055133%_
                                                   (gx#syntax-e
                                                    _%tl5486555370%_)))
                                              (let ((_%tl5492255140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5492055133%_)))
                                                    (_%hd5492155137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5492055133%_))))
                                                (if (gx#stx-null?
                                                     _%tl5492255140%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5485955350%_)
                                                        (let ((_%__splice9430594306%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5485955350%_
                                                                '0)))
                                                          (let ((_%tl5492555146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9430594306%_ '1)))
                        (_%target5492355143%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9430594306%_ '0))))
                    (if (gx#stx-null? _%tl5492555146%_)
                        (_%__match9448394484%_
                         _%e5485455333%_
                         _%hd5485555337%_
                         _%tl5485655340%_
                         _%e5485755343%_
                         _%hd5485855347%_
                         _%tl5485955350%_
                         _%e5486055353%_
                         _%hd5486155357%_
                         _%tl5486255360%_
                         _%e5486355363%_
                         _%hd5486455367%_
                         _%tl5486555370%_
                         _%e5492055133%_
                         _%hd5492155137%_
                         _%tl5492255140%_
                         _%__splice9430594306%_
                         _%target5492355143%_
                         _%tl5492555146%_)
                        (let () (declare (not safe)) (_%g5482154964%_)))))
                (let () (declare (not safe)) (_%g5482154964%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5482154964%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5482154964%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100247_|
                                             _%hd5486455367%_)
                                            (if (gx#stx-pair? _%tl5486555370%_)
                                                (let ((_%e5494755011%_
                                                       (gx#syntax-e
                                                        _%tl5486555370%_)))
                                                  (let ((_%tl5494955018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5494755011%_)))
                                                        (_%hd5494855015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5494755011%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5494955018%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5485955350%_)
                                                            (let ((_%__splice9430994310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5485955350%_
                            '0)))
                      (let ((_%tl5495255024%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9430994310%_ '1)))
                            (_%target5495055021%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9430994310%_ '0))))
                        (if (gx#stx-null? _%tl5495255024%_)
                            (_%__match9452794528%_
                             _%e5485455333%_
                             _%hd5485555337%_
                             _%tl5485655340%_
                             _%e5485755343%_
                             _%hd5485855347%_
                             _%tl5485955350%_
                             _%e5486055353%_
                             _%hd5486155357%_
                             _%tl5486255360%_
                             _%e5486355363%_
                             _%hd5486455367%_
                             _%tl5486555370%_
                             _%e5494755011%_
                             _%hd5494855015%_
                             _%tl5494955018%_
                             _%__splice9430994310%_
                             _%target5495055021%_
                             _%tl5495255024%_)
                            (let () (declare (not safe)) (_%g5482154964%_)))))
                    (let () (declare (not safe)) (_%g5482154964%_)))
                (let () (declare (not safe)) (_%g5482154964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5482154964%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5482154964%_))))))
                            (let () (declare (not safe)) (_%g5482154964%_)))))
                     (_%__match9435194352%_
                      (lambda (_%e5482755453%_
                               _%hd5482855457%_
                               _%tl5482955460%_
                               _%e5483055463%_
                               _%hd5483155467%_
                               _%tl5483255470%_
                               _%e5483355473%_
                               _%hd5483455477%_
                               _%tl5483555480%_
                               _%e5483655483%_
                               _%hd5483755487%_
                               _%tl5483855490%_
                               _%e5483955493%_
                               _%hd5484055497%_
                               _%tl5484155500%_
                               _%__splice9429394294%_
                               _%target5484255503%_
                               _%tl5484455506%_)
                        (letrec ((_%loop5484555509%_
                                  (lambda (_%hd5484355513%_ _%body5484955516%_)
                                    (if (gx#stx-pair? _%hd5484355513%_)
                                        (let ((_%e5484655518%_
                                               (gx#syntax-e _%hd5484355513%_)))
                                          (let ((_%lp-tl5484855525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5484655518%_)))
                                                (_%lp-hd5484755522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5484655518%_))))
                                            (_%loop5484555509%_
                                             _%lp-tl5484855525%_
                                             (cons _%lp-hd5484755522%_
                                                   _%body5484955516%_))))
                                        (let ((_%body5485055528%_
                                               (reverse _%body5484955516%_)))
                                          (let ((_%g5482355531%_
                                                 _%body5485055528%_)
                                                (_%g5482455533%_
                                                 _%hd5484055497%_)
                                                (_%g5482555534%_
                                                 _%hd5483755487%_)
                                                (_%g5482655535%_
                                                 _%hd5483455477%_))
                                            (if (let ((__tmp100248
                                                       (gx#syntax-local-value
                                                        _%g5482455533%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100248))
                                                (_%__kont9429194292%_
                                                 _%g5482355531%_
                                                 _%g5482455533%_
                                                 _%g5482555534%_
                                                 _%g5482655535%_)
                                                (_%__match9437594376%_
                                                 _%e5482755453%_
                                                 _%hd5482855457%_
                                                 _%tl5482955460%_
                                                 _%e5483055463%_
                                                 _%hd5483155467%_
                                                 _%tl5483255470%_
                                                 _%e5483355473%_
                                                 _%hd5483455477%_
                                                 _%tl5483555480%_
                                                 _%e5483655483%_
                                                 _%hd5483755487%_
                                                 _%tl5483855490%_))))))))
                          (_%loop5484555509%_ _%target5484255503%_ '())))))
                (if (gx#stx-pair? _%__stx9428894289%_)
                    (let ((_%e5482755453%_ (gx#syntax-e _%__stx9428894289%_)))
                      (let ((_%tl5482955460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5482755453%_)))
                            (_%hd5482855457%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5482755453%_))))
                        (if (gx#stx-pair? _%tl5482955460%_)
                            (let ((_%e5483055463%_
                                   (gx#syntax-e _%tl5482955460%_)))
                              (let ((_%tl5483255470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5483055463%_)))
                                    (_%hd5483155467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5483055463%_))))
                                (if (gx#stx-pair? _%hd5483155467%_)
                                    (let ((_%e5483355473%_
                                           (gx#syntax-e _%hd5483155467%_)))
                                      (let ((_%tl5483555480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5483355473%_)))
                                            (_%hd5483455477%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5483355473%_))))
                                        (if (gx#stx-pair? _%tl5483555480%_)
                                            (let ((_%e5483655483%_
                                                   (gx#syntax-e
                                                    _%tl5483555480%_)))
                                              (let ((_%tl5483855490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5483655483%_)))
                                                    (_%hd5483755487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5483655483%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5483855490%_)
                                                    (let ((_%e5483955493%_
                                                           (gx#syntax-e
                                                            _%tl5483855490%_)))
                                                      (let ((_%tl5484155500%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5483955493%_)))
                    (_%hd5484055497%_
                     (let () (declare (not safe)) (##car _%e5483955493%_))))
                (if (gx#stx-null? _%tl5484155500%_)
                    (if (gx#stx-pair/null? _%tl5483255470%_)
                        (let ((_%__splice9429394294%_
                               (gx#syntax-split-splice->vector
                                _%tl5483255470%_
                                '0)))
                          (let ((_%tl5484455506%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9429394294%_ '1)))
                                (_%target5484255503%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9429394294%_ '0))))
                            (if (gx#stx-null? _%tl5484455506%_)
                                (_%__match9435194352%_
                                 _%e5482755453%_
                                 _%hd5482855457%_
                                 _%tl5482955460%_
                                 _%e5483055463%_
                                 _%hd5483155467%_
                                 _%tl5483255470%_
                                 _%e5483355473%_
                                 _%hd5483455477%_
                                 _%tl5483555480%_
                                 _%e5483655483%_
                                 _%hd5483755487%_
                                 _%tl5483855490%_
                                 _%e5483955493%_
                                 _%hd5484055497%_
                                 _%tl5484155500%_
                                 _%__splice9429394294%_
                                 _%target5484255503%_
                                 _%tl5484455506%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5482154964%_)))))
                        (let () (declare (not safe)) (_%g5482154964%_)))
                    (let () (declare (not safe)) (_%g5482154964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5482154964%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5482154964%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5482154964%_)))))
                            (let () (declare (not safe)) (_%g5482154964%_)))))
                    (let () (declare (not safe)) (_%g5482154964%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56023%_)
        (let* ((_%__stx9453094531%_ _%stx56023%_)
               (_%g5602856088%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9453094531%_))))
          (let ((_%__kont9453394534%_
                 (lambda (_%g5603056644%_ _%g5603156646%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5603156646%_ '()))
                               (foldr (lambda (_%g5666256665%_ _%g5666356668%_)
                                        (cons _%g5666256665%_ _%g5666356668%_))
                                      '()
                                      _%g5603056644%_)))))
                (_%__kont9453794538%_
                 (lambda (_%g5604756232%_ _%g5604856234%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5604856234%_)
                       (let* ((_%g5625456261%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56023%_
                                _%g5604856234%_))
                              (_%E5625656267%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5625456261%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5625756565%_
                               (lambda (_%parts56271%_ _%var56273%_)
                                 (let ((_%$e56275%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56273%_))))
                                   (if _%$e56275%_
                                       ((lambda (_%te56279%_)
                                          (let _%loop56282%_ ((_%parts56285%_
                                                               _%parts56271%_)
                                                              (_%type56287%_
                                                               (##direct-structure-ref
                                                                _%te56279%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object56288%_
                                                               _%var56273%_)
                                                              (_%checked-method?56289%_
                                                               (##direct-structure-ref
                                                                _%te56279%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?56290%_
                                                               '#f))
                                            (let* ((_%parts5629156299%_
                                                    _%parts56285%_)
                                                   (_%else5629356360%_
                                                    (lambda ()
                                                      (let* ((_%g5631156319%_
                                                              (lambda (_%g5631256315%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5631256315%_)))
                     (_%g5631056356%_
                      (lambda (_%g5631256323%_)
                        ((lambda (_%g5631356326%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5631356326%_
                                       (foldr (lambda (_%g5634756350%_
                                                       _%g5634856353%_)
                                                (cons _%g5634756350%_
                                                      _%g5634856353%_))
                                              '()
                                              _%g5604756232%_))))
                         _%g5631256323%_))))
                (_%g5631056356%_ _%object56288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5629556539%_
                                                    (lambda (_%rest56364%_
                                                             _%part56366%_)
                                                      (if (and (not _%nil-check?56290%_)
                                                               (let ((__tmp100249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part56366%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp100249)))
                  (let ((_%str56370%_ (symbol->string _%part56366%_)))
                    (_%loop56282%_
                     (cons (let ((__tmp100250
                                  (substring
                                   _%str56370%_
                                   '1
                                   (string-length _%str56370%_))))
                             (declare (not safe))
                             (##string->symbol __tmp100250))
                           _%rest56364%_)
                     _%type56287%_
                     _%object56288%_
                     _%checked-method?56289%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type56287%_))
                      (let* ((_%g5637556390%_
                              (lambda (_%g5637656386%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5637656386%_)))
                             (_%g5637456459%_
                              (lambda (_%g5637656394%_)
                                (if (gx#stx-pair? _%g5637656394%_)
                                    (let ((_%e5637956397%_
                                           (gx#syntax-e _%g5637656394%_)))
                                      (let ((_%hd5638056401%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5637956397%_)))
                                            (_%tl5638156404%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5637956397%_))))
                                        (if (gx#stx-pair? _%tl5638156404%_)
                                            (let ((_%e5638256407%_
                                                   (gx#syntax-e
                                                    _%tl5638156404%_)))
                                              (let ((_%hd5638356411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5638256407%_)))
                                                    (_%tl5638456414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5638256407%_))))
                                                (if (gx#stx-null?
                                                     _%tl5638456414%_)
                                                    ((lambda (_%g5637756417%_
                                                              _%g5637856419%_)
                                                       (if (null? _%rest56364%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5637756417%_
                                     (cons _%g5637856419%_ '()))
                               (foldr (lambda (_%g5643856441%_ _%g5643956444%_)
                                        (cons _%g5643856441%_ _%g5643956444%_))
                                      '()
                                      _%g5604756232%_)))
                   (let ((_%$e56447%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type56287%_
                           _%part56366%_)))
                     (if _%$e56447%_
                         ((lambda (_%slot-type56451%_)
                            (let ((_%slot-type56454%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx56023%_
                                      _%slot-type56451%_))))
                              (_%loop56282%_
                               _%rest56364%_
                               _%slot-type56454%_
                               (cons _%g5637756417%_
                                     (cons _%g5637856419%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type56287%_
                                _%part56366%_)
                               '#f)))
                          _%$e56447%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx56023%_
                          _%g5604856234%_
                          _%part56366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5638356411%_
                                                     _%hd5638056401%_)
                                                    (_%g5637556390%_
                                                     _%g5637656394%_))))
                                            (_%g5637556390%_
                                             _%g5637656394%_))))
                                    (_%g5637556390%_ _%g5637656394%_)))))
                        (_%g5637456459%_
                         (list (if _%nil-check?56290%_
                                   (cons 'check-nil!
                                         (cons _%object56288%_ '()))
                                   _%object56288%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx56023%_
                                _%type56287%_
                                _%part56366%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type56287%_))
                          (if (null? _%rest56364%_)
                              (let* ((_%g5646556480%_
                                      (lambda (_%g5646656476%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5646656476%_)))
                                     (_%g5646456533%_
                                      (lambda (_%g5646656484%_)
                                        (if (gx#stx-pair? _%g5646656484%_)
                                            (let ((_%e5646956487%_
                                                   (gx#syntax-e
                                                    _%g5646656484%_)))
                                              (let ((_%hd5647056491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5646956487%_)))
                                                    (_%tl5647156494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5646956487%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5647156494%_)
                                                    (let ((_%e5647256497%_
                                                           (gx#syntax-e
                                                            _%tl5647156494%_)))
                                                      (let ((_%hd5647356501%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5647256497%_)))
                    (_%tl5647456504%_
                     (let () (declare (not safe)) (##cdr _%e5647256497%_))))
                (if (gx#stx-null? _%tl5647456504%_)
                    ((lambda (_%g5646756507%_ _%g5646856509%_)
                       (cons _%g5646756507%_
                             (cons _%g5646856509%_
                                   (foldr (lambda (_%g5652456527%_
                                                   _%g5652556530%_)
                                            (cons _%g5652456527%_
                                                  _%g5652556530%_))
                                          '()
                                          _%g5604756232%_))))
                     _%hd5647356501%_
                     _%hd5647056491%_)
                    (_%g5646556480%_ _%g5646656484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5646556480%_
                                                     _%g5646656484%_))))
                                            (_%g5646556480%_
                                             _%g5646656484%_)))))
                                (_%g5646456533%_
                                 (list (if _%nil-check?56290%_
                                           (cons 'check-nil!
                                                 (cons _%object56288%_ '()))
                                           _%object56288%_)
                                       (gx#stx-identifier
                                        _%g5604856234%_
                                        (if _%checked-method?56289%_ '"" '"&")
                                        (let ((__obj100045 _%type56287%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj100045
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj100045
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj100045
                                               'name)))
                                        '"-"
                                        _%part56366%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx56023%_
                               _%g5604856234%_
                               _%part56366%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx56023%_
                           _%type56287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5629156299%_)
                                                  (let ((_%hd5629656543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5629156299%_)))
                                                        (_%tl5629756546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5629156299%_))))
                                                    (let* ((_%part56549%_
                                                            _%hd5629656543%_)
                                                           (_%rest56552%_
                                                            _%tl5629756546%_))
                                                      (_%K5629556539%_
                                                       _%rest56552%_
                                                       _%part56549%_)))
                                                  (_%else5629356360%_)))))
                                        _%$e56275%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5604856234%_
                                                   (foldr (lambda (_%g5655656559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5655756562%_)
                    (cons _%g5655656559%_ _%g5655756562%_))
                  '()
                  _%g5604756232%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5625456261%_)
                             (let ((_%hd5625856569%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5625456261%_)))
                                   (_%tl5625956572%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5625456261%_))))
                               (let* ((_%var56575%_ _%hd5625856569%_)
                                      (_%parts56578%_ _%tl5625956572%_))
                                 (_%K5625756565%_
                                  _%parts56578%_
                                  _%var56575%_)))
                             (_%E5625656267%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5604856234%_
                                   (foldr (lambda (_%g5658056583%_
                                                   _%g5658156586%_)
                                            (cons _%g5658056583%_
                                                  _%g5658156586%_))
                                          '()
                                          _%g5604756232%_))))))
                (_%__kont9454194542%_
                 (lambda (_%g5607056133%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5614856151%_ _%g5614956154%_)
                                  (cons _%g5614856151%_ _%g5614956154%_))
                                '()
                                _%g5607056133%_)))))
            (let* ((_%__match9461794618%_
                    (lambda (_%e5607156095%_
                             _%hd5607256099%_
                             _%tl5607356102%_
                             _%__splice9454394544%_
                             _%target5607456105%_
                             _%tl5607656108%_)
                      (letrec ((_%loop5607756111%_
                                (lambda (_%hd5607556115%_ _%arg5608156118%_)
                                  (if (gx#stx-pair? _%hd5607556115%_)
                                      (let ((_%e5607856120%_
                                             (gx#syntax-e _%hd5607556115%_)))
                                        (let ((_%lp-tl5608056127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5607856120%_)))
                                              (_%lp-hd5607956124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5607856120%_))))
                                          (_%loop5607756111%_
                                           _%lp-tl5608056127%_
                                           (cons _%lp-hd5607956124%_
                                                 _%arg5608156118%_))))
                                      (let ((_%arg5608256130%_
                                             (reverse _%arg5608156118%_)))
                                        (_%__kont9454194542%_
                                         _%arg5608256130%_))))))
                        (_%loop5607756111%_ _%target5607456105%_ '()))))
                   (_%__match9460394604%_
                    (lambda (_%e5604956164%_
                             _%hd5605056168%_
                             _%tl5605156171%_
                             _%e5605256174%_
                             _%hd5605356178%_
                             _%tl5605456181%_
                             _%e5605556184%_
                             _%hd5605656188%_
                             _%tl5605756191%_
                             _%e5605856194%_
                             _%hd5605956198%_
                             _%tl5606056201%_
                             _%__splice9453994540%_
                             _%target5606156204%_
                             _%tl5606356207%_)
                      (letrec ((_%loop5606456210%_
                                (lambda (_%hd5606256214%_ _%rand5606856217%_)
                                  (if (gx#stx-pair? _%hd5606256214%_)
                                      (let ((_%e5606556219%_
                                             (gx#syntax-e _%hd5606256214%_)))
                                        (let ((_%lp-tl5606756226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5606556219%_)))
                                              (_%lp-hd5606656223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5606556219%_))))
                                          (_%loop5606456210%_
                                           _%lp-tl5606756226%_
                                           (cons _%lp-hd5606656223%_
                                                 _%rand5606856217%_))))
                                      (let ((_%rand5606956229%_
                                             (reverse _%rand5606856217%_)))
                                        (_%__kont9453794538%_
                                         _%rand5606956229%_
                                         _%hd5605956198%_))))))
                        (_%loop5606456210%_ _%target5606156204%_ '()))))
                   (_%__match9457794578%_
                    (lambda (_%e5604956164%_
                             _%hd5605056168%_
                             _%tl5605156171%_
                             _%e5605256174%_
                             _%hd5605356178%_
                             _%tl5605456181%_)
                      (if (gx#stx-pair? _%hd5605356178%_)
                          (let ((_%e5605556184%_
                                 (gx#syntax-e _%hd5605356178%_)))
                            (let ((_%tl5605756191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5605556184%_)))
                                  (_%hd5605656188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5605556184%_))))
                              (if (gx#identifier? _%hd5605656188%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100251_|
                                       _%hd5605656188%_)
                                      (if (gx#stx-pair? _%tl5605756191%_)
                                          (let ((_%e5605856194%_
                                                 (gx#syntax-e
                                                  _%tl5605756191%_)))
                                            (let ((_%tl5606056201%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5605856194%_)))
                                                  (_%hd5605956198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5605856194%_))))
                                              (if (gx#stx-null?
                                                   _%tl5606056201%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5605456181%_)
                                                      (let ((_%__splice9453994540%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5605456181%_
                                                              '0)))
                                                        (let ((_%tl5606356207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9453994540%_ '1)))
                      (_%target5606156204%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9453994540%_ '0))))
                  (if (gx#stx-null? _%tl5606356207%_)
                      (_%__match9460394604%_
                       _%e5604956164%_
                       _%hd5605056168%_
                       _%tl5605156171%_
                       _%e5605256174%_
                       _%hd5605356178%_
                       _%tl5605456181%_
                       _%e5605556184%_
                       _%hd5605656188%_
                       _%tl5605756191%_
                       _%e5605856194%_
                       _%hd5605956198%_
                       _%tl5606056201%_
                       _%__splice9453994540%_
                       _%target5606156204%_
                       _%tl5606356207%_)
                      (if (gx#stx-pair/null? _%tl5605156171%_)
                          (let ((_%__splice9454394544%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5605156171%_
                                  '0)))
                            (let ((_%tl5607656108%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9454394544%_ '1)))
                                  (_%target5607456105%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9454394544%_
                                      '0))))
                              (if (gx#stx-null? _%tl5607656108%_)
                                  (_%__match9461794618%_
                                   _%e5604956164%_
                                   _%hd5605056168%_
                                   _%tl5605156171%_
                                   _%__splice9454394544%_
                                   _%target5607456105%_
                                   _%tl5607656108%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5602856088%_)))))
                          (let () (declare (not safe)) (_%g5602856088%_))))))
              (if (gx#stx-pair/null? _%tl5605156171%_)
                  (let ((_%__splice9454394544%_
                         (gx#syntax-split-splice->vector _%tl5605156171%_ '0)))
                    (let ((_%tl5607656108%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '1)))
                          (_%target5607456105%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '0))))
                      (if (gx#stx-null? _%tl5607656108%_)
                          (_%__match9461794618%_
                           _%e5604956164%_
                           _%hd5605056168%_
                           _%tl5605156171%_
                           _%__splice9454394544%_
                           _%target5607456105%_
                           _%tl5607656108%_)
                          (let () (declare (not safe)) (_%g5602856088%_)))))
                  (let () (declare (not safe)) (_%g5602856088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5605156171%_)
                                                      (let ((_%__splice9454394544%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5605156171%_
                                                              '0)))
                                                        (let ((_%tl5607656108%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9454394544%_ '1)))
                      (_%target5607456105%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9454394544%_ '0))))
                  (if (gx#stx-null? _%tl5607656108%_)
                      (_%__match9461794618%_
                       _%e5604956164%_
                       _%hd5605056168%_
                       _%tl5605156171%_
                       _%__splice9454394544%_
                       _%target5607456105%_
                       _%tl5607656108%_)
                      (let () (declare (not safe)) (_%g5602856088%_)))))
              (let () (declare (not safe)) (_%g5602856088%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5605156171%_)
                                              (let ((_%__splice9454394544%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5605156171%_
                                                      '0)))
                                                (let ((_%tl5607656108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9454394544%_
                                                          '1)))
                                                      (_%target5607456105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9454394544%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5607656108%_)
                                                      (_%__match9461794618%_
                                                       _%e5604956164%_
                                                       _%hd5605056168%_
                                                       _%tl5605156171%_
                                                       _%__splice9454394544%_
                                                       _%target5607456105%_
                                                       _%tl5607656108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5602856088%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5602856088%_))))
                                      (if (gx#stx-pair/null? _%tl5605156171%_)
                                          (let ((_%__splice9454394544%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5605156171%_
                                                  '0)))
                                            (let ((_%tl5607656108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9454394544%_
                                                      '1)))
                                                  (_%target5607456105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9454394544%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5607656108%_)
                                                  (_%__match9461794618%_
                                                   _%e5604956164%_
                                                   _%hd5605056168%_
                                                   _%tl5605156171%_
                                                   _%__splice9454394544%_
                                                   _%target5607456105%_
                                                   _%tl5607656108%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5602856088%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5602856088%_))))
                                  (if (gx#stx-pair/null? _%tl5605156171%_)
                                      (let ((_%__splice9454394544%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5605156171%_
                                              '0)))
                                        (let ((_%tl5607656108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9454394544%_
                                                  '1)))
                                              (_%target5607456105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9454394544%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5607656108%_)
                                              (_%__match9461794618%_
                                               _%e5604956164%_
                                               _%hd5605056168%_
                                               _%tl5605156171%_
                                               _%__splice9454394544%_
                                               _%target5607456105%_
                                               _%tl5607656108%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5602856088%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5602856088%_))))))
                          (if (gx#stx-pair/null? _%tl5605156171%_)
                              (let ((_%__splice9454394544%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5605156171%_
                                      '0)))
                                (let ((_%tl5607656108%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '1)))
                                      (_%target5607456105%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5607656108%_)
                                      (_%__match9461794618%_
                                       _%e5604956164%_
                                       _%hd5605056168%_
                                       _%tl5605156171%_
                                       _%__splice9454394544%_
                                       _%target5607456105%_
                                       _%tl5607656108%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5602856088%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5602856088%_))))))
                   (_%__match9456594566%_
                    (lambda (_%e5603256596%_
                             _%hd5603356600%_
                             _%tl5603456603%_
                             _%e5603556606%_
                             _%hd5603656610%_
                             _%tl5603756613%_
                             _%__splice9453594536%_
                             _%target5603856616%_
                             _%tl5604056619%_)
                      (letrec ((_%loop5604156622%_
                                (lambda (_%hd5603956626%_ _%rand5604556629%_)
                                  (if (gx#stx-pair? _%hd5603956626%_)
                                      (let ((_%e5604256631%_
                                             (gx#syntax-e _%hd5603956626%_)))
                                        (let ((_%lp-tl5604456638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5604256631%_)))
                                              (_%lp-hd5604356635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5604256631%_))))
                                          (_%loop5604156622%_
                                           _%lp-tl5604456638%_
                                           (cons _%lp-hd5604356635%_
                                                 _%rand5604556629%_))))
                                      (let ((_%rand5604656641%_
                                             (reverse _%rand5604556629%_)))
                                        (let ((_%g5603056644%_
                                               _%rand5604656641%_)
                                              (_%g5603156646%_
                                               _%hd5603656610%_))
                                          (if (gx#identifier? _%g5603156646%_)
                                              (_%__kont9453394534%_
                                               _%g5603056644%_
                                               _%g5603156646%_)
                                              (_%__match9457794578%_
                                               _%e5603256596%_
                                               _%hd5603356600%_
                                               _%tl5603456603%_
                                               _%e5603556606%_
                                               _%hd5603656610%_
                                               _%tl5603756613%_))))))))
                        (_%loop5604156622%_ _%target5603856616%_ '())))))
              (if (gx#stx-pair? _%__stx9453094531%_)
                  (let ((_%e5603256596%_ (gx#syntax-e _%__stx9453094531%_)))
                    (let ((_%tl5603456603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5603256596%_)))
                          (_%hd5603356600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5603256596%_))))
                      (if (gx#stx-pair? _%tl5603456603%_)
                          (let ((_%e5603556606%_
                                 (gx#syntax-e _%tl5603456603%_)))
                            (let ((_%tl5603756613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5603556606%_)))
                                  (_%hd5603656610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5603556606%_))))
                              (if (gx#stx-pair/null? _%tl5603756613%_)
                                  (let ((_%__splice9453594536%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5603756613%_
                                          '0)))
                                    (let ((_%tl5604056619%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9453594536%_
                                              '1)))
                                          (_%target5603856616%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9453594536%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5604056619%_)
                                          (_%__match9456594566%_
                                           _%e5603256596%_
                                           _%hd5603356600%_
                                           _%tl5603456603%_
                                           _%e5603556606%_
                                           _%hd5603656610%_
                                           _%tl5603756613%_
                                           _%__splice9453594536%_
                                           _%target5603856616%_
                                           _%tl5604056619%_)
                                          (if (gx#stx-pair? _%hd5603656610%_)
                                              (let ((_%e5605556184%_
                                                     (gx#syntax-e
                                                      _%hd5603656610%_)))
                                                (let ((_%tl5605756191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5605556184%_)))
                                                      (_%hd5605656188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5605556184%_))))
                                                  (if (gx#identifier?
                                                       _%hd5605656188%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100251_|
                                                           _%hd5605656188%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5605756191%_)
                                                              (let ((_%e5605856194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5605756191%_)))
                        (let ((_%tl5606056201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5605856194%_)))
                              (_%hd5605956198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5605856194%_))))
                          (if (gx#stx-pair/null? _%tl5603456603%_)
                              (let ((_%__splice9454394544%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5603456603%_
                                      '0)))
                                (let ((_%tl5607656108%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '1)))
                                      (_%target5607456105%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5607656108%_)
                                      (_%__match9461794618%_
                                       _%e5603256596%_
                                       _%hd5603356600%_
                                       _%tl5603456603%_
                                       _%__splice9454394544%_
                                       _%target5607456105%_
                                       _%tl5607656108%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5602856088%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5602856088%_)))))
                      (if (gx#stx-pair/null? _%tl5603456603%_)
                          (let ((_%__splice9454394544%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5603456603%_
                                  '0)))
                            (let ((_%tl5607656108%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9454394544%_ '1)))
                                  (_%target5607456105%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9454394544%_
                                      '0))))
                              (if (gx#stx-null? _%tl5607656108%_)
                                  (_%__match9461794618%_
                                   _%e5603256596%_
                                   _%hd5603356600%_
                                   _%tl5603456603%_
                                   _%__splice9454394544%_
                                   _%target5607456105%_
                                   _%tl5607656108%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5602856088%_)))))
                          (let () (declare (not safe)) (_%g5602856088%_))))
                  (if (gx#stx-pair/null? _%tl5603456603%_)
                      (let ((_%__splice9454394544%_
                             (gx#syntax-split-splice->vector
                              _%tl5603456603%_
                              '0)))
                        (let ((_%tl5607656108%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9454394544%_ '1)))
                              (_%target5607456105%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9454394544%_ '0))))
                          (if (gx#stx-null? _%tl5607656108%_)
                              (_%__match9461794618%_
                               _%e5603256596%_
                               _%hd5603356600%_
                               _%tl5603456603%_
                               _%__splice9454394544%_
                               _%target5607456105%_
                               _%tl5607656108%_)
                              (let ()
                                (declare (not safe))
                                (_%g5602856088%_)))))
                      (let () (declare (not safe)) (_%g5602856088%_))))
              (if (gx#stx-pair/null? _%tl5603456603%_)
                  (let ((_%__splice9454394544%_
                         (gx#syntax-split-splice->vector _%tl5603456603%_ '0)))
                    (let ((_%tl5607656108%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '1)))
                          (_%target5607456105%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '0))))
                      (if (gx#stx-null? _%tl5607656108%_)
                          (_%__match9461794618%_
                           _%e5603256596%_
                           _%hd5603356600%_
                           _%tl5603456603%_
                           _%__splice9454394544%_
                           _%target5607456105%_
                           _%tl5607656108%_)
                          (let () (declare (not safe)) (_%g5602856088%_)))))
                  (let () (declare (not safe)) (_%g5602856088%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5603456603%_)
                                                  (let ((_%__splice9454394544%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5603456603%_
                                                          '0)))
                                                    (let ((_%tl5607656108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9454394544%_
                                                              '1)))
                                                          (_%target5607456105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9454394544%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5607656108%_)
                                                          (_%__match9461794618%_
                                                           _%e5603256596%_
                                                           _%hd5603356600%_
                                                           _%tl5603456603%_
                                                           _%__splice9454394544%_
                                                           _%target5607456105%_
                                                           _%tl5607656108%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5602856088%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5602856088%_)))))))
                                  (if (gx#stx-pair? _%hd5603656610%_)
                                      (let ((_%e5605556184%_
                                             (gx#syntax-e _%hd5603656610%_)))
                                        (let ((_%tl5605756191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5605556184%_)))
                                              (_%hd5605656188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5605556184%_))))
                                          (if (gx#identifier? _%hd5605656188%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g100251_|
                                                   _%hd5605656188%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5605756191%_)
                                                      (let ((_%e5605856194%_
                                                             (gx#syntax-e
                                                              _%tl5605756191%_)))
                                                        (let ((_%tl5606056201%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5605856194%_)))
                      (_%hd5605956198%_
                       (let () (declare (not safe)) (##car _%e5605856194%_))))
                  (if (gx#stx-pair/null? _%tl5603456603%_)
                      (let ((_%__splice9454394544%_
                             (gx#syntax-split-splice->vector
                              _%tl5603456603%_
                              '0)))
                        (let ((_%tl5607656108%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9454394544%_ '1)))
                              (_%target5607456105%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9454394544%_ '0))))
                          (if (gx#stx-null? _%tl5607656108%_)
                              (_%__match9461794618%_
                               _%e5603256596%_
                               _%hd5603356600%_
                               _%tl5603456603%_
                               _%__splice9454394544%_
                               _%target5607456105%_
                               _%tl5607656108%_)
                              (let ()
                                (declare (not safe))
                                (_%g5602856088%_)))))
                      (let () (declare (not safe)) (_%g5602856088%_)))))
              (if (gx#stx-pair/null? _%tl5603456603%_)
                  (let ((_%__splice9454394544%_
                         (gx#syntax-split-splice->vector _%tl5603456603%_ '0)))
                    (let ((_%tl5607656108%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '1)))
                          (_%target5607456105%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9454394544%_ '0))))
                      (if (gx#stx-null? _%tl5607656108%_)
                          (_%__match9461794618%_
                           _%e5603256596%_
                           _%hd5603356600%_
                           _%tl5603456603%_
                           _%__splice9454394544%_
                           _%target5607456105%_
                           _%tl5607656108%_)
                          (let () (declare (not safe)) (_%g5602856088%_)))))
                  (let () (declare (not safe)) (_%g5602856088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5603456603%_)
                                                      (let ((_%__splice9454394544%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5603456603%_
                                                              '0)))
                                                        (let ((_%tl5607656108%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9454394544%_ '1)))
                      (_%target5607456105%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9454394544%_ '0))))
                  (if (gx#stx-null? _%tl5607656108%_)
                      (_%__match9461794618%_
                       _%e5603256596%_
                       _%hd5603356600%_
                       _%tl5603456603%_
                       _%__splice9454394544%_
                       _%target5607456105%_
                       _%tl5607656108%_)
                      (let () (declare (not safe)) (_%g5602856088%_)))))
              (let () (declare (not safe)) (_%g5602856088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5603456603%_)
                                                  (let ((_%__splice9454394544%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5603456603%_
                                                          '0)))
                                                    (let ((_%tl5607656108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9454394544%_
                                                              '1)))
                                                          (_%target5607456105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9454394544%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5607656108%_)
                                                          (_%__match9461794618%_
                                                           _%e5603256596%_
                                                           _%hd5603356600%_
                                                           _%tl5603456603%_
                                                           _%__splice9454394544%_
                                                           _%target5607456105%_
                                                           _%tl5607656108%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5602856088%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5602856088%_))))))
                                      (if (gx#stx-pair/null? _%tl5603456603%_)
                                          (let ((_%__splice9454394544%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5603456603%_
                                                  '0)))
                                            (let ((_%tl5607656108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9454394544%_
                                                      '1)))
                                                  (_%target5607456105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9454394544%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5607656108%_)
                                                  (_%__match9461794618%_
                                                   _%e5603256596%_
                                                   _%hd5603356600%_
                                                   _%tl5603456603%_
                                                   _%__splice9454394544%_
                                                   _%target5607456105%_
                                                   _%tl5607656108%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5602856088%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5602856088%_)))))))
                          (if (gx#stx-pair/null? _%tl5603456603%_)
                              (let ((_%__splice9454394544%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5603456603%_
                                      '0)))
                                (let ((_%tl5607656108%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '1)))
                                      (_%target5607456105%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9454394544%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5607656108%_)
                                      (_%__match9461794618%_
                                       _%e5603256596%_
                                       _%hd5603356600%_
                                       _%tl5603456603%_
                                       _%__splice9454394544%_
                                       _%target5607456105%_
                                       _%tl5607656108%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5602856088%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5602856088%_))))))
                  (let () (declare (not safe)) (_%g5602856088%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56678%_)
        (let* ((_%__stx9462094621%_ _%stx56678%_)
               (_%g5668256703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9462094621%_))))
          (let ((_%__kont9462394624%_
                 (lambda (_%g5668456771%_)
                   (let* ((_%g5678356790%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56678%_
                            _%g5668456771%_))
                          (_%E5678556796%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5678356790%_
                                    '([var . parts]))
                             (void)))
                          (_%K5678657012%_
                           (lambda (_%parts56800%_ _%var56802%_)
                             (let ((_%$e56804%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56802%_))))
                               (if _%$e56804%_
                                   ((lambda (_%te56808%_)
                                      (let _%loop56811%_ ((_%parts56814%_
                                                           _%parts56800%_)
                                                          (_%type56816%_
                                                           (##direct-structure-ref
                                                            _%te56808%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56817%_
                                                           _%var56802%_)
                                                          (_%nil-check?56818%_
                                                           '#f))
                                        (let* ((_%parts5681956827%_
                                                _%parts56814%_)
                                               (_%else5682156839%_
                                                (lambda () _%object56817%_))
                                               (_%K5682356994%_
                                                (lambda (_%rest56843%_
                                                         _%part56845%_)
                                                  (if (and (not _%nil-check?56818%_)
                                                           (let ((__tmp100252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56845%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100252)))
              (let ((_%str56849%_ (symbol->string _%part56845%_)))
                (_%loop56811%_
                 (cons (let ((__tmp100253
                              (substring
                               _%str56849%_
                               '1
                               (string-length _%str56849%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100253))
                       _%rest56843%_)
                 _%type56816%_
                 _%object56817%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56816%_))
                  (let* ((_%g5685456869%_
                          (lambda (_%g5685556865%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5685556865%_)))
                         (_%g5685356986%_
                          (lambda (_%g5685556873%_)
                            (if (gx#stx-pair? _%g5685556873%_)
                                (let ((_%e5685856876%_
                                       (gx#syntax-e _%g5685556873%_)))
                                  (let ((_%hd5685956880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5685856876%_)))
                                        (_%tl5686056883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5685856876%_))))
                                    (if (gx#stx-pair? _%tl5686056883%_)
                                        (let ((_%e5686156886%_
                                               (gx#syntax-e _%tl5686056883%_)))
                                          (let ((_%hd5686256890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5686156886%_)))
                                                (_%tl5686356893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5686156886%_))))
                                            (if (gx#stx-null? _%tl5686356893%_)
                                                ((lambda (_%g5685656896%_
                                                          _%g5685756898%_)
                                                   (if (null? _%rest56843%_)
                                                       (let ((_%$e56928%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56816%_
                                                               _%part56845%_)))
                                                         (if _%$e56928%_
                                                             ((lambda (_%slot-type56932%_)
                                                                (let* ((_%g5693556943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5693656939%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5693656939%_)))
                               (_%g5693456966%_
                                (lambda (_%g5693656947%_)
                                  ((lambda (_%g5693756950%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5693756950%_
                                                             '()))
                                                 (cons (cons _%g5685656896%_
                                                             (cons _%g5685756898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5693656947%_))))
                          (_%g5693456966%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56678%_
                              _%slot-type56932%_)))))
                      _%$e56928%_)
                     (if _%nil-check?56818%_
                         (cons _%g5685656896%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5685756898%_ '()))
                                     '()))
                         (cons _%g5685656896%_ (cons _%g5685756898%_ '())))))
               (let ((_%$e56974%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56816%_
                       _%part56845%_)))
                 (if _%$e56974%_
                     ((lambda (_%type56978%_)
                        (let ((_%type56981%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56678%_
                                  _%type56978%_))))
                          (if _%nil-check?56818%_
                              (_%loop56811%_
                               _%rest56843%_
                               _%type56981%_
                               (cons _%g5685656896%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5685756898%_ '()))
                                           '()))
                               '#f)
                              (_%loop56811%_
                               _%rest56843%_
                               _%type56981%_
                               (cons _%g5685656896%_
                                     (cons _%g5685756898%_ '()))
                               '#f))))
                      _%$e56974%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56678%_
                      _%g5668456771%_
                      _%part56845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5686256890%_
                                                 _%hd5685956880%_)
                                                (_%g5685456869%_
                                                 _%g5685556873%_))))
                                        (_%g5685456869%_ _%g5685556873%_))))
                                (_%g5685456869%_ _%g5685556873%_)))))
                    (_%g5685356986%_
                     (list (if _%nil-check?56818%_
                               (cons 'check-nil! (cons _%object56817%_ '()))
                               _%object56817%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56678%_
                            _%type56816%_
                            _%part56845%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56816%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56678%_
                       _%type56816%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5681956827%_)
                                              (let ((_%hd5682456998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5681956827%_)))
                                                    (_%tl5682557001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5681956827%_))))
                                                (let* ((_%part57004%_
                                                        _%hd5682456998%_)
                                                       (_%rest57007%_
                                                        _%tl5682557001%_))
                                                  (_%K5682356994%_
                                                   _%rest57007%_
                                                   _%part57004%_)))
                                              (_%else5682156839%_)))))
                                    _%$e56804%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5668456771%_ '())))))))
                     (if (pair? _%g5678356790%_)
                         (let ((_%hd5678757016%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5678356790%_)))
                               (_%tl5678857019%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5678356790%_))))
                           (let* ((_%var57022%_ _%hd5678757016%_)
                                  (_%parts57025%_ _%tl5678857019%_))
                             (_%K5678657012%_ _%parts57025%_ _%var57022%_)))
                         (_%E5678556796%_)))))
                (_%__kont9462594626%_
                 (lambda (_%g5669156730%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5669156730%_ '())))))
            (let ((_%__match9464194642%_
                   (lambda (_%e5668556751%_
                            _%hd5668656755%_
                            _%tl5668756758%_
                            _%e5668856761%_
                            _%hd5668956765%_
                            _%tl5669056768%_)
                     (let ((_%g5668456771%_ _%hd5668956765%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5668456771%_)
                           (_%__kont9462394624%_ _%g5668456771%_)
                           (_%__kont9462594626%_ _%hd5668956765%_))))))
              (if (gx#stx-pair? _%__stx9462094621%_)
                  (let ((_%e5668556751%_ (gx#syntax-e _%__stx9462094621%_)))
                    (let ((_%tl5668756758%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5668556751%_)))
                          (_%hd5668656755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5668556751%_))))
                      (if (gx#stx-pair? _%tl5668756758%_)
                          (let ((_%e5668856761%_
                                 (gx#syntax-e _%tl5668756758%_)))
                            (let ((_%tl5669056768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5668856761%_)))
                                  (_%hd5668956765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5668856761%_))))
                              (if (gx#stx-null? _%tl5669056768%_)
                                  (_%__match9464194642%_
                                   _%e5668556751%_
                                   _%hd5668656755%_
                                   _%tl5668756758%_
                                   _%e5668856761%_
                                   _%hd5668956765%_
                                   _%tl5669056768%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5668256703%_)))))
                          (let () (declare (not safe)) (_%g5668256703%_)))))
                  (let () (declare (not safe)) (_%g5668256703%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57032%_)
        (let* ((_%__stx9465894659%_ _%stx57032%_)
               (_%g5703657065%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9465894659%_))))
          (let ((_%__kont9466194662%_
                 (lambda (_%g5703857157%_ _%g5703957159%_)
                   (let* ((_%g5717357180%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57032%_
                            _%g5703957159%_))
                          (_%E5717557186%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5717357180%_
                                    '([var . parts]))
                             (void)))
                          (_%K5717657416%_
                           (lambda (_%parts57190%_ _%var57192%_)
                             (let ((_%$e57194%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57192%_))))
                               (if _%$e57194%_
                                   ((lambda (_%te57198%_)
                                      (let _%loop57201%_ ((_%parts57204%_
                                                           _%parts57190%_)
                                                          (_%type57206%_
                                                           (##direct-structure-ref
                                                            _%te57198%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object57207%_
                                                           _%var57192%_)
                                                          (_%checked-mutator?57208%_
                                                           (##direct-structure-ref
                                                            _%te57198%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?57209%_
                                                           '#f))
                                        (let* ((_%parts5721057217%_
                                                _%parts57204%_)
                                               (_%E5721257223%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5721057217%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5721357398%_
                                                (lambda (_%rest57227%_
                                                         _%part57229%_)
                                                  (if (and (not _%nil-check?57209%_)
                                                           (let ((__tmp100254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part57229%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100254)))
              (let ((_%str57233%_ (symbol->string _%part57229%_)))
                (_%loop57201%_
                 (cons (let ((__tmp100255
                              (substring
                               _%str57233%_
                               '1
                               (string-length _%str57233%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100255))
                       _%rest57227%_)
                 _%type57206%_
                 _%object57207%_
                 _%checked-mutator?57208%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type57206%_))
                  (if (null? _%rest57227%_)
                      (let* ((_%g5724057255%_
                              (lambda (_%g5724157251%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5724157251%_)))
                             (_%g5723957312%_
                              (lambda (_%g5724157259%_)
                                (if (gx#stx-pair? _%g5724157259%_)
                                    (let ((_%e5724457262%_
                                           (gx#syntax-e _%g5724157259%_)))
                                      (let ((_%hd5724557266%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5724457262%_)))
                                            (_%tl5724657269%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5724457262%_))))
                                        (if (gx#stx-pair? _%tl5724657269%_)
                                            (let ((_%e5724757272%_
                                                   (gx#syntax-e
                                                    _%tl5724657269%_)))
                                              (let ((_%hd5724857276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5724757272%_)))
                                                    (_%tl5724957279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5724757272%_))))
                                                (if (gx#stx-null?
                                                     _%tl5724957279%_)
                                                    ((lambda (_%g5724257282%_
                                                              _%g5724357284%_)
                                                       (if _%nil-check?57209%_
                                                           (cons _%g5724257282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5724357284%_ '()))
                               (cons _%g5703857157%_ '())))
                   (cons _%g5724257282%_
                         (cons _%g5724357284%_ (cons _%g5703857157%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5724857276%_
                                                     _%hd5724557266%_)
                                                    (_%g5724057255%_
                                                     _%g5724157259%_))))
                                            (_%g5724057255%_
                                             _%g5724157259%_))))
                                    (_%g5724057255%_ _%g5724157259%_)))))
                        (_%g5723957312%_
                         (list _%object57207%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx57032%_
                                _%type57206%_
                                _%part57229%_
                                (if _%checked-mutator?57208%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type57206%_
                                     _%part57229%_)
                                    '#f)))))
                      (let ((_%$e57316%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type57206%_
                              _%part57229%_)))
                        (if _%$e57316%_
                            ((lambda (_%type57320%_)
                               (let* ((_%type57323%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx57032%_
                                          _%type57320%_)))
                                      (_%g5732657341%_
                                       (lambda (_%g5732757337%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5732757337%_)))
                                      (_%g5732557388%_
                                       (lambda (_%g5732757345%_)
                                         (if (gx#stx-pair? _%g5732757345%_)
                                             (let ((_%e5733057348%_
                                                    (gx#syntax-e
                                                     _%g5732757345%_)))
                                               (let ((_%hd5733157352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5733057348%_)))
                                                     (_%tl5733257355%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5733057348%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5733257355%_)
                                                     (let ((_%e5733357358%_
                                                            (gx#syntax-e
                                                             _%tl5733257355%_)))
                                                       (let ((_%hd5733457362%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5733357358%_)))
                     (_%tl5733557365%_
                      (let () (declare (not safe)) (##cdr _%e5733357358%_))))
                 (if (gx#stx-null? _%tl5733557365%_)
                     ((lambda (_%g5732857368%_ _%g5732957370%_)
                        (_%loop57201%_
                         _%rest57227%_
                         _%type57323%_
                         (cons _%g5732857368%_ (cons _%g5732957370%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type57323%_
                          _%part57229%_)
                         '#f))
                      _%hd5733457362%_
                      _%hd5733157352%_)
                     (_%g5732657341%_ _%g5732757345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5732657341%_
                                                      _%g5732757345%_))))
                                             (_%g5732657341%_
                                              _%g5732757345%_)))))
                                 (_%g5732557388%_
                                  (list (if _%nil-check?57209%_
                                            (cons 'check-nil!
                                                  (cons _%object57207%_ '()))
                                            _%object57207%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx57032%_
                                         _%type57323%_
                                         _%part57229%_)))))
                             _%$e57316%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx57032%_
                             _%g5703957159%_
                             _%part57229%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type57206%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx57032%_
                       _%type57206%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5721057217%_)
                                              (let ((_%hd5721457402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5721057217%_)))
                                                    (_%tl5721557405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5721057217%_))))
                                                (let* ((_%part57408%_
                                                        _%hd5721457402%_)
                                                       (_%rest57411%_
                                                        _%tl5721557405%_))
                                                  (_%K5721357398%_
                                                   _%rest57411%_
                                                   _%part57408%_)))
                                              (_%E5721257223%_)))))
                                    _%$e57194%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57032%_)))))))
                     (if (pair? _%g5717357180%_)
                         (let ((_%hd5717757420%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5717357180%_)))
                               (_%tl5717857423%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5717357180%_))))
                           (let* ((_%var57426%_ _%hd5717757420%_)
                                  (_%parts57429%_ _%tl5717857423%_))
                             (_%K5717657416%_ _%parts57429%_ _%var57426%_)))
                         (_%E5717557186%_)))))
                (_%__kont9466394664%_
                 (lambda (_%g5704957102%_ _%g5705057104%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57032%_)))))
            (let ((_%__match9468594686%_
                   (lambda (_%e5704057127%_
                            _%hd5704157131%_
                            _%tl5704257134%_
                            _%e5704357137%_
                            _%hd5704457141%_
                            _%tl5704557144%_
                            _%e5704657147%_
                            _%hd5704757151%_
                            _%tl5704857154%_)
                     (let ((_%g5703857157%_ _%hd5704757151%_)
                           (_%g5703957159%_ _%hd5704457141%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5703957159%_)
                           (_%__kont9466194662%_
                            _%g5703857157%_
                            _%g5703957159%_)
                           (_%__kont9466394664%_
                            _%hd5704757151%_
                            _%hd5704457141%_))))))
              (if (gx#stx-pair? _%__stx9465894659%_)
                  (let ((_%e5704057127%_ (gx#syntax-e _%__stx9465894659%_)))
                    (let ((_%tl5704257134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5704057127%_)))
                          (_%hd5704157131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5704057127%_))))
                      (if (gx#stx-pair? _%tl5704257134%_)
                          (let ((_%e5704357137%_
                                 (gx#syntax-e _%tl5704257134%_)))
                            (let ((_%tl5704557144%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5704357137%_)))
                                  (_%hd5704457141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5704357137%_))))
                              (if (gx#stx-pair? _%tl5704557144%_)
                                  (let ((_%e5704657147%_
                                         (gx#syntax-e _%tl5704557144%_)))
                                    (let ((_%tl5704857154%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5704657147%_)))
                                          (_%hd5704757151%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5704657147%_))))
                                      (if (gx#stx-null? _%tl5704857154%_)
                                          (_%__match9468594686%_
                                           _%e5704057127%_
                                           _%hd5704157131%_
                                           _%tl5704257134%_
                                           _%e5704357137%_
                                           _%hd5704457141%_
                                           _%tl5704557144%_
                                           _%e5704657147%_
                                           _%hd5704757151%_
                                           _%tl5704857154%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5703657065%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5703657065%_)))))
                          (let () (declare (not safe)) (_%g5703657065%_)))))
                  (let () (declare (not safe)) (_%g5703657065%_))))))))))

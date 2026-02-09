(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g98896_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98897_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98898_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98901_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98902_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98905_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98906_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98907_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98908_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98912_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98913_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98914_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98915_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g98919_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51250%_)
        (let* ((_%__stx9236892369%_ _%stx51250%_)
               (_%g5125951468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9236892369%_))))
          (let ((_%__kont9237192372%_
                 (lambda (_%g5126152360%_
                          _%g5126252362%_
                          _%g5126352363%_
                          _%g5126452364%_
                          _%g5126552365%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5126552365%_
                                     (cons _%g5126452364%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5126552365%_
                                                       (cons _%g5126352363%_
                                                             (cons _%g5126252362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5240852411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5240952414%_)
                  (cons _%g5240852411%_ _%g5240952414%_))
                '()
                _%g5126152360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9237592376%_
                 (lambda (_%g5129352206%_
                          _%g5129452208%_
                          _%g5129552209%_
                          _%g5129652210%_
                          _%g5129752211%_
                          _%g5129852212%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5129852212%_
                                     (cons _%g5129752211%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5129852212%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5129652210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5129852212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5129552209%_
                                       (cons _%g5129452208%_ '())))
                           (foldr (lambda (_%g5225652259%_ _%g5225752262%_)
                                    (cons _%g5225652259%_ _%g5225752262%_))
                                  '()
                                  _%g5129352206%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9237992380%_
                 (lambda (_%g5133252025%_
                          _%g5133352027%_
                          _%g5133452028%_
                          _%g5133552029%_)
                   (let ((_%meta52066%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51250%_
                             _%g5133352027%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52066%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5133552029%_
                                           (cons _%g5133452028%_
                                                 (cons _%g5133352027%_ '())))
                                     (foldr (lambda (_%g5207052073%_
                                                     _%g5207152076%_)
                                              (cons _%g5207052073%_
                                                    _%g5207152076%_))
                                            '()
                                            _%g5133252025%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52066%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5133552029%_
                                               (cons _%g5133452028%_
                                                     (cons _%g5133352027%_
                                                           '())))
                                         (foldr (lambda (_%g5208052083%_
                                                         _%g5208152086%_)
                                                  (cons _%g5208052083%_
                                                        _%g5208152086%_))
                                                '()
                                                _%g5133252025%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51250%_
                              _%g5133352027%_
                              _%meta52066%_))))))
                (_%__kont9238392384%_
                 (lambda (_%g5136051905%_ _%g5136151907%_ _%g5136251908%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5136251908%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5136151907%_ '())))
                               (foldr (lambda (_%g5193151934%_ _%g5193251937%_)
                                        (cons _%g5193151934%_ _%g5193251937%_))
                                      '()
                                      _%g5136051905%_)))))
                (_%__kont9238792388%_
                 (lambda (_%g5138751765%_
                          _%g5138851767%_
                          _%g5138951768%_
                          _%g5139051769%_
                          _%g5139151770%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5139151770%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5139051769%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5139151770%_
                                                       (cons _%g5138951768%_
                                                             (cons _%g5138851767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5181151814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5181251817%_)
                  (cons _%g5181151814%_ _%g5181251817%_))
                '()
                _%g5138751765%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9239192392%_
                 (lambda (_%g5142251625%_
                          _%g5142351627%_
                          _%g5142451628%_
                          _%g5142551629%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5142551629%_ _%g5142451628%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5142351627%_
                                                 (foldr (lambda (_%g5165151654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5165251657%_)
                  (cons _%g5165151654%_ _%g5165251657%_))
                '()
                _%g5142251625%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9239592396%_
                 (lambda (_%g5144751523%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5154151544%_ _%g5154251547%_)
                                        (cons _%g5154151544%_ _%g5154251547%_))
                                      '()
                                      _%g5144751523%_))))))
            (let* ((_%__match9270192702%_
                    (lambda (_%e5144851475%_
                             _%hd5144951479%_
                             _%tl5145051482%_
                             _%e5145151485%_
                             _%hd5145251489%_
                             _%tl5145351492%_
                             _%__splice9239792398%_
                             _%target5145451495%_
                             _%tl5145651498%_)
                      (letrec ((_%loop5145751501%_
                                (lambda (_%hd5145551505%_ _%body5146151508%_)
                                  (if (gx#stx-pair? _%hd5145551505%_)
                                      (let ((_%e5145851510%_
                                             (gx#syntax-e _%hd5145551505%_)))
                                        (let ((_%lp-tl5146051517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5145851510%_)))
                                              (_%lp-hd5145951514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5145851510%_))))
                                          (_%loop5145751501%_
                                           _%lp-tl5146051517%_
                                           (cons _%lp-hd5145951514%_
                                                 _%body5146151508%_))))
                                      (let ((_%body5146251520%_
                                             (reverse _%body5146151508%_)))
                                        (_%__kont9239592396%_
                                         _%body5146251520%_))))))
                        (_%loop5145751501%_ _%target5145451495%_ '()))))
                   (_%__match9267992680%_
                    (lambda (_%e5142651557%_
                             _%hd5142751561%_
                             _%tl5142851564%_
                             _%e5142951567%_
                             _%hd5143051571%_
                             _%tl5143151574%_
                             _%e5143251577%_
                             _%hd5143351581%_
                             _%tl5143451584%_
                             _%e5143551587%_
                             _%hd5143651591%_
                             _%tl5143751594%_
                             _%__splice9239392394%_
                             _%target5143851597%_
                             _%tl5144051600%_)
                      (letrec ((_%loop5144151603%_
                                (lambda (_%hd5143951607%_ _%body5144551610%_)
                                  (if (gx#stx-pair? _%hd5143951607%_)
                                      (let ((_%e5144251612%_
                                             (gx#syntax-e _%hd5143951607%_)))
                                        (let ((_%lp-tl5144451619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5144251612%_)))
                                              (_%lp-hd5144351616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5144251612%_))))
                                          (_%loop5144151603%_
                                           _%lp-tl5144451619%_
                                           (cons _%lp-hd5144351616%_
                                                 _%body5144551610%_))))
                                      (let ((_%body5144651622%_
                                             (reverse _%body5144551610%_)))
                                        (let ((_%g5142251625%_
                                               _%body5144651622%_)
                                              (_%g5142351627%_
                                               _%tl5143451584%_)
                                              (_%g5142451628%_
                                               _%tl5143751594%_)
                                              (_%g5142551629%_
                                               _%hd5143651591%_))
                                          (if (gx#identifier? _%g5142551629%_)
                                              (_%__kont9239192392%_
                                               _%g5142251625%_
                                               _%g5142351627%_
                                               _%g5142451628%_
                                               _%g5142551629%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_)))))))))
                        (_%loop5144151603%_ _%target5143851597%_ '()))))
                   (_%__match9266592666%_
                    (lambda (_%e5142651557%_
                             _%hd5142751561%_
                             _%tl5142851564%_
                             _%e5142951567%_
                             _%hd5143051571%_
                             _%tl5143151574%_
                             _%e5143251577%_
                             _%hd5143351581%_
                             _%tl5143451584%_)
                      (if (gx#stx-pair? _%hd5143351581%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5143351581%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (if (gx#stx-pair/null? _%tl5143151574%_)
                                  (let ((_%__splice9239392394%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5143151574%_
                                          '0)))
                                    (let ((_%tl5144051600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '1)))
                                          (_%target5143851597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5144051600%_)
                                          (_%__match9267992680%_
                                           _%e5142651557%_
                                           _%hd5142751561%_
                                           _%tl5142851564%_
                                           _%e5142951567%_
                                           _%hd5143051571%_
                                           _%tl5143151574%_
                                           _%e5143251577%_
                                           _%hd5143351581%_
                                           _%tl5143451584%_
                                           _%e5143551587%_
                                           _%hd5143651591%_
                                           _%tl5143751594%_
                                           _%__splice9239392394%_
                                           _%target5143851597%_
                                           _%tl5144051600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                   (_%__match9264792648%_
                    (lambda (_%e5139251667%_
                             _%hd5139351671%_
                             _%tl5139451674%_
                             _%e5139551677%_
                             _%hd5139651681%_
                             _%tl5139751684%_
                             _%e5139851687%_
                             _%hd5139951691%_
                             _%tl5140051694%_
                             _%e5140151697%_
                             _%hd5140251701%_
                             _%tl5140351704%_
                             _%e5140451707%_
                             _%hd5140551711%_
                             _%tl5140651714%_
                             _%e5140751717%_
                             _%hd5140851721%_
                             _%tl5140951724%_
                             _%e5141051727%_
                             _%hd5141151731%_
                             _%tl5141251734%_
                             _%__splice9238992390%_
                             _%target5141351737%_
                             _%tl5141551740%_)
                      (letrec ((_%loop5141651743%_
                                (lambda (_%hd5141451747%_ _%body5142051750%_)
                                  (if (gx#stx-pair? _%hd5141451747%_)
                                      (let ((_%e5141751752%_
                                             (gx#syntax-e _%hd5141451747%_)))
                                        (let ((_%lp-tl5141951759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5141751752%_)))
                                              (_%lp-hd5141851756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5141751752%_))))
                                          (_%loop5141651743%_
                                           _%lp-tl5141951759%_
                                           (cons _%lp-hd5141851756%_
                                                 _%body5142051750%_))))
                                      (let ((_%body5142151762%_
                                             (reverse _%body5142051750%_)))
                                        (let ((_%g5138751765%_
                                               _%body5142151762%_)
                                              (_%g5138851767%_
                                               _%hd5141151731%_)
                                              (_%g5138951768%_
                                               _%hd5140851721%_)
                                              (_%g5139051769%_
                                               _%hd5140551711%_)
                                              (_%g5139151770%_
                                               _%hd5139951691%_))
                                          (if (and (gx#identifier?
                                                    _%g5139151770%_)
                                                   (gx#identifier?
                                                    _%g5138851767%_)
                                                   (gx#identifier?
                                                    _%g5138951768%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5138951768%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5138951768%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5138951768%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5138951768%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9238792388%_
                                               _%g5138751765%_
                                               _%g5138851767%_
                                               _%g5138951768%_
                                               _%g5139051769%_
                                               _%g5139151770%_)
                                              (_%__match9266592666%_
                                               _%e5139251667%_
                                               _%hd5139351671%_
                                               _%tl5139451674%_
                                               _%e5139551677%_
                                               _%hd5139651681%_
                                               _%tl5139751684%_
                                               _%e5139851687%_
                                               _%hd5139951691%_
                                               _%tl5140051694%_))))))))
                        (_%loop5141651743%_ _%target5141351737%_ '()))))
                   (_%__match9259192592%_
                    (lambda (_%e5136351827%_
                             _%hd5136451831%_
                             _%tl5136551834%_
                             _%e5136651837%_
                             _%hd5136751841%_
                             _%tl5136851844%_
                             _%e5136951847%_
                             _%hd5137051851%_
                             _%tl5137151854%_
                             _%e5137251857%_
                             _%hd5137351861%_
                             _%tl5137451864%_
                             _%e5137551867%_
                             _%hd5137651871%_
                             _%tl5137751874%_
                             _%__splice9238592386%_
                             _%target5137851877%_
                             _%tl5138051880%_)
                      (letrec ((_%loop5138151883%_
                                (lambda (_%hd5137951887%_ _%body5138551890%_)
                                  (if (gx#stx-pair? _%hd5137951887%_)
                                      (let ((_%e5138251892%_
                                             (gx#syntax-e _%hd5137951887%_)))
                                        (let ((_%lp-tl5138451899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5138251892%_)))
                                              (_%lp-hd5138351896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5138251892%_))))
                                          (_%loop5138151883%_
                                           _%lp-tl5138451899%_
                                           (cons _%lp-hd5138351896%_
                                                 _%body5138551890%_))))
                                      (let ((_%body5138651902%_
                                             (reverse _%body5138551890%_)))
                                        (let ((_%g5136051905%_
                                               _%body5138651902%_)
                                              (_%g5136151907%_
                                               _%hd5137651871%_)
                                              (_%g5136251908%_
                                               _%hd5137051851%_))
                                          (if (gx#identifier? _%g5136251908%_)
                                              (_%__kont9238392384%_
                                               _%g5136051905%_
                                               _%g5136151907%_
                                               _%g5136251908%_)
                                              (_%__match9266592666%_
                                               _%e5136351827%_
                                               _%hd5136451831%_
                                               _%tl5136551834%_
                                               _%e5136651837%_
                                               _%hd5136751841%_
                                               _%tl5136851844%_
                                               _%e5136951847%_
                                               _%hd5137051851%_
                                               _%tl5137151854%_))))))))
                        (_%loop5138151883%_ _%target5137851877%_ '()))))
                   (_%__match9257192572%_
                    (lambda (_%e5136351827%_
                             _%hd5136451831%_
                             _%tl5136551834%_
                             _%e5136651837%_
                             _%hd5136751841%_
                             _%tl5136851844%_
                             _%e5136951847%_
                             _%hd5137051851%_
                             _%tl5137151854%_
                             _%e5137251857%_
                             _%hd5137351861%_
                             _%tl5137451864%_)
                      (if (gx#identifier? _%hd5137351861%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g98896_|
                               _%hd5137351861%_)
                              (if (gx#stx-pair? _%tl5137451864%_)
                                  (let ((_%e5137551867%_
                                         (gx#syntax-e _%tl5137451864%_)))
                                    (let ((_%tl5137751874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137551867%_)))
                                          (_%hd5137651871%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137551867%_))))
                                      (if (gx#stx-null? _%tl5137751874%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5136851844%_)
                                              (let ((_%__splice9238592386%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5136851844%_
                                                      '0)))
                                                (let ((_%tl5138051880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9238592386%_
                                                          '1)))
                                                      (_%target5137851877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9238592386%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5138051880%_)
                                                      (_%__match9259192592%_
                                                       _%e5136351827%_
                                                       _%hd5136451831%_
                                                       _%tl5136551834%_
                                                       _%e5136651837%_
                                                       _%hd5136751841%_
                                                       _%tl5136851844%_
                                                       _%e5136951847%_
                                                       _%hd5137051851%_
                                                       _%tl5137151854%_
                                                       _%e5137251857%_
                                                       _%hd5137351861%_
                                                       _%tl5137451864%_
                                                       _%e5137551867%_
                                                       _%hd5137651871%_
                                                       _%tl5137751874%_
                                                       _%__splice9238592386%_
                                                       _%target5137851877%_
                                                       _%tl5138051880%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5137051851%_)
                                                          (let ((_%e5143551587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5137051851%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5137051851%_)
                                                  (let ((_%e5143551587%_
                                                         (gx#syntax-e
                                                          _%hd5137051851%_)))
                                                    (let ((_%tl5143751594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5143551587%_)))
                                                          (_%hd5143651591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5143551587%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125951468%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))
                                          (if (gx#stx-pair? _%tl5137751874%_)
                                              (let ((_%e5140751717%_
                                                     (gx#syntax-e
                                                      _%tl5137751874%_)))
                                                (let ((_%tl5140951724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5140751717%_)))
                                                      (_%hd5140851721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5140751717%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5140951724%_)
                                                      (let ((_%e5141051727%_
                                                             (gx#syntax-e
                                                              _%tl5140951724%_)))
                                                        (let ((_%tl5141251734%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5141051727%_)))
                      (_%hd5141151731%_
                       (let () (declare (not safe)) (##car _%e5141051727%_))))
                  (if (gx#stx-null? _%tl5141251734%_)
                      (if (gx#stx-pair/null? _%tl5136851844%_)
                          (let ((_%__splice9238992390%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5136851844%_
                                  '0)))
                            (let ((_%tl5141551740%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9238992390%_ '1)))
                                  (_%target5141351737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9238992390%_
                                      '0))))
                              (if (gx#stx-null? _%tl5141551740%_)
                                  (_%__match9264792648%_
                                   _%e5136351827%_
                                   _%hd5136451831%_
                                   _%tl5136551834%_
                                   _%e5136651837%_
                                   _%hd5136751841%_
                                   _%tl5136851844%_
                                   _%e5136951847%_
                                   _%hd5137051851%_
                                   _%tl5137151854%_
                                   _%e5137251857%_
                                   _%hd5137351861%_
                                   _%tl5137451864%_
                                   _%e5137551867%_
                                   _%hd5137651871%_
                                   _%tl5137751874%_
                                   _%e5140751717%_
                                   _%hd5140851721%_
                                   _%tl5140951724%_
                                   _%e5141051727%_
                                   _%hd5141151731%_
                                   _%tl5141251734%_
                                   _%__splice9238992390%_
                                   _%target5141351737%_
                                   _%tl5141551740%_)
                                  (if (gx#stx-pair? _%hd5137051851%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5137051851%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))
                          (if (gx#stx-pair? _%hd5137051851%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5137051851%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                      (if (gx#stx-pair? _%hd5137051851%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5137051851%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (if (gx#stx-pair/null? _%tl5136851844%_)
                                  (let ((_%__splice9239392394%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5136851844%_
                                          '0)))
                                    (let ((_%tl5144051600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '1)))
                                          (_%target5143851597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5144051600%_)
                                          (_%__match9267992680%_
                                           _%e5136351827%_
                                           _%hd5136451831%_
                                           _%tl5136551834%_
                                           _%e5136651837%_
                                           _%hd5136751841%_
                                           _%tl5136851844%_
                                           _%e5136951847%_
                                           _%hd5137051851%_
                                           _%tl5137151854%_
                                           _%e5143551587%_
                                           _%hd5143651591%_
                                           _%tl5143751594%_
                                           _%__splice9239392394%_
                                           _%target5143851597%_
                                           _%tl5144051600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_))))))
              (if (gx#stx-pair? _%hd5137051851%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5137051851%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5136851844%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5136851844%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5136351827%_
                                   _%hd5136451831%_
                                   _%tl5136551834%_
                                   _%e5136651837%_
                                   _%hd5136751841%_
                                   _%tl5136851844%_
                                   _%e5136951847%_
                                   _%hd5137051851%_
                                   _%tl5137151854%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5137051851%_)
                                                  (let ((_%e5143551587%_
                                                         (gx#syntax-e
                                                          _%hd5137051851%_)))
                                                    (let ((_%tl5143751594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5143551587%_)))
                                                          (_%hd5143651591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5143551587%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5136851844%_)
                                                          (let ((_%__splice9239392394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5136851844%_ '0)))
                    (let ((_%tl5144051600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '1)))
                          (_%target5143851597%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '0))))
                      (if (gx#stx-null? _%tl5144051600%_)
                          (_%__match9267992680%_
                           _%e5136351827%_
                           _%hd5136451831%_
                           _%tl5136551834%_
                           _%e5136651837%_
                           _%hd5136751841%_
                           _%tl5136851844%_
                           _%e5136951847%_
                           _%hd5137051851%_
                           _%tl5137151854%_
                           _%e5143551587%_
                           _%hd5143651591%_
                           _%tl5143751594%_
                           _%__splice9239392394%_
                           _%target5143851597%_
                           _%tl5144051600%_)
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))))
                                  (if (gx#stx-pair? _%hd5137051851%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5137051851%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5136851844%_)
                                              (let ((_%__splice9239392394%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5136851844%_
                                                      '0)))
                                                (let ((_%tl5144051600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '1)))
                                                      (_%target5143851597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5144051600%_)
                                                      (_%__match9267992680%_
                                                       _%e5136351827%_
                                                       _%hd5136451831%_
                                                       _%tl5136551834%_
                                                       _%e5136651837%_
                                                       _%hd5136751841%_
                                                       _%tl5136851844%_
                                                       _%e5136951847%_
                                                       _%hd5137051851%_
                                                       _%tl5137151854%_
                                                       _%e5143551587%_
                                                       _%hd5143651591%_
                                                       _%tl5143751594%_
                                                       _%__splice9239392394%_
                                                       _%target5143851597%_
                                                       _%tl5144051600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125951468%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                              (if (gx#stx-pair? _%hd5137051851%_)
                                  (let ((_%e5143551587%_
                                         (gx#syntax-e _%hd5137051851%_)))
                                    (let ((_%tl5143751594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5143551587%_)))
                                          (_%hd5143651591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5143551587%_))))
                                      (if (gx#stx-pair/null? _%tl5136851844%_)
                                          (let ((_%__splice9239392394%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5136851844%_
                                                  '0)))
                                            (let ((_%tl5144051600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9239392394%_
                                                      '1)))
                                                  (_%target5143851597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9239392394%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5144051600%_)
                                                  (_%__match9267992680%_
                                                   _%e5136351827%_
                                                   _%hd5136451831%_
                                                   _%tl5136551834%_
                                                   _%e5136651837%_
                                                   _%hd5136751841%_
                                                   _%tl5136851844%_
                                                   _%e5136951847%_
                                                   _%hd5137051851%_
                                                   _%tl5137151854%_
                                                   _%e5143551587%_
                                                   _%hd5143651591%_
                                                   _%tl5143751594%_
                                                   _%__splice9239392394%_
                                                   _%target5143851597%_
                                                   _%tl5144051600%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                          (if (gx#stx-pair? _%hd5137051851%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5137051851%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (if (gx#stx-pair/null? _%tl5136851844%_)
                                      (let ((_%__splice9239392394%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5136851844%_
                                              '0)))
                                        (let ((_%tl5144051600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9239392394%_
                                                  '1)))
                                              (_%target5143851597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9239392394%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5144051600%_)
                                              (_%__match9267992680%_
                                               _%e5136351827%_
                                               _%hd5136451831%_
                                               _%tl5136551834%_
                                               _%e5136651837%_
                                               _%hd5136751841%_
                                               _%tl5136851844%_
                                               _%e5136951847%_
                                               _%hd5137051851%_
                                               _%tl5137151854%_
                                               _%e5143551587%_
                                               _%hd5143651591%_
                                               _%tl5143751594%_
                                               _%__splice9239392394%_
                                               _%target5143851597%_
                                               _%tl5144051600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_))))))
                   (_%__match9254792548%_
                    (lambda (_%e5133651947%_
                             _%hd5133751951%_
                             _%tl5133851954%_
                             _%e5133951957%_
                             _%hd5134051961%_
                             _%tl5134151964%_
                             _%e5134251967%_
                             _%hd5134351971%_
                             _%tl5134451974%_
                             _%e5134551977%_
                             _%hd5134651981%_
                             _%tl5134751984%_
                             _%e5134851987%_
                             _%hd5134951991%_
                             _%tl5135051994%_
                             _%__splice9238192382%_
                             _%target5135151997%_
                             _%tl5135352000%_)
                      (letrec ((_%loop5135452003%_
                                (lambda (_%hd5135252007%_ _%body5135852010%_)
                                  (if (gx#stx-pair? _%hd5135252007%_)
                                      (let ((_%e5135552012%_
                                             (gx#syntax-e _%hd5135252007%_)))
                                        (let ((_%lp-tl5135752019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5135552012%_)))
                                              (_%lp-hd5135652016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5135552012%_))))
                                          (_%loop5135452003%_
                                           _%lp-tl5135752019%_
                                           (cons _%lp-hd5135652016%_
                                                 _%body5135852010%_))))
                                      (let ((_%body5135952022%_
                                             (reverse _%body5135852010%_)))
                                        (let ((_%g5133252025%_
                                               _%body5135952022%_)
                                              (_%g5133352027%_
                                               _%hd5134951991%_)
                                              (_%g5133452028%_
                                               _%hd5134651981%_)
                                              (_%g5133552029%_
                                               _%hd5134351971%_))
                                          (if (and (gx#identifier?
                                                    _%g5133552029%_)
                                                   (gx#identifier?
                                                    _%g5133352027%_)
                                                   (gx#identifier?
                                                    _%g5133452028%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5133452028%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5133452028%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5133452028%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5133452028%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9237992380%_
                                               _%g5133252025%_
                                               _%g5133352027%_
                                               _%g5133452028%_
                                               _%g5133552029%_)
                                              (_%__match9257192572%_
                                               _%e5133651947%_
                                               _%hd5133751951%_
                                               _%tl5133851954%_
                                               _%e5133951957%_
                                               _%hd5134051961%_
                                               _%tl5134151964%_
                                               _%e5134251967%_
                                               _%hd5134351971%_
                                               _%tl5134451974%_
                                               _%e5134551977%_
                                               _%hd5134651981%_
                                               _%tl5134751984%_))))))))
                        (_%loop5135452003%_ _%target5135151997%_ '()))))
                   (_%__match9250792508%_
                    (lambda (_%e5129952098%_
                             _%hd5130052102%_
                             _%tl5130152105%_
                             _%e5130252108%_
                             _%hd5130352112%_
                             _%tl5130452115%_
                             _%e5130552118%_
                             _%hd5130652122%_
                             _%tl5130752125%_
                             _%e5130852128%_
                             _%hd5130952132%_
                             _%tl5131052135%_
                             _%e5131152138%_
                             _%hd5131252142%_
                             _%tl5131352145%_
                             _%e5131452148%_
                             _%hd5131552152%_
                             _%tl5131652155%_
                             _%e5131752158%_
                             _%hd5131852162%_
                             _%tl5131952165%_
                             _%e5132052168%_
                             _%hd5132152172%_
                             _%tl5132252175%_
                             _%__splice9237792378%_
                             _%target5132352178%_
                             _%tl5132552181%_)
                      (letrec ((_%loop5132652184%_
                                (lambda (_%hd5132452188%_ _%body5133052191%_)
                                  (if (gx#stx-pair? _%hd5132452188%_)
                                      (let ((_%e5132752193%_
                                             (gx#syntax-e _%hd5132452188%_)))
                                        (let ((_%lp-tl5132952200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5132752193%_)))
                                              (_%lp-hd5132852197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5132752193%_))))
                                          (_%loop5132652184%_
                                           _%lp-tl5132952200%_
                                           (cons _%lp-hd5132852197%_
                                                 _%body5133052191%_))))
                                      (let ((_%body5133152203%_
                                             (reverse _%body5133052191%_)))
                                        (let ((_%g5129352206%_
                                               _%body5133152203%_)
                                              (_%g5129452208%_
                                               _%hd5132152172%_)
                                              (_%g5129552209%_
                                               _%hd5131852162%_)
                                              (_%g5129652210%_
                                               _%hd5131552152%_)
                                              (_%g5129752211%_
                                               _%hd5130952132%_)
                                              (_%g5129852212%_
                                               _%hd5130652122%_))
                                          (if (and (gx#identifier?
                                                    _%g5129852212%_)
                                                   (gx#identifier?
                                                    _%g5129452208%_)
                                                   (gx#identifier?
                                                    _%g5129552209%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5129552209%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5129552209%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5129552209%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5129552209%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9237592376%_
                                               _%g5129352206%_
                                               _%g5129452208%_
                                               _%g5129552209%_
                                               _%g5129652210%_
                                               _%g5129752211%_
                                               _%g5129852212%_)
                                              (_%__match9257192572%_
                                               _%e5129952098%_
                                               _%hd5130052102%_
                                               _%tl5130152105%_
                                               _%e5130252108%_
                                               _%hd5130352112%_
                                               _%tl5130452115%_
                                               _%e5130552118%_
                                               _%hd5130652122%_
                                               _%tl5130752125%_
                                               _%e5130852128%_
                                               _%hd5130952132%_
                                               _%tl5131052135%_))))))))
                        (_%loop5132652184%_ _%target5132352178%_ '()))))
                   (_%__match9247592476%_
                    (lambda (_%e5129952098%_
                             _%hd5130052102%_
                             _%tl5130152105%_
                             _%e5130252108%_
                             _%hd5130352112%_
                             _%tl5130452115%_
                             _%e5130552118%_
                             _%hd5130652122%_
                             _%tl5130752125%_
                             _%e5130852128%_
                             _%hd5130952132%_
                             _%tl5131052135%_
                             _%e5131152138%_
                             _%hd5131252142%_
                             _%tl5131352145%_)
                      (if (gx#identifier? _%hd5131252142%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g98897_|
                               _%hd5131252142%_)
                              (if (gx#stx-pair? _%tl5131352145%_)
                                  (let ((_%e5131452148%_
                                         (gx#syntax-e _%tl5131352145%_)))
                                    (let ((_%tl5131652155%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5131452148%_)))
                                          (_%hd5131552152%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5131452148%_))))
                                      (if (gx#stx-pair? _%tl5131652155%_)
                                          (let ((_%e5131752158%_
                                                 (gx#syntax-e
                                                  _%tl5131652155%_)))
                                            (let ((_%tl5131952165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5131752158%_)))
                                                  (_%hd5131852162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5131752158%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5131952165%_)
                                                  (let ((_%e5132052168%_
                                                         (gx#syntax-e
                                                          _%tl5131952165%_)))
                                                    (let ((_%tl5132252175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5132052168%_)))
                                                          (_%hd5132152172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5132052168%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5132252175%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5130452115%_)
                                                              (let ((_%__splice9237792378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5130452115%_
                              '0)))
                        (let ((_%tl5132552181%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9237792378%_ '1)))
                              (_%target5132352178%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9237792378%_ '0))))
                          (if (gx#stx-null? _%tl5132552181%_)
                              (_%__match9250792508%_
                               _%e5129952098%_
                               _%hd5130052102%_
                               _%tl5130152105%_
                               _%e5130252108%_
                               _%hd5130352112%_
                               _%tl5130452115%_
                               _%e5130552118%_
                               _%hd5130652122%_
                               _%tl5130752125%_
                               _%e5130852128%_
                               _%hd5130952132%_
                               _%tl5131052135%_
                               _%e5131152138%_
                               _%hd5131252142%_
                               _%tl5131352145%_
                               _%e5131452148%_
                               _%hd5131552152%_
                               _%tl5131652155%_
                               _%e5131752158%_
                               _%hd5131852162%_
                               _%tl5131952165%_
                               _%e5132052168%_
                               _%hd5132152172%_
                               _%tl5132252175%_
                               _%__splice9237792378%_
                               _%target5132352178%_
                               _%tl5132552181%_)
                              (if (gx#stx-pair? _%hd5130652122%_)
                                  (let ((_%e5143551587%_
                                         (gx#syntax-e _%hd5130652122%_)))
                                    (let ((_%tl5143751594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5143551587%_)))
                                          (_%hd5143651591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5143551587%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))))
                      (if (gx#stx-pair? _%hd5130652122%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5130652122%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                  (if (gx#stx-pair? _%hd5130652122%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5130652122%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (if (gx#stx-pair/null? _%tl5130452115%_)
                              (let ((_%__splice9239392394%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5130452115%_
                                      '0)))
                                (let ((_%tl5144051600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '1)))
                                      (_%target5143851597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5144051600%_)
                                      (_%__match9267992680%_
                                       _%e5129952098%_
                                       _%hd5130052102%_
                                       _%tl5130152105%_
                                       _%e5130252108%_
                                       _%hd5130352112%_
                                       _%tl5130452115%_
                                       _%e5130552118%_
                                       _%hd5130652122%_
                                       _%tl5130752125%_
                                       _%e5143551587%_
                                       _%hd5143651591%_
                                       _%tl5143751594%_
                                       _%__splice9239392394%_
                                       _%target5143851597%_
                                       _%tl5144051600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5130952132%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g98896_|
                                                           _%hd5130952132%_)
                                                          (if (gx#stx-null?
                                                               _%tl5131952165%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5130452115%_)
                          (let ((_%__splice9238992390%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5130452115%_
                                  '0)))
                            (let ((_%tl5141551740%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9238992390%_ '1)))
                                  (_%target5141351737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9238992390%_
                                      '0))))
                              (if (gx#stx-null? _%tl5141551740%_)
                                  (_%__match9264792648%_
                                   _%e5129952098%_
                                   _%hd5130052102%_
                                   _%tl5130152105%_
                                   _%e5130252108%_
                                   _%hd5130352112%_
                                   _%tl5130452115%_
                                   _%e5130552118%_
                                   _%hd5130652122%_
                                   _%tl5130752125%_
                                   _%e5130852128%_
                                   _%hd5130952132%_
                                   _%tl5131052135%_
                                   _%e5131152138%_
                                   _%hd5131252142%_
                                   _%tl5131352145%_
                                   _%e5131452148%_
                                   _%hd5131552152%_
                                   _%tl5131652155%_
                                   _%e5131752158%_
                                   _%hd5131852162%_
                                   _%tl5131952165%_
                                   _%__splice9238992390%_
                                   _%target5141351737%_
                                   _%tl5141551740%_)
                                  (if (gx#stx-pair? _%hd5130652122%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5130652122%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))
                          (if (gx#stx-pair? _%hd5130652122%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5130652122%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                      (if (gx#stx-pair? _%hd5130652122%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5130652122%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (if (gx#stx-pair/null? _%tl5130452115%_)
                                  (let ((_%__splice9239392394%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5130452115%_
                                          '0)))
                                    (let ((_%tl5144051600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '1)))
                                          (_%target5143851597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5144051600%_)
                                          (_%__match9267992680%_
                                           _%e5129952098%_
                                           _%hd5130052102%_
                                           _%tl5130152105%_
                                           _%e5130252108%_
                                           _%hd5130352112%_
                                           _%tl5130452115%_
                                           _%e5130552118%_
                                           _%hd5130652122%_
                                           _%tl5130752125%_
                                           _%e5143551587%_
                                           _%hd5143651591%_
                                           _%tl5143751594%_
                                           _%__splice9239392394%_
                                           _%target5143851597%_
                                           _%tl5144051600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                  (if (gx#stx-pair? _%hd5130652122%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5130652122%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (if (gx#stx-pair/null? _%tl5130452115%_)
                              (let ((_%__splice9239392394%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5130452115%_
                                      '0)))
                                (let ((_%tl5144051600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '1)))
                                      (_%target5143851597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5144051600%_)
                                      (_%__match9267992680%_
                                       _%e5129952098%_
                                       _%hd5130052102%_
                                       _%tl5130152105%_
                                       _%e5130252108%_
                                       _%hd5130352112%_
                                       _%tl5130452115%_
                                       _%e5130552118%_
                                       _%hd5130652122%_
                                       _%tl5130752125%_
                                       _%e5143551587%_
                                       _%hd5143651591%_
                                       _%tl5143751594%_
                                       _%__splice9239392394%_
                                       _%target5143851597%_
                                       _%tl5144051600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
              (if (gx#stx-pair? _%hd5130652122%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5130652122%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5130452115%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5130452115%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5129952098%_
                                   _%hd5130052102%_
                                   _%tl5130152105%_
                                   _%e5130252108%_
                                   _%hd5130352112%_
                                   _%tl5130452115%_
                                   _%e5130552118%_
                                   _%hd5130652122%_
                                   _%tl5130752125%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5130652122%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5130652122%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5130452115%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5130452115%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5129952098%_
                       _%hd5130052102%_
                       _%tl5130152105%_
                       _%e5130252108%_
                       _%hd5130352112%_
                       _%tl5130452115%_
                       _%e5130552118%_
                       _%hd5130652122%_
                       _%tl5130752125%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))))
                                  (if (gx#stx-null? _%tl5131352145%_)
                                      (if (gx#stx-pair/null? _%tl5130452115%_)
                                          (let ((_%__splice9238192382%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5130452115%_
                                                  '0)))
                                            (let ((_%tl5135352000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9238192382%_
                                                      '1)))
                                                  (_%target5135151997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9238192382%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5135352000%_)
                                                  (_%__match9254792548%_
                                                   _%e5129952098%_
                                                   _%hd5130052102%_
                                                   _%tl5130152105%_
                                                   _%e5130252108%_
                                                   _%hd5130352112%_
                                                   _%tl5130452115%_
                                                   _%e5130552118%_
                                                   _%hd5130652122%_
                                                   _%tl5130752125%_
                                                   _%e5130852128%_
                                                   _%hd5130952132%_
                                                   _%tl5131052135%_
                                                   _%e5131152138%_
                                                   _%hd5131252142%_
                                                   _%tl5131352145%_
                                                   _%__splice9238192382%_
                                                   _%target5135151997%_
                                                   _%tl5135352000%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5130652122%_)
                                                      (let ((_%e5143551587%_
                                                             (gx#syntax-e
                                                              _%hd5130652122%_)))
                                                        (let ((_%tl5143751594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5143551587%_)))
                      (_%hd5143651591%_
                       (let () (declare (not safe)) (##car _%e5143551587%_))))
                  (let () (declare (not safe)) (_%g5125951468%_))))
              (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5130652122%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5130652122%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                      (if (gx#stx-pair? _%hd5130652122%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5130652122%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5130452115%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5130452115%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5129952098%_
                                                           _%hd5130052102%_
                                                           _%tl5130152105%_
                                                           _%e5130252108%_
                                                           _%hd5130352112%_
                                                           _%tl5130452115%_
                                                           _%e5130552118%_
                                                           _%hd5130652122%_
                                                           _%tl5130752125%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                              (if (gx#stx-null? _%tl5131352145%_)
                                  (if (gx#stx-pair/null? _%tl5130452115%_)
                                      (let ((_%__splice9238192382%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5130452115%_
                                              '0)))
                                        (let ((_%tl5135352000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9238192382%_
                                                  '1)))
                                              (_%target5135151997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9238192382%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5135352000%_)
                                              (_%__match9254792548%_
                                               _%e5129952098%_
                                               _%hd5130052102%_
                                               _%tl5130152105%_
                                               _%e5130252108%_
                                               _%hd5130352112%_
                                               _%tl5130452115%_
                                               _%e5130552118%_
                                               _%hd5130652122%_
                                               _%tl5130752125%_
                                               _%e5130852128%_
                                               _%hd5130952132%_
                                               _%tl5131052135%_
                                               _%e5131152138%_
                                               _%hd5131252142%_
                                               _%tl5131352145%_
                                               _%__splice9238192382%_
                                               _%target5135151997%_
                                               _%tl5135352000%_)
                                              (if (gx#stx-pair?
                                                   _%hd5130652122%_)
                                                  (let ((_%e5143551587%_
                                                         (gx#syntax-e
                                                          _%hd5130652122%_)))
                                                    (let ((_%tl5143751594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5143551587%_)))
                                                          (_%hd5143651591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5143551587%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125951468%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))))
                                      (if (gx#stx-pair? _%hd5130652122%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5130652122%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                  (if (gx#identifier? _%hd5130952132%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g98896_|
                                           _%hd5130952132%_)
                                          (if (gx#stx-pair? _%tl5131352145%_)
                                              (let ((_%e5140751717%_
                                                     (gx#syntax-e
                                                      _%tl5131352145%_)))
                                                (let ((_%tl5140951724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5140751717%_)))
                                                      (_%hd5140851721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5140751717%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5140951724%_)
                                                      (let ((_%e5141051727%_
                                                             (gx#syntax-e
                                                              _%tl5140951724%_)))
                                                        (let ((_%tl5141251734%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5141051727%_)))
                      (_%hd5141151731%_
                       (let () (declare (not safe)) (##car _%e5141051727%_))))
                  (if (gx#stx-null? _%tl5141251734%_)
                      (if (gx#stx-pair/null? _%tl5130452115%_)
                          (let ((_%__splice9238992390%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5130452115%_
                                  '0)))
                            (let ((_%tl5141551740%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9238992390%_ '1)))
                                  (_%target5141351737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9238992390%_
                                      '0))))
                              (if (gx#stx-null? _%tl5141551740%_)
                                  (_%__match9264792648%_
                                   _%e5129952098%_
                                   _%hd5130052102%_
                                   _%tl5130152105%_
                                   _%e5130252108%_
                                   _%hd5130352112%_
                                   _%tl5130452115%_
                                   _%e5130552118%_
                                   _%hd5130652122%_
                                   _%tl5130752125%_
                                   _%e5130852128%_
                                   _%hd5130952132%_
                                   _%tl5131052135%_
                                   _%e5131152138%_
                                   _%hd5131252142%_
                                   _%tl5131352145%_
                                   _%e5140751717%_
                                   _%hd5140851721%_
                                   _%tl5140951724%_
                                   _%e5141051727%_
                                   _%hd5141151731%_
                                   _%tl5141251734%_
                                   _%__splice9238992390%_
                                   _%target5141351737%_
                                   _%tl5141551740%_)
                                  (if (gx#stx-pair? _%hd5130652122%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5130652122%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))
                          (if (gx#stx-pair? _%hd5130652122%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5130652122%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                      (if (gx#stx-pair? _%hd5130652122%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5130652122%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (if (gx#stx-pair/null? _%tl5130452115%_)
                                  (let ((_%__splice9239392394%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5130452115%_
                                          '0)))
                                    (let ((_%tl5144051600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '1)))
                                          (_%target5143851597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5144051600%_)
                                          (_%__match9267992680%_
                                           _%e5129952098%_
                                           _%hd5130052102%_
                                           _%tl5130152105%_
                                           _%e5130252108%_
                                           _%hd5130352112%_
                                           _%tl5130452115%_
                                           _%e5130552118%_
                                           _%hd5130652122%_
                                           _%tl5130752125%_
                                           _%e5143551587%_
                                           _%hd5143651591%_
                                           _%tl5143751594%_
                                           _%__splice9239392394%_
                                           _%target5143851597%_
                                           _%tl5144051600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_))))))
              (if (gx#stx-pair? _%hd5130652122%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5130652122%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5130452115%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5130452115%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5129952098%_
                                   _%hd5130052102%_
                                   _%tl5130152105%_
                                   _%e5130252108%_
                                   _%hd5130352112%_
                                   _%tl5130452115%_
                                   _%e5130552118%_
                                   _%hd5130652122%_
                                   _%tl5130752125%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5130652122%_)
                                                  (let ((_%e5143551587%_
                                                         (gx#syntax-e
                                                          _%hd5130652122%_)))
                                                    (let ((_%tl5143751594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5143551587%_)))
                                                          (_%hd5143651591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5143551587%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5130452115%_)
                                                          (let ((_%__splice9239392394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5130452115%_ '0)))
                    (let ((_%tl5144051600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '1)))
                          (_%target5143851597%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '0))))
                      (if (gx#stx-null? _%tl5144051600%_)
                          (_%__match9267992680%_
                           _%e5129952098%_
                           _%hd5130052102%_
                           _%tl5130152105%_
                           _%e5130252108%_
                           _%hd5130352112%_
                           _%tl5130452115%_
                           _%e5130552118%_
                           _%hd5130652122%_
                           _%tl5130752125%_
                           _%e5143551587%_
                           _%hd5143651591%_
                           _%tl5143751594%_
                           _%__splice9239392394%_
                           _%target5143851597%_
                           _%tl5144051600%_)
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))
                                          (if (gx#stx-pair? _%hd5130652122%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5130652122%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5130452115%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5130452115%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5129952098%_
                       _%hd5130052102%_
                       _%tl5130152105%_
                       _%e5130252108%_
                       _%hd5130352112%_
                       _%tl5130452115%_
                       _%e5130552118%_
                       _%hd5130652122%_
                       _%tl5130752125%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                      (if (gx#stx-pair? _%hd5130652122%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5130652122%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5130452115%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5130452115%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5129952098%_
                                                           _%hd5130052102%_
                                                           _%tl5130152105%_
                                                           _%e5130252108%_
                                                           _%hd5130352112%_
                                                           _%tl5130452115%_
                                                           _%e5130552118%_
                                                           _%hd5130652122%_
                                                           _%tl5130752125%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))))
                          (if (gx#stx-null? _%tl5131352145%_)
                              (if (gx#stx-pair/null? _%tl5130452115%_)
                                  (let ((_%__splice9238192382%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5130452115%_
                                          '0)))
                                    (let ((_%tl5135352000%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9238192382%_
                                              '1)))
                                          (_%target5135151997%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9238192382%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5135352000%_)
                                          (_%__match9254792548%_
                                           _%e5129952098%_
                                           _%hd5130052102%_
                                           _%tl5130152105%_
                                           _%e5130252108%_
                                           _%hd5130352112%_
                                           _%tl5130452115%_
                                           _%e5130552118%_
                                           _%hd5130652122%_
                                           _%tl5130752125%_
                                           _%e5130852128%_
                                           _%hd5130952132%_
                                           _%tl5131052135%_
                                           _%e5131152138%_
                                           _%hd5131252142%_
                                           _%tl5131352145%_
                                           _%__splice9238192382%_
                                           _%target5135151997%_
                                           _%tl5135352000%_)
                                          (if (gx#stx-pair? _%hd5130652122%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5130652122%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))))
                                  (if (gx#stx-pair? _%hd5130652122%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5130652122%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                              (if (gx#identifier? _%hd5130952132%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g98896_|
                                       _%hd5130952132%_)
                                      (if (gx#stx-pair? _%tl5131352145%_)
                                          (let ((_%e5140751717%_
                                                 (gx#syntax-e
                                                  _%tl5131352145%_)))
                                            (let ((_%tl5140951724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5140751717%_)))
                                                  (_%hd5140851721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5140751717%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5140951724%_)
                                                  (let ((_%e5141051727%_
                                                         (gx#syntax-e
                                                          _%tl5140951724%_)))
                                                    (let ((_%tl5141251734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5141051727%_)))
                                                          (_%hd5141151731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5141051727%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5141251734%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5130452115%_)
                                                              (let ((_%__splice9238992390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5130452115%_
                              '0)))
                        (let ((_%tl5141551740%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9238992390%_ '1)))
                              (_%target5141351737%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9238992390%_ '0))))
                          (if (gx#stx-null? _%tl5141551740%_)
                              (_%__match9264792648%_
                               _%e5129952098%_
                               _%hd5130052102%_
                               _%tl5130152105%_
                               _%e5130252108%_
                               _%hd5130352112%_
                               _%tl5130452115%_
                               _%e5130552118%_
                               _%hd5130652122%_
                               _%tl5130752125%_
                               _%e5130852128%_
                               _%hd5130952132%_
                               _%tl5131052135%_
                               _%e5131152138%_
                               _%hd5131252142%_
                               _%tl5131352145%_
                               _%e5140751717%_
                               _%hd5140851721%_
                               _%tl5140951724%_
                               _%e5141051727%_
                               _%hd5141151731%_
                               _%tl5141251734%_
                               _%__splice9238992390%_
                               _%target5141351737%_
                               _%tl5141551740%_)
                              (if (gx#stx-pair? _%hd5130652122%_)
                                  (let ((_%e5143551587%_
                                         (gx#syntax-e _%hd5130652122%_)))
                                    (let ((_%tl5143751594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5143551587%_)))
                                          (_%hd5143651591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5143551587%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))))
                      (if (gx#stx-pair? _%hd5130652122%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5130652122%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                  (if (gx#stx-pair? _%hd5130652122%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5130652122%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (if (gx#stx-pair/null? _%tl5130452115%_)
                              (let ((_%__splice9239392394%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5130452115%_
                                      '0)))
                                (let ((_%tl5144051600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '1)))
                                      (_%target5143851597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5144051600%_)
                                      (_%__match9267992680%_
                                       _%e5129952098%_
                                       _%hd5130052102%_
                                       _%tl5130152105%_
                                       _%e5130252108%_
                                       _%hd5130352112%_
                                       _%tl5130452115%_
                                       _%e5130552118%_
                                       _%hd5130652122%_
                                       _%tl5130752125%_
                                       _%e5143551587%_
                                       _%hd5143651591%_
                                       _%tl5143751594%_
                                       _%__splice9239392394%_
                                       _%target5143851597%_
                                       _%tl5144051600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5130652122%_)
                                                      (let ((_%e5143551587%_
                                                             (gx#syntax-e
                                                              _%hd5130652122%_)))
                                                        (let ((_%tl5143751594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5143551587%_)))
                      (_%hd5143651591%_
                       (let () (declare (not safe)) (##car _%e5143551587%_))))
                  (if (gx#stx-pair/null? _%tl5130452115%_)
                      (let ((_%__splice9239392394%_
                             (gx#syntax-split-splice->vector
                              _%tl5130452115%_
                              '0)))
                        (let ((_%tl5144051600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '1)))
                              (_%target5143851597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '0))))
                          (if (gx#stx-null? _%tl5144051600%_)
                              (_%__match9267992680%_
                               _%e5129952098%_
                               _%hd5130052102%_
                               _%tl5130152105%_
                               _%e5130252108%_
                               _%hd5130352112%_
                               _%tl5130452115%_
                               _%e5130552118%_
                               _%hd5130652122%_
                               _%tl5130752125%_
                               _%e5143551587%_
                               _%hd5143651591%_
                               _%tl5143751594%_
                               _%__splice9239392394%_
                               _%target5143851597%_
                               _%tl5144051600%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5130652122%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5130652122%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5130452115%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5130452115%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5129952098%_
                       _%hd5130052102%_
                       _%tl5130152105%_
                       _%e5130252108%_
                       _%hd5130352112%_
                       _%tl5130452115%_
                       _%e5130552118%_
                       _%hd5130652122%_
                       _%tl5130752125%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                      (if (gx#stx-pair? _%hd5130652122%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5130652122%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5130452115%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5130452115%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5129952098%_
                                                           _%hd5130052102%_
                                                           _%tl5130152105%_
                                                           _%e5130252108%_
                                                           _%hd5130352112%_
                                                           _%tl5130452115%_
                                                           _%e5130552118%_
                                                           _%hd5130652122%_
                                                           _%tl5130752125%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                  (if (gx#stx-pair? _%hd5130652122%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5130652122%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5130452115%_)
                                              (let ((_%__splice9239392394%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5130452115%_
                                                      '0)))
                                                (let ((_%tl5144051600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '1)))
                                                      (_%target5143851597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5144051600%_)
                                                      (_%__match9267992680%_
                                                       _%e5129952098%_
                                                       _%hd5130052102%_
                                                       _%tl5130152105%_
                                                       _%e5130252108%_
                                                       _%hd5130352112%_
                                                       _%tl5130452115%_
                                                       _%e5130552118%_
                                                       _%hd5130652122%_
                                                       _%tl5130752125%_
                                                       _%e5143551587%_
                                                       _%hd5143651591%_
                                                       _%tl5143751594%_
                                                       _%__splice9239392394%_
                                                       _%target5143851597%_
                                                       _%tl5144051600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125951468%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))))
                   (_%__match9244592446%_
                    (lambda (_%e5126652272%_
                             _%hd5126752276%_
                             _%tl5126852279%_
                             _%e5126952282%_
                             _%hd5127052286%_
                             _%tl5127152289%_
                             _%e5127252292%_
                             _%hd5127352296%_
                             _%tl5127452299%_
                             _%e5127552302%_
                             _%hd5127652306%_
                             _%tl5127752309%_
                             _%e5127852312%_
                             _%hd5127952316%_
                             _%tl5128052319%_
                             _%e5128152322%_
                             _%hd5128252326%_
                             _%tl5128352329%_
                             _%__splice9237392374%_
                             _%target5128452332%_
                             _%tl5128652335%_)
                      (letrec ((_%loop5128752338%_
                                (lambda (_%hd5128552342%_ _%body5129152345%_)
                                  (if (gx#stx-pair? _%hd5128552342%_)
                                      (let ((_%e5128852347%_
                                             (gx#syntax-e _%hd5128552342%_)))
                                        (let ((_%lp-tl5129052354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5128852347%_)))
                                              (_%lp-hd5128952351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5128852347%_))))
                                          (_%loop5128752338%_
                                           _%lp-tl5129052354%_
                                           (cons _%lp-hd5128952351%_
                                                 _%body5129152345%_))))
                                      (let ((_%body5129252357%_
                                             (reverse _%body5129152345%_)))
                                        (let ((_%g5126152360%_
                                               _%body5129252357%_)
                                              (_%g5126252362%_
                                               _%hd5128252326%_)
                                              (_%g5126352363%_
                                               _%hd5127952316%_)
                                              (_%g5126452364%_
                                               _%hd5127652306%_)
                                              (_%g5126552365%_
                                               _%hd5127352296%_))
                                          (if (and (gx#identifier?
                                                    _%g5126552365%_)
                                                   (gx#identifier?
                                                    _%g5126352363%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5126352363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5126352363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5126352363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5126352363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5126352363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9237192372%_
                                               _%g5126152360%_
                                               _%g5126252362%_
                                               _%g5126352363%_
                                               _%g5126452364%_
                                               _%g5126552365%_)
                                              (_%__match9247592476%_
                                               _%e5126652272%_
                                               _%hd5126752276%_
                                               _%tl5126852279%_
                                               _%e5126952282%_
                                               _%hd5127052286%_
                                               _%tl5127152289%_
                                               _%e5127252292%_
                                               _%hd5127352296%_
                                               _%tl5127452299%_
                                               _%e5127552302%_
                                               _%hd5127652306%_
                                               _%tl5127752309%_
                                               _%e5127852312%_
                                               _%hd5127952316%_
                                               _%tl5128052319%_))))))))
                        (_%loop5128752338%_ _%target5128452332%_ '())))))
              (if (gx#stx-pair? _%__stx9236892369%_)
                  (let ((_%e5126652272%_ (gx#syntax-e _%__stx9236892369%_)))
                    (let ((_%tl5126852279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5126652272%_)))
                          (_%hd5126752276%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5126652272%_))))
                      (if (gx#stx-pair? _%tl5126852279%_)
                          (let ((_%e5126952282%_
                                 (gx#syntax-e _%tl5126852279%_)))
                            (let ((_%tl5127152289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5126952282%_)))
                                  (_%hd5127052286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5126952282%_))))
                              (if (gx#stx-pair? _%hd5127052286%_)
                                  (let ((_%e5127252292%_
                                         (gx#syntax-e _%hd5127052286%_)))
                                    (let ((_%tl5127452299%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5127252292%_)))
                                          (_%hd5127352296%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5127252292%_))))
                                      (if (gx#stx-pair? _%tl5127452299%_)
                                          (let ((_%e5127552302%_
                                                 (gx#syntax-e
                                                  _%tl5127452299%_)))
                                            (let ((_%tl5127752309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5127552302%_)))
                                                  (_%hd5127652306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5127552302%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5127752309%_)
                                                  (let ((_%e5127852312%_
                                                         (gx#syntax-e
                                                          _%tl5127752309%_)))
                                                    (let ((_%tl5128052319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5127852312%_)))
                                                          (_%hd5127952316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5127852312%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5128052319%_)
                                                          (let ((_%e5128152322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5128052319%_)))
                    (let ((_%tl5128352329%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5128152322%_)))
                          (_%hd5128252326%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5128152322%_))))
                      (if (gx#stx-null? _%tl5128352329%_)
                          (if (gx#stx-pair/null? _%tl5127152289%_)
                              (let ((_%__splice9237392374%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5127152289%_
                                      '0)))
                                (let ((_%tl5128652335%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9237392374%_
                                          '1)))
                                      (_%target5128452332%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9237392374%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5128652335%_)
                                      (_%__match9244592446%_
                                       _%e5126652272%_
                                       _%hd5126752276%_
                                       _%tl5126852279%_
                                       _%e5126952282%_
                                       _%hd5127052286%_
                                       _%tl5127152289%_
                                       _%e5127252292%_
                                       _%hd5127352296%_
                                       _%tl5127452299%_
                                       _%e5127552302%_
                                       _%hd5127652306%_
                                       _%tl5127752309%_
                                       _%e5127852312%_
                                       _%hd5127952316%_
                                       _%tl5128052319%_
                                       _%e5128152322%_
                                       _%hd5128252326%_
                                       _%tl5128352329%_
                                       _%__splice9237392374%_
                                       _%target5128452332%_
                                       _%tl5128652335%_)
                                      (if (gx#stx-pair? _%hd5127352296%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5127352296%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))))
                              (if (gx#stx-pair? _%hd5127352296%_)
                                  (let ((_%e5143551587%_
                                         (gx#syntax-e _%hd5127352296%_)))
                                    (let ((_%tl5143751594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5143551587%_)))
                                          (_%hd5143651591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5143551587%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                          (if (gx#identifier? _%hd5127952316%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g98897_|
                                   _%hd5127952316%_)
                                  (if (gx#stx-pair? _%tl5128352329%_)
                                      (let ((_%e5131752158%_
                                             (gx#syntax-e _%tl5128352329%_)))
                                        (let ((_%tl5131952165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5131752158%_)))
                                              (_%hd5131852162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5131752158%_))))
                                          (if (gx#stx-pair? _%tl5131952165%_)
                                              (let ((_%e5132052168%_
                                                     (gx#syntax-e
                                                      _%tl5131952165%_)))
                                                (let ((_%tl5132252175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5132052168%_)))
                                                      (_%hd5132152172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5132052168%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5132252175%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5127152289%_)
                                                          (let ((_%__splice9237792378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5127152289%_ '0)))
                    (let ((_%tl5132552181%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9237792378%_ '1)))
                          (_%target5132352178%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9237792378%_ '0))))
                      (if (gx#stx-null? _%tl5132552181%_)
                          (_%__match9250792508%_
                           _%e5126652272%_
                           _%hd5126752276%_
                           _%tl5126852279%_
                           _%e5126952282%_
                           _%hd5127052286%_
                           _%tl5127152289%_
                           _%e5127252292%_
                           _%hd5127352296%_
                           _%tl5127452299%_
                           _%e5127552302%_
                           _%hd5127652306%_
                           _%tl5127752309%_
                           _%e5127852312%_
                           _%hd5127952316%_
                           _%tl5128052319%_
                           _%e5128152322%_
                           _%hd5128252326%_
                           _%tl5128352329%_
                           _%e5131752158%_
                           _%hd5131852162%_
                           _%tl5131952165%_
                           _%e5132052168%_
                           _%hd5132152172%_
                           _%tl5132252175%_
                           _%__splice9237792378%_
                           _%target5132352178%_
                           _%tl5132552181%_)
                          (if (gx#stx-pair? _%hd5127352296%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5127352296%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_))))))
                  (if (gx#stx-pair? _%hd5127352296%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
              (if (gx#stx-pair? _%hd5127352296%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5127152289%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5127152289%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5126652272%_
                                   _%hd5126752276%_
                                   _%tl5126852279%_
                                   _%e5126952282%_
                                   _%hd5127052286%_
                                   _%tl5127152289%_
                                   _%e5127252292%_
                                   _%hd5127352296%_
                                   _%tl5127452299%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5127652306%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g98896_|
                                                       _%hd5127652306%_)
                                                      (if (gx#stx-null?
                                                           _%tl5131952165%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5127152289%_)
                                                              (let ((_%__splice9238992390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5127152289%_
                              '0)))
                        (let ((_%tl5141551740%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9238992390%_ '1)))
                              (_%target5141351737%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9238992390%_ '0))))
                          (if (gx#stx-null? _%tl5141551740%_)
                              (_%__match9264792648%_
                               _%e5126652272%_
                               _%hd5126752276%_
                               _%tl5126852279%_
                               _%e5126952282%_
                               _%hd5127052286%_
                               _%tl5127152289%_
                               _%e5127252292%_
                               _%hd5127352296%_
                               _%tl5127452299%_
                               _%e5127552302%_
                               _%hd5127652306%_
                               _%tl5127752309%_
                               _%e5127852312%_
                               _%hd5127952316%_
                               _%tl5128052319%_
                               _%e5128152322%_
                               _%hd5128252326%_
                               _%tl5128352329%_
                               _%e5131752158%_
                               _%hd5131852162%_
                               _%tl5131952165%_
                               _%__splice9238992390%_
                               _%target5141351737%_
                               _%tl5141551740%_)
                              (if (gx#stx-pair? _%hd5127352296%_)
                                  (let ((_%e5143551587%_
                                         (gx#syntax-e _%hd5127352296%_)))
                                    (let ((_%tl5143751594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5143551587%_)))
                                          (_%hd5143651591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5143551587%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))))
                      (if (gx#stx-pair? _%hd5127352296%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5127352296%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                  (if (gx#stx-pair? _%hd5127352296%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (if (gx#stx-pair/null? _%tl5127152289%_)
                              (let ((_%__splice9239392394%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5127152289%_
                                      '0)))
                                (let ((_%tl5144051600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '1)))
                                      (_%target5143851597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9239392394%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5144051600%_)
                                      (_%__match9267992680%_
                                       _%e5126652272%_
                                       _%hd5126752276%_
                                       _%tl5126852279%_
                                       _%e5126952282%_
                                       _%hd5127052286%_
                                       _%tl5127152289%_
                                       _%e5127252292%_
                                       _%hd5127352296%_
                                       _%tl5127452299%_
                                       _%e5143551587%_
                                       _%hd5143651591%_
                                       _%tl5143751594%_
                                       _%__splice9239392394%_
                                       _%target5143851597%_
                                       _%tl5144051600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
              (if (gx#stx-pair? _%hd5127352296%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5127152289%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5127152289%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5126652272%_
                                   _%hd5126752276%_
                                   _%tl5126852279%_
                                   _%e5126952282%_
                                   _%hd5127052286%_
                                   _%tl5127152289%_
                                   _%e5127252292%_
                                   _%hd5127352296%_
                                   _%tl5127452299%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5127352296%_)
                                                      (let ((_%e5143551587%_
                                                             (gx#syntax-e
                                                              _%hd5127352296%_)))
                                                        (let ((_%tl5143751594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5143551587%_)))
                      (_%hd5143651591%_
                       (let () (declare (not safe)) (##car _%e5143551587%_))))
                  (if (gx#stx-pair/null? _%tl5127152289%_)
                      (let ((_%__splice9239392394%_
                             (gx#syntax-split-splice->vector
                              _%tl5127152289%_
                              '0)))
                        (let ((_%tl5144051600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '1)))
                              (_%target5143851597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '0))))
                          (if (gx#stx-null? _%tl5144051600%_)
                              (_%__match9267992680%_
                               _%e5126652272%_
                               _%hd5126752276%_
                               _%tl5126852279%_
                               _%e5126952282%_
                               _%hd5127052286%_
                               _%tl5127152289%_
                               _%e5127252292%_
                               _%hd5127352296%_
                               _%tl5127452299%_
                               _%e5143551587%_
                               _%hd5143651591%_
                               _%tl5143751594%_
                               _%__splice9239392394%_
                               _%target5143851597%_
                               _%tl5144051600%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5127352296%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5127352296%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5127152289%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5127152289%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5126652272%_
                                                           _%hd5126752276%_
                                                           _%tl5126852279%_
                                                           _%e5126952282%_
                                                           _%hd5127052286%_
                                                           _%tl5127152289%_
                                                           _%e5127252292%_
                                                           _%hd5127352296%_
                                                           _%tl5127452299%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                  (if (gx#identifier? _%hd5127652306%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g98896_|
                                           _%hd5127652306%_)
                                          (if (gx#stx-pair? _%tl5128352329%_)
                                              (let ((_%e5141051727%_
                                                     (gx#syntax-e
                                                      _%tl5128352329%_)))
                                                (let ((_%tl5141251734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5141051727%_)))
                                                      (_%hd5141151731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5141051727%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5141251734%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5127152289%_)
                                                          (let ((_%__splice9238992390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5127152289%_ '0)))
                    (let ((_%tl5141551740%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9238992390%_ '1)))
                          (_%target5141351737%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9238992390%_ '0))))
                      (if (gx#stx-null? _%tl5141551740%_)
                          (_%__match9264792648%_
                           _%e5126652272%_
                           _%hd5126752276%_
                           _%tl5126852279%_
                           _%e5126952282%_
                           _%hd5127052286%_
                           _%tl5127152289%_
                           _%e5127252292%_
                           _%hd5127352296%_
                           _%tl5127452299%_
                           _%e5127552302%_
                           _%hd5127652306%_
                           _%tl5127752309%_
                           _%e5127852312%_
                           _%hd5127952316%_
                           _%tl5128052319%_
                           _%e5128152322%_
                           _%hd5128252326%_
                           _%tl5128352329%_
                           _%e5141051727%_
                           _%hd5141151731%_
                           _%tl5141251734%_
                           _%__splice9238992390%_
                           _%target5141351737%_
                           _%tl5141551740%_)
                          (if (gx#stx-pair? _%hd5127352296%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5127352296%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_))))))
                  (if (gx#stx-pair? _%hd5127352296%_)
                      (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                        (let ((_%tl5143751594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143551587%_)))
                              (_%hd5143651591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143551587%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
              (if (gx#stx-pair? _%hd5127352296%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (if (gx#stx-pair/null? _%tl5127152289%_)
                          (let ((_%__splice9239392394%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5127152289%_
                                  '0)))
                            (let ((_%tl5144051600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9239392394%_ '1)))
                                  (_%target5143851597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9239392394%_
                                      '0))))
                              (if (gx#stx-null? _%tl5144051600%_)
                                  (_%__match9267992680%_
                                   _%e5126652272%_
                                   _%hd5126752276%_
                                   _%tl5126852279%_
                                   _%e5126952282%_
                                   _%hd5127052286%_
                                   _%tl5127152289%_
                                   _%e5127252292%_
                                   _%hd5127352296%_
                                   _%tl5127452299%_
                                   _%e5143551587%_
                                   _%hd5143651591%_
                                   _%tl5143751594%_
                                   _%__splice9239392394%_
                                   _%target5143851597%_
                                   _%tl5144051600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5127352296%_)
                                                  (let ((_%e5143551587%_
                                                         (gx#syntax-e
                                                          _%hd5127352296%_)))
                                                    (let ((_%tl5143751594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5143551587%_)))
                                                          (_%hd5143651591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5143551587%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5127152289%_)
                                                          (let ((_%__splice9239392394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5127152289%_ '0)))
                    (let ((_%tl5144051600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '1)))
                          (_%target5143851597%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9239392394%_ '0))))
                      (if (gx#stx-null? _%tl5144051600%_)
                          (_%__match9267992680%_
                           _%e5126652272%_
                           _%hd5126752276%_
                           _%tl5126852279%_
                           _%e5126952282%_
                           _%hd5127052286%_
                           _%tl5127152289%_
                           _%e5127252292%_
                           _%hd5127352296%_
                           _%tl5127452299%_
                           _%e5143551587%_
                           _%hd5143651591%_
                           _%tl5143751594%_
                           _%__splice9239392394%_
                           _%target5143851597%_
                           _%tl5144051600%_)
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_))))
                                          (if (gx#stx-pair? _%hd5127352296%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5127352296%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5127152289%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5127152289%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5126652272%_
                       _%hd5126752276%_
                       _%tl5126852279%_
                       _%e5126952282%_
                       _%hd5127052286%_
                       _%tl5127152289%_
                       _%e5127252292%_
                       _%hd5127352296%_
                       _%tl5127452299%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                      (if (gx#stx-pair? _%hd5127352296%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5127352296%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5127152289%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5127152289%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5126652272%_
                                                           _%hd5126752276%_
                                                           _%tl5126852279%_
                                                           _%e5126952282%_
                                                           _%hd5127052286%_
                                                           _%tl5127152289%_
                                                           _%e5127252292%_
                                                           _%hd5127352296%_
                                                           _%tl5127452299%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                              (if (gx#identifier? _%hd5127652306%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g98896_|
                                       _%hd5127652306%_)
                                      (if (gx#stx-pair? _%tl5128352329%_)
                                          (let ((_%e5141051727%_
                                                 (gx#syntax-e
                                                  _%tl5128352329%_)))
                                            (let ((_%tl5141251734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5141051727%_)))
                                                  (_%hd5141151731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5141051727%_))))
                                              (if (gx#stx-null?
                                                   _%tl5141251734%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5127152289%_)
                                                      (let ((_%__splice9238992390%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5127152289%_
                                                              '0)))
                                                        (let ((_%tl5141551740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9238992390%_ '1)))
                      (_%target5141351737%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9238992390%_ '0))))
                  (if (gx#stx-null? _%tl5141551740%_)
                      (_%__match9264792648%_
                       _%e5126652272%_
                       _%hd5126752276%_
                       _%tl5126852279%_
                       _%e5126952282%_
                       _%hd5127052286%_
                       _%tl5127152289%_
                       _%e5127252292%_
                       _%hd5127352296%_
                       _%tl5127452299%_
                       _%e5127552302%_
                       _%hd5127652306%_
                       _%tl5127752309%_
                       _%e5127852312%_
                       _%hd5127952316%_
                       _%tl5128052319%_
                       _%e5128152322%_
                       _%hd5128252326%_
                       _%tl5128352329%_
                       _%e5141051727%_
                       _%hd5141151731%_
                       _%tl5141251734%_
                       _%__splice9238992390%_
                       _%target5141351737%_
                       _%tl5141551740%_)
                      (if (gx#stx-pair? _%hd5127352296%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5127352296%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                          (let () (declare (not safe)) (_%g5125951468%_))))))
              (if (gx#stx-pair? _%hd5127352296%_)
                  (let ((_%e5143551587%_ (gx#syntax-e _%hd5127352296%_)))
                    (let ((_%tl5143751594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5143551587%_)))
                          (_%hd5143651591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5143551587%_))))
                      (let () (declare (not safe)) (_%g5125951468%_))))
                  (let () (declare (not safe)) (_%g5125951468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5127352296%_)
                                                      (let ((_%e5143551587%_
                                                             (gx#syntax-e
                                                              _%hd5127352296%_)))
                                                        (let ((_%tl5143751594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5143551587%_)))
                      (_%hd5143651591%_
                       (let () (declare (not safe)) (##car _%e5143551587%_))))
                  (if (gx#stx-pair/null? _%tl5127152289%_)
                      (let ((_%__splice9239392394%_
                             (gx#syntax-split-splice->vector
                              _%tl5127152289%_
                              '0)))
                        (let ((_%tl5144051600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '1)))
                              (_%target5143851597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '0))))
                          (if (gx#stx-null? _%tl5144051600%_)
                              (_%__match9267992680%_
                               _%e5126652272%_
                               _%hd5126752276%_
                               _%tl5126852279%_
                               _%e5126952282%_
                               _%hd5127052286%_
                               _%tl5127152289%_
                               _%e5127252292%_
                               _%hd5127352296%_
                               _%tl5127452299%_
                               _%e5143551587%_
                               _%hd5143651591%_
                               _%tl5143751594%_
                               _%__splice9239392394%_
                               _%target5143851597%_
                               _%tl5144051600%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5127352296%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5127352296%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5127152289%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5127152289%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5126652272%_
                       _%hd5126752276%_
                       _%tl5126852279%_
                       _%e5126952282%_
                       _%hd5127052286%_
                       _%tl5127152289%_
                       _%e5127252292%_
                       _%hd5127352296%_
                       _%tl5127452299%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))
                                      (if (gx#stx-pair? _%hd5127352296%_)
                                          (let ((_%e5143551587%_
                                                 (gx#syntax-e
                                                  _%hd5127352296%_)))
                                            (let ((_%tl5143751594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5143551587%_)))
                                                  (_%hd5143651591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5143551587%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5127152289%_)
                                                  (let ((_%__splice9239392394%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5127152289%_
                                                          '0)))
                                                    (let ((_%tl5144051600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '1)))
                                                          (_%target5143851597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9239392394%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5144051600%_)
                                                          (_%__match9267992680%_
                                                           _%e5126652272%_
                                                           _%hd5126752276%_
                                                           _%tl5126852279%_
                                                           _%e5126952282%_
                                                           _%hd5127052286%_
                                                           _%tl5127152289%_
                                                           _%e5127252292%_
                                                           _%hd5127352296%_
                                                           _%tl5127452299%_
                                                           _%e5143551587%_
                                                           _%hd5143651591%_
                                                           _%tl5143751594%_
                                                           _%__splice9239392394%_
                                                           _%target5143851597%_
                                                           _%tl5144051600%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5125951468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                  (if (gx#stx-pair? _%hd5127352296%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5127352296%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5127152289%_)
                                              (let ((_%__splice9239392394%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5127152289%_
                                                      '0)))
                                                (let ((_%tl5144051600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '1)))
                                                      (_%target5143851597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9239392394%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5144051600%_)
                                                      (_%__match9267992680%_
                                                       _%e5126652272%_
                                                       _%hd5126752276%_
                                                       _%tl5126852279%_
                                                       _%e5126952282%_
                                                       _%hd5127052286%_
                                                       _%tl5127152289%_
                                                       _%e5127252292%_
                                                       _%hd5127352296%_
                                                       _%tl5127452299%_
                                                       _%e5143551587%_
                                                       _%hd5143651591%_
                                                       _%tl5143751594%_
                                                       _%__splice9239392394%_
                                                       _%target5143851597%_
                                                       _%tl5144051600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5125951468%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))))
                  (if (gx#stx-null? _%tl5128052319%_)
                      (if (gx#stx-pair/null? _%tl5127152289%_)
                          (let ((_%__splice9238192382%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5127152289%_
                                  '0)))
                            (let ((_%tl5135352000%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9238192382%_ '1)))
                                  (_%target5135151997%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9238192382%_
                                      '0))))
                              (if (gx#stx-null? _%tl5135352000%_)
                                  (_%__match9254792548%_
                                   _%e5126652272%_
                                   _%hd5126752276%_
                                   _%tl5126852279%_
                                   _%e5126952282%_
                                   _%hd5127052286%_
                                   _%tl5127152289%_
                                   _%e5127252292%_
                                   _%hd5127352296%_
                                   _%tl5127452299%_
                                   _%e5127552302%_
                                   _%hd5127652306%_
                                   _%tl5127752309%_
                                   _%e5127852312%_
                                   _%hd5127952316%_
                                   _%tl5128052319%_
                                   _%__splice9238192382%_
                                   _%target5135151997%_
                                   _%tl5135352000%_)
                                  (if (gx#stx-pair? _%hd5127352296%_)
                                      (let ((_%e5143551587%_
                                             (gx#syntax-e _%hd5127352296%_)))
                                        (let ((_%tl5143751594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5143551587%_)))
                                              (_%hd5143651591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5143551587%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))
                          (if (gx#stx-pair? _%hd5127352296%_)
                              (let ((_%e5143551587%_
                                     (gx#syntax-e _%hd5127352296%_)))
                                (let ((_%tl5143751594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5143551587%_)))
                                      (_%hd5143651591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5143551587%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_))))
                              (let () (declare (not safe)) (_%g5125951468%_))))
                      (if (gx#stx-pair? _%hd5127352296%_)
                          (let ((_%e5143551587%_
                                 (gx#syntax-e _%hd5127352296%_)))
                            (let ((_%tl5143751594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5143551587%_)))
                                  (_%hd5143651591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5143551587%_))))
                              (if (gx#stx-pair/null? _%tl5127152289%_)
                                  (let ((_%__splice9239392394%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5127152289%_
                                          '0)))
                                    (let ((_%tl5144051600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '1)))
                                          (_%target5143851597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9239392394%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5144051600%_)
                                          (_%__match9267992680%_
                                           _%e5126652272%_
                                           _%hd5126752276%_
                                           _%tl5126852279%_
                                           _%e5126952282%_
                                           _%hd5127052286%_
                                           _%tl5127152289%_
                                           _%e5127252292%_
                                           _%hd5127352296%_
                                           _%tl5127452299%_
                                           _%e5143551587%_
                                           _%hd5143651591%_
                                           _%tl5143751594%_
                                           _%__splice9239392394%_
                                           _%target5143851597%_
                                           _%tl5144051600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5125951468%_)))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5127352296%_)
                                                      (let ((_%e5143551587%_
                                                             (gx#syntax-e
                                                              _%hd5127352296%_)))
                                                        (let ((_%tl5143751594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5143551587%_)))
                      (_%hd5143651591%_
                       (let () (declare (not safe)) (##car _%e5143551587%_))))
                  (if (gx#stx-pair/null? _%tl5127152289%_)
                      (let ((_%__splice9239392394%_
                             (gx#syntax-split-splice->vector
                              _%tl5127152289%_
                              '0)))
                        (let ((_%tl5144051600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '1)))
                              (_%target5143851597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9239392394%_ '0))))
                          (if (gx#stx-null? _%tl5144051600%_)
                              (_%__match9267992680%_
                               _%e5126652272%_
                               _%hd5126752276%_
                               _%tl5126852279%_
                               _%e5126952282%_
                               _%hd5127052286%_
                               _%tl5127152289%_
                               _%e5127252292%_
                               _%hd5127352296%_
                               _%tl5127452299%_
                               _%e5143551587%_
                               _%hd5143651591%_
                               _%tl5143751594%_
                               _%__splice9239392394%_
                               _%target5143851597%_
                               _%tl5144051600%_)
                              (let ()
                                (declare (not safe))
                                (_%g5125951468%_)))))
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5127352296%_)
                                              (let ((_%e5143551587%_
                                                     (gx#syntax-e
                                                      _%hd5127352296%_)))
                                                (let ((_%tl5143751594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5143551587%_)))
                                                      (_%hd5143651591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5143551587%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5127152289%_)
                                                      (let ((_%__splice9239392394%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5127152289%_
                                                              '0)))
                                                        (let ((_%tl5144051600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '1)))
                      (_%target5143851597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9239392394%_ '0))))
                  (if (gx#stx-null? _%tl5144051600%_)
                      (_%__match9267992680%_
                       _%e5126652272%_
                       _%hd5126752276%_
                       _%tl5126852279%_
                       _%e5126952282%_
                       _%hd5127052286%_
                       _%tl5127152289%_
                       _%e5127252292%_
                       _%hd5127352296%_
                       _%tl5127452299%_
                       _%e5143551587%_
                       _%hd5143651591%_
                       _%tl5143751594%_
                       _%__splice9239392394%_
                       _%target5143851597%_
                       _%tl5144051600%_)
                      (let () (declare (not safe)) (_%g5125951468%_)))))
              (let () (declare (not safe)) (_%g5125951468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5125951468%_))))))
                                  (if (gx#stx-null? _%hd5127052286%_)
                                      (if (gx#stx-pair/null? _%tl5127152289%_)
                                          (let ((_%__splice9239792398%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5127152289%_
                                                  '0)))
                                            (let ((_%tl5145651498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9239792398%_
                                                      '1)))
                                                  (_%target5145451495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9239792398%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5145651498%_)
                                                  (_%__match9270192702%_
                                                   _%e5126652272%_
                                                   _%hd5126752276%_
                                                   _%tl5126852279%_
                                                   _%e5126952282%_
                                                   _%hd5127052286%_
                                                   _%tl5127152289%_
                                                   _%__splice9239792398%_
                                                   _%target5145451495%_
                                                   _%tl5145651498%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5125951468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5125951468%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5125951468%_))))))
                          (let () (declare (not safe)) (_%g5125951468%_)))))
                  (let () (declare (not safe)) (_%g5125951468%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52428%_)
        (let* ((_%g5243252466%_
                (lambda (_%g5243352462%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5243352462%_)))
               (_%g5243152587%_
                (lambda (_%g5243352470%_)
                  (if (gx#stx-pair? _%g5243352470%_)
                      (let ((_%e5243752473%_ (gx#syntax-e _%g5243352470%_)))
                        (let ((_%hd5243852477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5243752473%_)))
                              (_%tl5243952480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5243752473%_))))
                          (if (gx#stx-pair? _%tl5243952480%_)
                              (let ((_%e5244052483%_
                                     (gx#syntax-e _%tl5243952480%_)))
                                (let ((_%hd5244152487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5244052483%_)))
                                      (_%tl5244252490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5244052483%_))))
                                  (if (gx#stx-pair? _%hd5244152487%_)
                                      (let ((_%e5244352493%_
                                             (gx#syntax-e _%hd5244152487%_)))
                                        (let ((_%hd5244452497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5244352493%_)))
                                              (_%tl5244552500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5244352493%_))))
                                          (if (gx#stx-pair? _%tl5244552500%_)
                                              (let ((_%e5244652503%_
                                                     (gx#syntax-e
                                                      _%tl5244552500%_)))
                                                (let ((_%hd5244752507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5244652503%_)))
                                                      (_%tl5244852510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5244652503%_))))
                                                  (if (gx#identifier?
                                                       _%hd5244752507%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g98898_|
                                                           _%hd5244752507%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5244852510%_)
                                                              (let ((_%e5244952513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5244852510%_)))
                        (let ((_%hd5245052517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5244952513%_)))
                              (_%tl5245152520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5244952513%_))))
                          (if (gx#stx-null? _%tl5245152520%_)
                              (if (gx#stx-pair/null? _%tl5244252490%_)
                                  (let ((_g98899_
                                         (gx#syntax-split-splice
                                          _%tl5244252490%_
                                          '0)))
                                    (begin
                                      (let ((_g98900_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g98899_)
                                                   (##values-length _g98899_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g98900_ 2)))
                                            (error "Context expects 2 values"
                                                   _g98900_)))
                                      (let ((_%target5245252523%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g98899_ 0)))
                                            (_%tl5245452526%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g98899_ 1))))
                                        (if (gx#stx-null? _%tl5245452526%_)
                                            (letrec ((_%loop5245552529%_
                                                      (lambda (_%hd5245352533%_
                                                               _%body5245952536%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5245352533%_)
                                                            (let ((_%e5245652538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5245352533%_)))
                      (let ((_%lp-hd5245752542%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5245652538%_)))
                            (_%lp-tl5245852545%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5245652538%_))))
                        (_%loop5245552529%_
                         _%lp-tl5245852545%_
                         (cons _%lp-hd5245752542%_ _%body5245952536%_))))
                    (let ((_%body5246052548%_ (reverse _%body5245952536%_)))
                      ((lambda (_%g5243452551%_
                                _%g5243552553%_
                                _%g5243652554%_)
                         (if (gx#identifier? _%g5243652554%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5243552553%_
                                               (cons _%g5243652554%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5257852581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5257952584%_)
                            (cons _%g5257852581%_ _%g5257952584%_))
                          '()
                          _%g5243452551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5243652554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5243552553%_ (cons _%g5243652554%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5243252466%_ _%g5243352470%_)))
                       _%body5246052548%_
                       _%hd5245052517%_
                       _%hd5244452497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5245552529%_
                                               _%target5245252523%_
                                               '()))
                                            (_%g5243252466%_
                                             _%g5243352470%_)))))
                                  (_%g5243252466%_ _%g5243352470%_))
                              (_%g5243252466%_ _%g5243352470%_))))
                      (_%g5243252466%_ _%g5243352470%_))
                  (_%g5243252466%_ _%g5243352470%_))
              (_%g5243252466%_ _%g5243352470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5243252466%_
                                               _%g5243352470%_))))
                                      (_%g5243252466%_ _%g5243352470%_))))
                              (_%g5243252466%_ _%g5243352470%_))))
                      (_%g5243252466%_ _%g5243352470%_)))))
          (_%g5243152587%_ _%$stx52428%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53151%_ _%slot53153%_)
        (let ((_%$e53155%_
               (let ((__obj98702 _%klass53151%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj98702
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj98702 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj98702
                      'slot-types)))))
          (if _%$e53155%_
              ((lambda (_%slot-types53159%_)
                 (agetq _%slot53153%_ _%slot-types53159%_))
               _%$e53155%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53132%_ _%slot53134%_)
        (let ((_%$e53136%_
               (let ((__obj98703 _%klass53132%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj98703
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj98703 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj98703
                      'slot-defaults)))))
          (if _%$e53136%_
              ((lambda (_%slot-defaults53140%_)
                 (let ((_%$e53143%_
                        (agetq _%slot53134%_ _%slot-defaults53140%_)))
                   (if _%$e53143%_
                       (gx#syntax-local-introduce _%$e53143%_)
                       '#f)))
               _%$e53136%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53113%_ _%slot53115%_)
        (let ((_%$e53117%_
               (let ((__obj98704 _%klass53113%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj98704
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj98704 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj98704
                      'slot-defaults)))))
          (if _%$e53117%_
              ((lambda (_%slot-defaults53121%_)
                 (let ((_%$e53124%_
                        (agetq _%slot53115%_ _%slot-defaults53121%_)))
                   (if _%$e53124%_
                       (gx#syntax-local-introduce _%$e53124%_)
                       '#f)))
               _%$e53117%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52882%_ _%slot52884%_)
        (let ((_%contract5288552887%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52882%_
                _%slot52884%_)))
          (if _%contract5288552887%_
              (let* ((_%contract52890%_ _%contract5288552887%_)
                     (_%__stx9270492705%_ _%contract52890%_)
                     (_%g5289552932%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9270492705%_))))
                (let ((_%__kont9270792708%_
                       (lambda (_%g5289753082%_ _%g5289853084%_)
                         (not (gx#free-identifier=?
                               _%g5289853084%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9270992710%_
                       (lambda (_%g5290553022%_
                                _%g5290653024%_
                                _%g5290753025%_)
                         (not (gx#free-identifier=?
                               _%g5290653024%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9271192712%_ (lambda (_%g5292052959%_) '#f)))
                  (let* ((_%__match9275792758%_
                          (lambda (_%e5290852982%_
                                   _%hd5290952986%_
                                   _%tl5291052989%_
                                   _%e5291152992%_
                                   _%hd5291252996%_
                                   _%tl5291352999%_
                                   _%e5291453002%_
                                   _%hd5291553006%_
                                   _%tl5291653009%_
                                   _%e5291753012%_
                                   _%hd5291853016%_
                                   _%tl5291953019%_)
                            (let ((_%g5290553022%_ _%hd5291853016%_)
                                  (_%g5290653024%_ _%hd5291553006%_)
                                  (_%g5290753025%_ _%hd5291252996%_))
                              (if (and (gx#identifier? _%g5290653024%_)
                                       (or (gx#free-identifier=?
                                            _%g5290653024%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5290653024%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5290653024%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5290653024%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9270992710%_
                                   _%g5290553022%_
                                   _%g5290653024%_
                                   _%g5290753025%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5289552932%_))))))
                         (_%__match9272792728%_
                          (lambda (_%e5289953062%_
                                   _%hd5290053066%_
                                   _%tl5290153069%_
                                   _%e5290253072%_
                                   _%hd5290353076%_
                                   _%tl5290453079%_)
                            (let ((_%g5289753082%_ _%hd5290353076%_)
                                  (_%g5289853084%_ _%hd5290053066%_))
                              (if (and (gx#identifier? _%g5289853084%_)
                                       (or (gx#free-identifier=?
                                            _%g5289853084%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5289853084%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5289853084%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5289853084%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9270792708%_
                                   _%g5289753082%_
                                   _%g5289853084%_)
                                  (if (gx#identifier? _%hd5290053066%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g98901_|
                                           _%hd5290053066%_)
                                          (_%__kont9271192712%_
                                           _%hd5290353076%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5289552932%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5289552932%_))))))))
                    (if (gx#stx-pair? _%__stx9270492705%_)
                        (let ((_%e5289953062%_
                               (gx#syntax-e _%__stx9270492705%_)))
                          (let ((_%tl5290153069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5289953062%_)))
                                (_%hd5290053066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5289953062%_))))
                            (if (gx#stx-pair? _%tl5290153069%_)
                                (let ((_%e5290253072%_
                                       (gx#syntax-e _%tl5290153069%_)))
                                  (let ((_%tl5290453079%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5290253072%_)))
                                        (_%hd5290353076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5290253072%_))))
                                    (if (gx#stx-null? _%tl5290453079%_)
                                        (_%__match9272792728%_
                                         _%e5289953062%_
                                         _%hd5290053066%_
                                         _%tl5290153069%_
                                         _%e5290253072%_
                                         _%hd5290353076%_
                                         _%tl5290453079%_)
                                        (if (gx#identifier? _%hd5290053066%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g98901_|
                                                 _%hd5290053066%_)
                                                (if (gx#stx-pair?
                                                     _%tl5290453079%_)
                                                    (let ((_%e5291453002%_
                                                           (gx#syntax-e
                                                            _%tl5290453079%_)))
                                                      (let ((_%tl5291653009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5291453002%_)))
                    (_%hd5291553006%_
                     (let () (declare (not safe)) (##car _%e5291453002%_))))
                (if (gx#stx-pair? _%tl5291653009%_)
                    (let ((_%e5291753012%_ (gx#syntax-e _%tl5291653009%_)))
                      (let ((_%tl5291953019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5291753012%_)))
                            (_%hd5291853016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5291753012%_))))
                        (if (gx#stx-null? _%tl5291953019%_)
                            (_%__match9275792758%_
                             _%e5289953062%_
                             _%hd5290053066%_
                             _%tl5290153069%_
                             _%e5290253072%_
                             _%hd5290353076%_
                             _%tl5290453079%_
                             _%e5291453002%_
                             _%hd5291553006%_
                             _%tl5291653009%_
                             _%e5291753012%_
                             _%hd5291853016%_
                             _%tl5291953019%_)
                            (let () (declare (not safe)) (_%g5289552932%_)))))
                    (let () (declare (not safe)) (_%g5289552932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5289552932%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5289552932%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5289552932%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5289552932%_)))))
                        (let () (declare (not safe)) (_%g5289552932%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52651%_ _%slot52653%_)
        (let ((_%contract5265452656%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52651%_
                _%slot52653%_)))
          (if _%contract5265452656%_
              (let* ((_%contract52659%_ _%contract5265452656%_)
                     (_%__stx9277892779%_ _%contract52659%_)
                     (_%g5266452701%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9277892779%_))))
                (let ((_%__kont9278192782%_
                       (lambda (_%g5266652851%_ _%g5266752853%_)
                         (not (gx#free-identifier=?
                               _%g5266752853%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9278392784%_
                       (lambda (_%g5267452791%_
                                _%g5267552793%_
                                _%g5267652794%_)
                         '#t))
                      (_%__kont9278592786%_ (lambda (_%g5268952728%_) '#t)))
                  (let* ((_%__match9283192832%_
                          (lambda (_%e5267752751%_
                                   _%hd5267852755%_
                                   _%tl5267952758%_
                                   _%e5268052761%_
                                   _%hd5268152765%_
                                   _%tl5268252768%_
                                   _%e5268352771%_
                                   _%hd5268452775%_
                                   _%tl5268552778%_
                                   _%e5268652781%_
                                   _%hd5268752785%_
                                   _%tl5268852788%_)
                            (let ((_%g5267452791%_ _%hd5268752785%_)
                                  (_%g5267552793%_ _%hd5268452775%_)
                                  (_%g5267652794%_ _%hd5268152765%_))
                              (if (and (gx#identifier? _%g5267552793%_)
                                       (or (gx#free-identifier=?
                                            _%g5267552793%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5267552793%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5267552793%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5267552793%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9278392784%_
                                   _%g5267452791%_
                                   _%g5267552793%_
                                   _%g5267652794%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5266452701%_))))))
                         (_%__match9280192802%_
                          (lambda (_%e5266852831%_
                                   _%hd5266952835%_
                                   _%tl5267052838%_
                                   _%e5267152841%_
                                   _%hd5267252845%_
                                   _%tl5267352848%_)
                            (let ((_%g5266652851%_ _%hd5267252845%_)
                                  (_%g5266752853%_ _%hd5266952835%_))
                              (if (and (gx#identifier? _%g5266752853%_)
                                       (or (gx#free-identifier=?
                                            _%g5266752853%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5266752853%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5266752853%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5266752853%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9278192782%_
                                   _%g5266652851%_
                                   _%g5266752853%_)
                                  (if (gx#identifier? _%hd5266952835%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g98902_|
                                           _%hd5266952835%_)
                                          (_%__kont9278592786%_
                                           _%hd5267252845%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5266452701%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5266452701%_))))))))
                    (if (gx#stx-pair? _%__stx9277892779%_)
                        (let ((_%e5266852831%_
                               (gx#syntax-e _%__stx9277892779%_)))
                          (let ((_%tl5267052838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5266852831%_)))
                                (_%hd5266952835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5266852831%_))))
                            (if (gx#stx-pair? _%tl5267052838%_)
                                (let ((_%e5267152841%_
                                       (gx#syntax-e _%tl5267052838%_)))
                                  (let ((_%tl5267352848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5267152841%_)))
                                        (_%hd5267252845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5267152841%_))))
                                    (if (gx#stx-null? _%tl5267352848%_)
                                        (_%__match9280192802%_
                                         _%e5266852831%_
                                         _%hd5266952835%_
                                         _%tl5267052838%_
                                         _%e5267152841%_
                                         _%hd5267252845%_
                                         _%tl5267352848%_)
                                        (if (gx#identifier? _%hd5266952835%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g98902_|
                                                 _%hd5266952835%_)
                                                (if (gx#stx-pair?
                                                     _%tl5267352848%_)
                                                    (let ((_%e5268352771%_
                                                           (gx#syntax-e
                                                            _%tl5267352848%_)))
                                                      (let ((_%tl5268552778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5268352771%_)))
                    (_%hd5268452775%_
                     (let () (declare (not safe)) (##car _%e5268352771%_))))
                (if (gx#stx-pair? _%tl5268552778%_)
                    (let ((_%e5268652781%_ (gx#syntax-e _%tl5268552778%_)))
                      (let ((_%tl5268852788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5268652781%_)))
                            (_%hd5268752785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5268652781%_))))
                        (if (gx#stx-null? _%tl5268852788%_)
                            (_%__match9283192832%_
                             _%e5266852831%_
                             _%hd5266952835%_
                             _%tl5267052838%_
                             _%e5267152841%_
                             _%hd5267252845%_
                             _%tl5267352848%_
                             _%e5268352771%_
                             _%hd5268452775%_
                             _%tl5268552778%_
                             _%e5268652781%_
                             _%hd5268752785%_
                             _%tl5268852788%_)
                            (let () (declare (not safe)) (_%g5266452701%_)))))
                    (let () (declare (not safe)) (_%g5266452701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5266452701%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5266452701%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5266452701%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5266452701%_)))))
                        (let () (declare (not safe)) (_%g5266452701%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52638%_)
        (if (gx#identifier? _%id52638%_)
            (let* ((_%str52641%_ (symbol->string (gx#stx-e _%id52638%_)))
                   (_%index5264352645%_ (string-index _%str52641%_ '#\.)))
              (if _%index5264352645%_
                  (let ((_%index52648%_ _%index5264352645%_))
                    (if (let () (declare (not safe)) (##fx> _%index52648%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52641%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52631%_ _%id52633%_)
        (let ((_%parts52635%_
               (string-split (symbol->string (gx#stx-e _%id52633%_)) '#\.)))
          (if (find string-empty? _%parts52635%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52631%_
               _%id52633%_)
              (cons (gx#stx-identifier _%id52633%_ (car _%parts52635%_))
                    (map string->symbol (cdr _%parts52635%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52612%_ _%klass-or-id52614%_ _%slot52615%_)
        (let* ((_%klass52617%_
                (if (gx#identifier? _%klass-or-id52614%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52612%_
                       _%klass-or-id52614%_))
                    _%klass-or-id52614%_))
               (_%accessors52620%_
                (let ((__obj98705 _%klass52617%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj98705
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj98705 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj98705
                       'unchecked-accessors))))
               (_%$e52625%_ (agetq _%slot52615%_ _%accessors52620%_)))
          (if _%$e52625%_
              _%$e52625%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52612%_
               _%klass52617%_
               _%slot52615%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52592%_
               _%klass-or-id52594%_
               _%slot52595%_
               _%checked?52596%_)
        (let* ((_%klass52598%_
                (if (gx#identifier? _%klass-or-id52594%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52592%_
                       _%klass-or-id52594%_))
                    _%klass-or-id52594%_))
               (_%mutators52601%_
                (if _%checked?52596%_
                    (let ((__obj98706 _%klass52598%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj98706
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj98706 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj98706
                           'mutators)))
                    (let ((__obj98707 _%klass52598%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj98707
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj98707 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj98707
                           'unchecked-mutators)))))
               (_%$e52606%_ (agetq _%slot52595%_ _%mutators52601%_)))
          (if _%$e52606%_
              _%$e52606%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52592%_
               _%klass52598%_
               _%slot52595%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53164%_)
        (letrec ((_%expand-body53167%_
                  (lambda (_%klass54065%_
                           _%var54067%_
                           _%Type54068%_
                           _%body54069%_
                           _%checked?54070%_)
                    (let* ((_%g5407254116%_
                            (lambda (_%g5407354112%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5407354112%_)))
                           (_%g5407154271%_
                            (lambda (_%g5407354120%_)
                              (if (gx#stx-pair? _%g5407354120%_)
                                  (let ((_%e5408154123%_
                                         (gx#syntax-e _%g5407354120%_)))
                                    (let ((_%hd5408254127%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5408154123%_)))
                                          (_%tl5408354130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5408154123%_))))
                                      (if (gx#stx-pair? _%tl5408354130%_)
                                          (let ((_%e5408454133%_
                                                 (gx#syntax-e
                                                  _%tl5408354130%_)))
                                            (let ((_%hd5408554137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5408454133%_)))
                                                  (_%tl5408654140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5408454133%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5408654140%_)
                                                  (let ((_%e5408754143%_
                                                         (gx#syntax-e
                                                          _%tl5408654140%_)))
                                                    (let ((_%hd5408854147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5408754143%_)))
                                                          (_%tl5408954150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5408754143%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5408954150%_)
                                                          (let ((_%e5409054153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5408954150%_)))
                    (let ((_%hd5409154157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5409054153%_)))
                          (_%tl5409254160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5409054153%_))))
                      (if (gx#stx-pair? _%tl5409254160%_)
                          (let ((_%e5409354163%_
                                 (gx#syntax-e _%tl5409254160%_)))
                            (let ((_%hd5409454167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5409354163%_)))
                                  (_%tl5409554170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5409354163%_))))
                              (if (gx#stx-pair? _%tl5409554170%_)
                                  (let ((_%e5409654173%_
                                         (gx#syntax-e _%tl5409554170%_)))
                                    (let ((_%hd5409754177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5409654173%_)))
                                          (_%tl5409854180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5409654173%_))))
                                      (if (gx#stx-pair? _%tl5409854180%_)
                                          (let ((_%e5409954183%_
                                                 (gx#syntax-e
                                                  _%tl5409854180%_)))
                                            (let ((_%hd5410054187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5409954183%_)))
                                                  (_%tl5410154190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5409954183%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5410054187%_)
                                                  (let ((_g98903_
                                                         (gx#syntax-split-splice
                                                          _%hd5410054187%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g98904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g98903_)
                           (##values-length _g98903_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98904_ 2)))
                    (error "Context expects 2 values" _g98904_)))
              (let ((_%target5410254193%_
                     (let () (declare (not safe)) (##values-ref _g98903_ 0)))
                    (_%tl5410454196%_
                     (let () (declare (not safe)) (##values-ref _g98903_ 1))))
                (if (gx#stx-null? _%tl5410454196%_)
                    (letrec ((_%loop5410554199%_
                              (lambda (_%hd5410354203%_ _%body5410954206%_)
                                (if (gx#stx-pair? _%hd5410354203%_)
                                    (let ((_%e5410654208%_
                                           (gx#syntax-e _%hd5410354203%_)))
                                      (let ((_%lp-hd5410754212%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5410654208%_)))
                                            (_%lp-tl5410854215%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5410654208%_))))
                                        (_%loop5410554199%_
                                         _%lp-tl5410854215%_
                                         (cons _%lp-hd5410754212%_
                                               _%body5410954206%_))))
                                    (let ((_%body5411054218%_
                                           (reverse _%body5410954206%_)))
                                      (if (gx#stx-null? _%tl5410154190%_)
                                          ((lambda (_%g5407454221%_
                                                    _%g5407554223%_
                                                    _%g5407654224%_
                                                    _%g5407754225%_
                                                    _%g5407854226%_
                                                    _%g5407954227%_
                                                    _%g5408054228%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5407854226%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5407954227%_ '()))
                                         (cons _%g5407854226%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5408054228%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5407854226%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5407754225%_ '()))
                               (cons _%g5407654224%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5407554223%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5426254265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5426354268%_)
                      (cons _%g5426254265%_ _%g5426354268%_))
                    '()
                    _%g5407454221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5411054218%_
                                           _%hd5409754177%_
                                           _%hd5409454167%_
                                           _%hd5409154157%_
                                           _%hd5408854147%_
                                           _%hd5408554137%_
                                           _%hd5408254127%_)
                                          (_%g5407254116%_
                                           _%g5407354120%_)))))))
                      (_%loop5410554199%_ _%target5410254193%_ '()))
                    (_%g5407254116%_ _%g5407354120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5407254116%_
                                                   _%g5407354120%_))))
                                          (_%g5407254116%_ _%g5407354120%_))))
                                  (_%g5407254116%_ _%g5407354120%_))))
                          (_%g5407254116%_ _%g5407354120%_))))
                  (_%g5407254116%_ _%g5407354120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5407254116%_
                                                   _%g5407354120%_))))
                                          (_%g5407254116%_ _%g5407354120%_))))
                                  (_%g5407254116%_ _%g5407354120%_)))))
                      (_%g5407154271%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj98708 _%klass54065%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj98708
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj98708
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj98708
                                    'type-descriptor)))
                             _%var54067%_
                             _%klass54065%_
                             _%checked?54070%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54069%_)))))
                 (_%expand53169%_
                  (lambda (_%var53957%_
                           _%Type53959%_
                           _%body53960%_
                           _%checked?53961%_
                           _%checked-mutators?53962%_
                           _%maybe?53963%_)
                    (let* ((_%klass53965%_
                            (gx#syntax-local-value _%Type53959%_ false))
                           (_%expr-body53972%_
                            (_%expand-body53167%_
                             _%klass53965%_
                             _%var53957%_
                             _%Type53959%_
                             _%body53960%_
                             (let ((_%$e53968%_ _%checked?53961%_))
                               (if _%$e53968%_
                                   _%$e53968%_
                                   _%checked-mutators?53962%_)))))
                      (if _%checked?53961%_
                          (let* ((_%g5397753996%_
                                  (lambda (_%g5397853992%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5397853992%_)))
                                 (_%g5397654058%_
                                  (lambda (_%g5397854000%_)
                                    (if (gx#stx-pair? _%g5397854000%_)
                                        (let ((_%e5398254003%_
                                               (gx#syntax-e _%g5397854000%_)))
                                          (let ((_%hd5398354007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5398254003%_)))
                                                (_%tl5398454010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5398254003%_))))
                                            (if (gx#stx-pair? _%tl5398454010%_)
                                                (let ((_%e5398554013%_
                                                       (gx#syntax-e
                                                        _%tl5398454010%_)))
                                                  (let ((_%hd5398654017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5398554013%_)))
                                                        (_%tl5398754020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5398554013%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5398754020%_)
                                                        (let ((_%e5398854023%_
                                                               (gx#syntax-e
                                                                _%tl5398754020%_)))
                                                          (let ((_%hd5398954027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5398854023%_)))
                        (_%tl5399054030%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5398854023%_))))
                    (if (gx#stx-null? _%tl5399054030%_)
                        ((lambda (_%g5397954033%_
                                  _%g5398054035%_
                                  _%g5398154036%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5398054035%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5398154036%_ '())))
                                       (cons _%g5397954033%_ '()))))
                         _%hd5398954027%_
                         _%hd5398654017%_
                         _%hd5398354007%_)
                        (_%g5397753996%_ _%g5397854000%_))))
                (_%g5397753996%_ _%g5397854000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5397753996%_
                                                 _%g5397854000%_))))
                                        (_%g5397753996%_ _%g5397854000%_)))))
                            (_%g5397654058%_
                             (list (let ((_%instance?54062%_
                                          (let ((__obj98709 _%klass53965%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj98709
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj98709
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj98709
                                                 'predicate)))))
                                     (if _%maybe?53963%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54062%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54062%_))
                                   _%var53957%_
                                   _%expr-body53972%_)))
                          _%expr-body53972%_)))))
          (let* ((_%__stx9285292853%_ _%stx53164%_)
                 (_%g5317553318%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9285292853%_))))
            (let ((_%__kont9285592856%_
                   (lambda (_%g5317753885%_
                            _%g5317853887%_
                            _%g5317953888%_
                            _%g5318053889%_)
                     (let* ((_%g5391453922%_
                             (lambda (_%g5391553918%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5391553918%_)))
                            (_%g5391353949%_
                             (lambda (_%g5391553926%_)
                               ((lambda (_%g5391653929%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5318053889%_
                                                    (cons _%g5317953888%_
                                                          (cons _%g5391653929%_
                                                                '())))
                                              (foldr (lambda (_%g5394053943%_
                                                              _%g5394153946%_)
                                                       (cons _%g5394053943%_
                                                             _%g5394153946%_))
                                                     '()
                                                     _%g5317753885%_))))
                                _%g5391553926%_))))
                       (_%g5391353949%_
                        (let ((__obj98710
                               (gx#syntax-local-value _%g5317853887%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj98710
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj98710
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj98710
                               'identifier)))))))
                  (_%__kont9285992860%_
                   (lambda (_%g5320553765%_ _%g5320653767%_ _%g5320753768%_)
                     (_%expand53169%_
                      _%g5320753768%_
                      _%g5320653767%_
                      (foldr (lambda (_%g5379153794%_ _%g5379253797%_)
                               (cons _%g5379153794%_ _%g5379253797%_))
                             '()
                             _%g5320553765%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9286392864%_
                   (lambda (_%g5323253645%_ _%g5323353647%_ _%g5323453648%_)
                     (_%expand53169%_
                      _%g5323453648%_
                      _%g5323353647%_
                      (foldr (lambda (_%g5367153674%_ _%g5367253677%_)
                               (cons _%g5367153674%_ _%g5367253677%_))
                             '()
                             _%g5323253645%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9286792868%_
                   (lambda (_%g5325953525%_ _%g5326053527%_ _%g5326153528%_)
                     (_%expand53169%_
                      _%g5326153528%_
                      _%g5326053527%_
                      (foldr (lambda (_%g5355153554%_ _%g5355253557%_)
                               (cons _%g5355153554%_ _%g5355253557%_))
                             '()
                             _%g5325953525%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9287192872%_
                   (lambda (_%g5328653403%_ _%g5328753405%_ _%g5328853406%_)
                     (_%expand53169%_
                      _%g5328853406%_
                      _%g5328753405%_
                      (foldr (lambda (_%g5343153434%_ _%g5343253437%_)
                               (cons _%g5343153434%_ _%g5343253437%_))
                             '()
                             _%g5328653403%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9309193092%_
                      (lambda (_%e5328953325%_
                               _%hd5329053329%_
                               _%tl5329153332%_
                               _%e5329253335%_
                               _%hd5329353339%_
                               _%tl5329453342%_
                               _%e5329553345%_
                               _%hd5329653349%_
                               _%tl5329753352%_
                               _%e5329853355%_
                               _%hd5329953359%_
                               _%tl5330053362%_
                               _%e5330153365%_
                               _%hd5330253369%_
                               _%tl5330353372%_
                               _%__splice9287392874%_
                               _%target5330453375%_
                               _%tl5330653378%_)
                        (letrec ((_%loop5330753381%_
                                  (lambda (_%hd5330553385%_ _%body5331153388%_)
                                    (if (gx#stx-pair? _%hd5330553385%_)
                                        (let ((_%e5330853390%_
                                               (gx#syntax-e _%hd5330553385%_)))
                                          (let ((_%lp-tl5331053397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5330853390%_)))
                                                (_%lp-hd5330953394%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5330853390%_))))
                                            (_%loop5330753381%_
                                             _%lp-tl5331053397%_
                                             (cons _%lp-hd5330953394%_
                                                   _%body5331153388%_))))
                                        (let ((_%body5331253400%_
                                               (reverse _%body5331153388%_)))
                                          (let ((_%g5328653403%_
                                                 _%body5331253400%_)
                                                (_%g5328753405%_
                                                 _%hd5330253369%_)
                                                (_%g5328853406%_
                                                 _%hd5329653349%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5328753405%_))
                                                (_%__kont9287192872%_
                                                 _%g5328653403%_
                                                 _%g5328753405%_
                                                 _%g5328853406%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))))))))
                          (_%loop5330753381%_ _%target5330453375%_ '()))))
                     (_%__match9304793048%_
                      (lambda (_%e5326253447%_
                               _%hd5326353451%_
                               _%tl5326453454%_
                               _%e5326553457%_
                               _%hd5326653461%_
                               _%tl5326753464%_
                               _%e5326853467%_
                               _%hd5326953471%_
                               _%tl5327053474%_
                               _%e5327153477%_
                               _%hd5327253481%_
                               _%tl5327353484%_
                               _%e5327453487%_
                               _%hd5327553491%_
                               _%tl5327653494%_
                               _%__splice9286992870%_
                               _%target5327753497%_
                               _%tl5327953500%_)
                        (letrec ((_%loop5328053503%_
                                  (lambda (_%hd5327853507%_ _%body5328453510%_)
                                    (if (gx#stx-pair? _%hd5327853507%_)
                                        (let ((_%e5328153512%_
                                               (gx#syntax-e _%hd5327853507%_)))
                                          (let ((_%lp-tl5328353519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5328153512%_)))
                                                (_%lp-hd5328253516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5328153512%_))))
                                            (_%loop5328053503%_
                                             _%lp-tl5328353519%_
                                             (cons _%lp-hd5328253516%_
                                                   _%body5328453510%_))))
                                        (let ((_%body5328553522%_
                                               (reverse _%body5328453510%_)))
                                          (let ((_%g5325953525%_
                                                 _%body5328553522%_)
                                                (_%g5326053527%_
                                                 _%hd5327553491%_)
                                                (_%g5326153528%_
                                                 _%hd5326953471%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5326053527%_))
                                                (_%__kont9286792868%_
                                                 _%g5325953525%_
                                                 _%g5326053527%_
                                                 _%g5326153528%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))))))))
                          (_%loop5328053503%_ _%target5327753497%_ '()))))
                     (_%__match9300393004%_
                      (lambda (_%e5323553567%_
                               _%hd5323653571%_
                               _%tl5323753574%_
                               _%e5323853577%_
                               _%hd5323953581%_
                               _%tl5324053584%_
                               _%e5324153587%_
                               _%hd5324253591%_
                               _%tl5324353594%_
                               _%e5324453597%_
                               _%hd5324553601%_
                               _%tl5324653604%_
                               _%e5324753607%_
                               _%hd5324853611%_
                               _%tl5324953614%_
                               _%__splice9286592866%_
                               _%target5325053617%_
                               _%tl5325253620%_)
                        (letrec ((_%loop5325353623%_
                                  (lambda (_%hd5325153627%_ _%body5325753630%_)
                                    (if (gx#stx-pair? _%hd5325153627%_)
                                        (let ((_%e5325453632%_
                                               (gx#syntax-e _%hd5325153627%_)))
                                          (let ((_%lp-tl5325653639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5325453632%_)))
                                                (_%lp-hd5325553636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5325453632%_))))
                                            (_%loop5325353623%_
                                             _%lp-tl5325653639%_
                                             (cons _%lp-hd5325553636%_
                                                   _%body5325753630%_))))
                                        (let ((_%body5325853642%_
                                               (reverse _%body5325753630%_)))
                                          (let ((_%g5323253645%_
                                                 _%body5325853642%_)
                                                (_%g5323353647%_
                                                 _%hd5324853611%_)
                                                (_%g5323453648%_
                                                 _%hd5324253591%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5323353647%_))
                                                (_%__kont9286392864%_
                                                 _%g5323253645%_
                                                 _%g5323353647%_
                                                 _%g5323453648%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))))))))
                          (_%loop5325353623%_ _%target5325053617%_ '()))))
                     (_%__match9295992960%_
                      (lambda (_%e5320853687%_
                               _%hd5320953691%_
                               _%tl5321053694%_
                               _%e5321153697%_
                               _%hd5321253701%_
                               _%tl5321353704%_
                               _%e5321453707%_
                               _%hd5321553711%_
                               _%tl5321653714%_
                               _%e5321753717%_
                               _%hd5321853721%_
                               _%tl5321953724%_
                               _%e5322053727%_
                               _%hd5322153731%_
                               _%tl5322253734%_
                               _%__splice9286192862%_
                               _%target5322353737%_
                               _%tl5322553740%_)
                        (letrec ((_%loop5322653743%_
                                  (lambda (_%hd5322453747%_ _%body5323053750%_)
                                    (if (gx#stx-pair? _%hd5322453747%_)
                                        (let ((_%e5322753752%_
                                               (gx#syntax-e _%hd5322453747%_)))
                                          (let ((_%lp-tl5322953759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5322753752%_)))
                                                (_%lp-hd5322853756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5322753752%_))))
                                            (_%loop5322653743%_
                                             _%lp-tl5322953759%_
                                             (cons _%lp-hd5322853756%_
                                                   _%body5323053750%_))))
                                        (let ((_%body5323153762%_
                                               (reverse _%body5323053750%_)))
                                          (let ((_%g5320553765%_
                                                 _%body5323153762%_)
                                                (_%g5320653767%_
                                                 _%hd5322153731%_)
                                                (_%g5320753768%_
                                                 _%hd5321553711%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5320653767%_))
                                                (_%__kont9285992860%_
                                                 _%g5320553765%_
                                                 _%g5320653767%_
                                                 _%g5320753768%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))))))))
                          (_%loop5322653743%_ _%target5322353737%_ '()))))
                     (_%__match9293992940%_
                      (lambda (_%e5320853687%_
                               _%hd5320953691%_
                               _%tl5321053694%_
                               _%e5321153697%_
                               _%hd5321253701%_
                               _%tl5321353704%_
                               _%e5321453707%_
                               _%hd5321553711%_
                               _%tl5321653714%_
                               _%e5321753717%_
                               _%hd5321853721%_
                               _%tl5321953724%_)
                        (if (gx#identifier? _%hd5321853721%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g98905_|
                                 _%hd5321853721%_)
                                (if (gx#stx-pair? _%tl5321953724%_)
                                    (let ((_%e5322053727%_
                                           (gx#syntax-e _%tl5321953724%_)))
                                      (let ((_%tl5322253734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5322053727%_)))
                                            (_%hd5322153731%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5322053727%_))))
                                        (if (gx#stx-null? _%tl5322253734%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5321353704%_)
                                                (let ((_%__splice9286192862%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5321353704%_
                                                        '0)))
                                                  (let ((_%tl5322553740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9286192862%_
                                                            '1)))
                                                        (_%target5322353737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9286192862%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5322553740%_)
                                                        (_%__match9295992960%_
                                                         _%e5320853687%_
                                                         _%hd5320953691%_
                                                         _%tl5321053694%_
                                                         _%e5321153697%_
                                                         _%hd5321253701%_
                                                         _%tl5321353704%_
                                                         _%e5321453707%_
                                                         _%hd5321553711%_
                                                         _%tl5321653714%_
                                                         _%e5321753717%_
                                                         _%hd5321853721%_
                                                         _%tl5321953724%_
                                                         _%e5322053727%_
                                                         _%hd5322153731%_
                                                         _%tl5322253734%_
                                                         _%__splice9286192862%_
                                                         _%target5322353737%_
                                                         _%tl5322553740%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5317553318%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5317553318%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5317553318%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g98906_|
                                     _%hd5321853721%_)
                                    (if (gx#stx-pair? _%tl5321953724%_)
                                        (let ((_%e5324753607%_
                                               (gx#syntax-e _%tl5321953724%_)))
                                          (let ((_%tl5324953614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5324753607%_)))
                                                (_%hd5324853611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5324753607%_))))
                                            (if (gx#stx-null? _%tl5324953614%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5321353704%_)
                                                    (let ((_%__splice9286592866%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5321353704%_
                                                            '0)))
                                                      (let ((_%tl5325253620%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9286592866%_ '1)))
                    (_%target5325053617%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9286592866%_ '0))))
                (if (gx#stx-null? _%tl5325253620%_)
                    (_%__match9300393004%_
                     _%e5320853687%_
                     _%hd5320953691%_
                     _%tl5321053694%_
                     _%e5321153697%_
                     _%hd5321253701%_
                     _%tl5321353704%_
                     _%e5321453707%_
                     _%hd5321553711%_
                     _%tl5321653714%_
                     _%e5321753717%_
                     _%hd5321853721%_
                     _%tl5321953724%_
                     _%e5324753607%_
                     _%hd5324853611%_
                     _%tl5324953614%_
                     _%__splice9286592866%_
                     _%target5325053617%_
                     _%tl5325253620%_)
                    (let () (declare (not safe)) (_%g5317553318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5317553318%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5317553318%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g98907_|
                                         _%hd5321853721%_)
                                        (if (gx#stx-pair? _%tl5321953724%_)
                                            (let ((_%e5327453487%_
                                                   (gx#syntax-e
                                                    _%tl5321953724%_)))
                                              (let ((_%tl5327653494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5327453487%_)))
                                                    (_%hd5327553491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5327453487%_))))
                                                (if (gx#stx-null?
                                                     _%tl5327653494%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5321353704%_)
                                                        (let ((_%__splice9286992870%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5321353704%_
                                                                '0)))
                                                          (let ((_%tl5327953500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9286992870%_ '1)))
                        (_%target5327753497%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9286992870%_ '0))))
                    (if (gx#stx-null? _%tl5327953500%_)
                        (_%__match9304793048%_
                         _%e5320853687%_
                         _%hd5320953691%_
                         _%tl5321053694%_
                         _%e5321153697%_
                         _%hd5321253701%_
                         _%tl5321353704%_
                         _%e5321453707%_
                         _%hd5321553711%_
                         _%tl5321653714%_
                         _%e5321753717%_
                         _%hd5321853721%_
                         _%tl5321953724%_
                         _%e5327453487%_
                         _%hd5327553491%_
                         _%tl5327653494%_
                         _%__splice9286992870%_
                         _%target5327753497%_
                         _%tl5327953500%_)
                        (let () (declare (not safe)) (_%g5317553318%_)))))
                (let () (declare (not safe)) (_%g5317553318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5317553318%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5317553318%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g98908_|
                                             _%hd5321853721%_)
                                            (if (gx#stx-pair? _%tl5321953724%_)
                                                (let ((_%e5330153365%_
                                                       (gx#syntax-e
                                                        _%tl5321953724%_)))
                                                  (let ((_%tl5330353372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5330153365%_)))
                                                        (_%hd5330253369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5330153365%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5330353372%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5321353704%_)
                                                            (let ((_%__splice9287392874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5321353704%_
                            '0)))
                      (let ((_%tl5330653378%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9287392874%_ '1)))
                            (_%target5330453375%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9287392874%_ '0))))
                        (if (gx#stx-null? _%tl5330653378%_)
                            (_%__match9309193092%_
                             _%e5320853687%_
                             _%hd5320953691%_
                             _%tl5321053694%_
                             _%e5321153697%_
                             _%hd5321253701%_
                             _%tl5321353704%_
                             _%e5321453707%_
                             _%hd5321553711%_
                             _%tl5321653714%_
                             _%e5321753717%_
                             _%hd5321853721%_
                             _%tl5321953724%_
                             _%e5330153365%_
                             _%hd5330253369%_
                             _%tl5330353372%_
                             _%__splice9287392874%_
                             _%target5330453375%_
                             _%tl5330653378%_)
                            (let () (declare (not safe)) (_%g5317553318%_)))))
                    (let () (declare (not safe)) (_%g5317553318%_)))
                (let () (declare (not safe)) (_%g5317553318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5317553318%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5317553318%_))))))
                            (let () (declare (not safe)) (_%g5317553318%_)))))
                     (_%__match9291592916%_
                      (lambda (_%e5318153807%_
                               _%hd5318253811%_
                               _%tl5318353814%_
                               _%e5318453817%_
                               _%hd5318553821%_
                               _%tl5318653824%_
                               _%e5318753827%_
                               _%hd5318853831%_
                               _%tl5318953834%_
                               _%e5319053837%_
                               _%hd5319153841%_
                               _%tl5319253844%_
                               _%e5319353847%_
                               _%hd5319453851%_
                               _%tl5319553854%_
                               _%__splice9285792858%_
                               _%target5319653857%_
                               _%tl5319853860%_)
                        (letrec ((_%loop5319953863%_
                                  (lambda (_%hd5319753867%_ _%body5320353870%_)
                                    (if (gx#stx-pair? _%hd5319753867%_)
                                        (let ((_%e5320053872%_
                                               (gx#syntax-e _%hd5319753867%_)))
                                          (let ((_%lp-tl5320253879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5320053872%_)))
                                                (_%lp-hd5320153876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5320053872%_))))
                                            (_%loop5319953863%_
                                             _%lp-tl5320253879%_
                                             (cons _%lp-hd5320153876%_
                                                   _%body5320353870%_))))
                                        (let ((_%body5320453882%_
                                               (reverse _%body5320353870%_)))
                                          (let ((_%g5317753885%_
                                                 _%body5320453882%_)
                                                (_%g5317853887%_
                                                 _%hd5319453851%_)
                                                (_%g5317953888%_
                                                 _%hd5319153841%_)
                                                (_%g5318053889%_
                                                 _%hd5318853831%_))
                                            (if (let ((__tmp98909
                                                       (gx#syntax-local-value
                                                        _%g5317853887%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp98909))
                                                (_%__kont9285592856%_
                                                 _%g5317753885%_
                                                 _%g5317853887%_
                                                 _%g5317953888%_
                                                 _%g5318053889%_)
                                                (_%__match9293992940%_
                                                 _%e5318153807%_
                                                 _%hd5318253811%_
                                                 _%tl5318353814%_
                                                 _%e5318453817%_
                                                 _%hd5318553821%_
                                                 _%tl5318653824%_
                                                 _%e5318753827%_
                                                 _%hd5318853831%_
                                                 _%tl5318953834%_
                                                 _%e5319053837%_
                                                 _%hd5319153841%_
                                                 _%tl5319253844%_))))))))
                          (_%loop5319953863%_ _%target5319653857%_ '())))))
                (if (gx#stx-pair? _%__stx9285292853%_)
                    (let ((_%e5318153807%_ (gx#syntax-e _%__stx9285292853%_)))
                      (let ((_%tl5318353814%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5318153807%_)))
                            (_%hd5318253811%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5318153807%_))))
                        (if (gx#stx-pair? _%tl5318353814%_)
                            (let ((_%e5318453817%_
                                   (gx#syntax-e _%tl5318353814%_)))
                              (let ((_%tl5318653824%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5318453817%_)))
                                    (_%hd5318553821%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5318453817%_))))
                                (if (gx#stx-pair? _%hd5318553821%_)
                                    (let ((_%e5318753827%_
                                           (gx#syntax-e _%hd5318553821%_)))
                                      (let ((_%tl5318953834%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5318753827%_)))
                                            (_%hd5318853831%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5318753827%_))))
                                        (if (gx#stx-pair? _%tl5318953834%_)
                                            (let ((_%e5319053837%_
                                                   (gx#syntax-e
                                                    _%tl5318953834%_)))
                                              (let ((_%tl5319253844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5319053837%_)))
                                                    (_%hd5319153841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5319053837%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5319253844%_)
                                                    (let ((_%e5319353847%_
                                                           (gx#syntax-e
                                                            _%tl5319253844%_)))
                                                      (let ((_%tl5319553854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5319353847%_)))
                    (_%hd5319453851%_
                     (let () (declare (not safe)) (##car _%e5319353847%_))))
                (if (gx#stx-null? _%tl5319553854%_)
                    (if (gx#stx-pair/null? _%tl5318653824%_)
                        (let ((_%__splice9285792858%_
                               (gx#syntax-split-splice->vector
                                _%tl5318653824%_
                                '0)))
                          (let ((_%tl5319853860%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9285792858%_ '1)))
                                (_%target5319653857%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9285792858%_ '0))))
                            (if (gx#stx-null? _%tl5319853860%_)
                                (_%__match9291592916%_
                                 _%e5318153807%_
                                 _%hd5318253811%_
                                 _%tl5318353814%_
                                 _%e5318453817%_
                                 _%hd5318553821%_
                                 _%tl5318653824%_
                                 _%e5318753827%_
                                 _%hd5318853831%_
                                 _%tl5318953834%_
                                 _%e5319053837%_
                                 _%hd5319153841%_
                                 _%tl5319253844%_
                                 _%e5319353847%_
                                 _%hd5319453851%_
                                 _%tl5319553854%_
                                 _%__splice9285792858%_
                                 _%target5319653857%_
                                 _%tl5319853860%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5317553318%_)))))
                        (let () (declare (not safe)) (_%g5317553318%_)))
                    (let () (declare (not safe)) (_%g5317553318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5317553318%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5317553318%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5317553318%_)))))
                            (let () (declare (not safe)) (_%g5317553318%_)))))
                    (let () (declare (not safe)) (_%g5317553318%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54281%_)
        (letrec ((_%expand-body54284%_
                  (lambda (_%var55275%_
                           _%Interface55277%_
                           _%body55278%_
                           _%checked?55279%_)
                    (let* ((_%type55281%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54281%_
                               _%Interface55277%_)))
                           (_%g5528455328%_
                            (lambda (_%g5528555324%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5528555324%_)))
                           (_%g5528355484%_
                            (lambda (_%g5528555332%_)
                              (if (gx#stx-pair? _%g5528555332%_)
                                  (let ((_%e5529355335%_
                                         (gx#syntax-e _%g5528555332%_)))
                                    (let ((_%hd5529455339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5529355335%_)))
                                          (_%tl5529555342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5529355335%_))))
                                      (if (gx#stx-pair? _%tl5529555342%_)
                                          (let ((_%e5529655345%_
                                                 (gx#syntax-e
                                                  _%tl5529555342%_)))
                                            (let ((_%hd5529755349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5529655345%_)))
                                                  (_%tl5529855352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5529655345%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5529855352%_)
                                                  (let ((_%e5529955355%_
                                                         (gx#syntax-e
                                                          _%tl5529855352%_)))
                                                    (let ((_%hd5530055359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5529955355%_)))
                                                          (_%tl5530155362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5529955355%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5530155362%_)
                                                          (let ((_%e5530255365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5530155362%_)))
                    (let ((_%hd5530355369%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5530255365%_)))
                          (_%tl5530455372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5530255365%_))))
                      (if (gx#stx-pair? _%tl5530455372%_)
                          (let ((_%e5530555375%_
                                 (gx#syntax-e _%tl5530455372%_)))
                            (let ((_%hd5530655379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5530555375%_)))
                                  (_%tl5530755382%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5530555375%_))))
                              (if (gx#stx-pair? _%tl5530755382%_)
                                  (let ((_%e5530855385%_
                                         (gx#syntax-e _%tl5530755382%_)))
                                    (let ((_%hd5530955389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5530855385%_)))
                                          (_%tl5531055392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5530855385%_))))
                                      (if (gx#stx-pair? _%tl5531055392%_)
                                          (let ((_%e5531155395%_
                                                 (gx#syntax-e
                                                  _%tl5531055392%_)))
                                            (let ((_%hd5531255399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5531155395%_)))
                                                  (_%tl5531355402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5531155395%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5531255399%_)
                                                  (let ((_g98910_
                                                         (gx#syntax-split-splice
                                                          _%hd5531255399%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g98911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g98910_)
                           (##values-length _g98910_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98911_ 2)))
                    (error "Context expects 2 values" _g98911_)))
              (let ((_%target5531455405%_
                     (let () (declare (not safe)) (##values-ref _g98910_ 0)))
                    (_%tl5531655408%_
                     (let () (declare (not safe)) (##values-ref _g98910_ 1))))
                (if (gx#stx-null? _%tl5531655408%_)
                    (letrec ((_%loop5531755411%_
                              (lambda (_%hd5531555415%_ _%body5532155418%_)
                                (if (gx#stx-pair? _%hd5531555415%_)
                                    (let ((_%e5531855420%_
                                           (gx#syntax-e _%hd5531555415%_)))
                                      (let ((_%lp-hd5531955424%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5531855420%_)))
                                            (_%lp-tl5532055427%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5531855420%_))))
                                        (_%loop5531755411%_
                                         _%lp-tl5532055427%_
                                         (cons _%lp-hd5531955424%_
                                               _%body5532155418%_))))
                                    (let ((_%body5532255430%_
                                           (reverse _%body5532155418%_)))
                                      (if (gx#stx-null? _%tl5531355402%_)
                                          ((lambda (_%g5528655433%_
                                                    _%g5528755435%_
                                                    _%g5528855436%_
                                                    _%g5528955437%_
                                                    _%g5529055438%_
                                                    _%g5529155439%_
                                                    _%g5529255440%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5528955437%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5529055438%_ '()))
                                         (cons _%g5528955437%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5529255440%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5528955437%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5529155439%_ '()))
                               (cons _%g5528855436%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5528755435%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5547555478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5547655481%_)
                      (cons _%g5547555478%_ _%g5547655481%_))
                    '()
                    _%g5528655433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5532255430%_
                                           _%hd5530955389%_
                                           _%hd5530655379%_
                                           _%hd5530355369%_
                                           _%hd5530055359%_
                                           _%hd5529755349%_
                                           _%hd5529455339%_)
                                          (_%g5528455328%_
                                           _%g5528555332%_)))))))
                      (_%loop5531755411%_ _%target5531455405%_ '()))
                    (_%g5528455328%_ _%g5528555332%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5528455328%_
                                                   _%g5528555332%_))))
                                          (_%g5528455328%_ _%g5528555332%_))))
                                  (_%g5528455328%_ _%g5528555332%_))))
                          (_%g5528455328%_ _%g5528555332%_))))
                  (_%g5528455328%_ _%g5528555332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5528455328%_
                                                   _%g5528555332%_))))
                                          (_%g5528455328%_ _%g5528555332%_))))
                                  (_%g5528455328%_ _%g5528555332%_)))))
                      (_%g5528355484%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55281%_
                             (let ((__obj98711 _%type55281%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj98711
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj98711
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj98711
                                    'type-descriptor)))
                             _%var55275%_
                             _%checked?55279%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55278%_)))))
                 (_%expand54286%_
                  (lambda (_%var55074%_
                           _%Interface55076%_
                           _%body55077%_
                           _%checked?55078%_
                           _%checked-methods?55079%_
                           _%maybe?55080%_)
                    (let* ((_%g5508255090%_
                            (lambda (_%g5508355086%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5508355086%_)))
                           (_%g5508155267%_
                            (lambda (_%g5508355094%_)
                              ((lambda (_%g5508455097%_)
                                 (if _%checked?55078%_
                                     (if _%maybe?55080%_
                                         (let* ((_%g5510955124%_
                                                 (lambda (_%g5511055120%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5511055120%_)))
                                                (_%g5510855170%_
                                                 (lambda (_%g5511055128%_)
                                                   (if (gx#stx-pair?
                                                        _%g5511055128%_)
                                                       (let ((_%e5511355131%_
                                                              (gx#syntax-e
                                                               _%g5511055128%_)))
                                                         (let ((_%hd5511455135%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5511355131%_)))
                       (_%tl5511555138%_
                        (let () (declare (not safe)) (##cdr _%e5511355131%_))))
                   (if (gx#stx-pair? _%tl5511555138%_)
                       (let ((_%e5511655141%_ (gx#syntax-e _%tl5511555138%_)))
                         (let ((_%hd5511755145%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5511655141%_)))
                               (_%tl5511855148%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5511655141%_))))
                           (if (gx#stx-null? _%tl5511855148%_)
                               ((lambda (_%g5511155151%_ _%g5511255153%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5511255153%_
                                                    (cons (cons _%g5511155151%_
                                                                (cons _%g5511255153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5511255153%_
                                                                (cons _%g5508455097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5511255153%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5511755145%_
                                _%hd5511455135%_)
                               (_%g5510955124%_ _%g5511055128%_))))
                       (_%g5510955124%_ _%g5511055128%_))))
               (_%g5510955124%_ _%g5511055128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5510855170%_
                                            (list _%var55074%_
                                                  _%Interface55076%_)))
                                         (let* ((_%g5517455189%_
                                                 (lambda (_%g5517555185%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5517555185%_)))
                                                (_%g5517355233%_
                                                 (lambda (_%g5517555193%_)
                                                   (if (gx#stx-pair?
                                                        _%g5517555193%_)
                                                       (let ((_%e5517855196%_
                                                              (gx#syntax-e
                                                               _%g5517555193%_)))
                                                         (let ((_%hd5517955200%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5517855196%_)))
                       (_%tl5518055203%_
                        (let () (declare (not safe)) (##cdr _%e5517855196%_))))
                   (if (gx#stx-pair? _%tl5518055203%_)
                       (let ((_%e5518155206%_ (gx#syntax-e _%tl5518055203%_)))
                         (let ((_%hd5518255210%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5518155206%_)))
                               (_%tl5518355213%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5518155206%_))))
                           (if (gx#stx-null? _%tl5518355213%_)
                               ((lambda (_%g5517655216%_ _%g5517755218%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5517755218%_
                                                    (cons (cons _%g5517655216%_
                                                                (cons _%g5517755218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5508455097%_ '()))))
                                _%hd5518255210%_
                                _%hd5517955200%_)
                               (_%g5517455189%_ _%g5517555193%_))))
                       (_%g5517455189%_ _%g5517555193%_))))
               (_%g5517455189%_ _%g5517555193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5517355233%_
                                            (list _%var55074%_
                                                  _%Interface55076%_))))
                                     (if _%maybe?55080%_
                                         (let* ((_%g5523755245%_
                                                 (lambda (_%g5523855241%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5523855241%_)))
                                                (_%g5523655263%_
                                                 (lambda (_%g5523855249%_)
                                                   ((lambda (_%g5523955252%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5523955252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5508455097%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5523955252%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5523855249%_))))
                                           (_%g5523655263%_ _%var55074%_))
                                         _%g5508455097%_)))
                               _%g5508355094%_))))
                      (_%g5508155267%_
                       (_%expand-body54284%_
                        _%var55074%_
                        _%Interface55076%_
                        _%body55077%_
                        (let ((_%$e55271%_ _%checked?55078%_))
                          (if _%$e55271%_
                              _%$e55271%_
                              _%checked-methods?55079%_))))))))
          (let* ((_%__stx9309493095%_ _%stx54281%_)
                 (_%g5429254435%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9309493095%_))))
            (let ((_%__kont9309793098%_
                   (lambda (_%g5429455002%_
                            _%g5429555004%_
                            _%g5429655005%_
                            _%g5429755006%_)
                     (let* ((_%g5503155039%_
                             (lambda (_%g5503255035%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5503255035%_)))
                            (_%g5503055066%_
                             (lambda (_%g5503255043%_)
                               ((lambda (_%g5503355046%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5429755006%_
                                                    (cons _%g5429655005%_
                                                          (cons _%g5503355046%_
                                                                '())))
                                              (foldr (lambda (_%g5505755060%_
                                                              _%g5505855063%_)
                                                       (cons _%g5505755060%_
                                                             _%g5505855063%_))
                                                     '()
                                                     _%g5429455002%_))))
                                _%g5503255043%_))))
                       (_%g5503055066%_
                        (let ((__obj98712
                               (gx#syntax-local-value _%g5429555004%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj98712
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj98712
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj98712
                               'identifier)))))))
                  (_%__kont9310193102%_
                   (lambda (_%g5432254882%_ _%g5432354884%_ _%g5432454885%_)
                     (_%expand54286%_
                      _%g5432454885%_
                      _%g5432354884%_
                      (foldr (lambda (_%g5490854911%_ _%g5490954914%_)
                               (cons _%g5490854911%_ _%g5490954914%_))
                             '()
                             _%g5432254882%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9310593106%_
                   (lambda (_%g5434954762%_ _%g5435054764%_ _%g5435154765%_)
                     (_%expand54286%_
                      _%g5435154765%_
                      _%g5435054764%_
                      (foldr (lambda (_%g5478854791%_ _%g5478954794%_)
                               (cons _%g5478854791%_ _%g5478954794%_))
                             '()
                             _%g5434954762%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9310993110%_
                   (lambda (_%g5437654642%_ _%g5437754644%_ _%g5437854645%_)
                     (_%expand54286%_
                      _%g5437854645%_
                      _%g5437754644%_
                      (foldr (lambda (_%g5466854671%_ _%g5466954674%_)
                               (cons _%g5466854671%_ _%g5466954674%_))
                             '()
                             _%g5437654642%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9311393114%_
                   (lambda (_%g5440354520%_ _%g5440454522%_ _%g5440554523%_)
                     (_%expand54286%_
                      _%g5440554523%_
                      _%g5440454522%_
                      (foldr (lambda (_%g5454854551%_ _%g5454954554%_)
                               (cons _%g5454854551%_ _%g5454954554%_))
                             '()
                             _%g5440354520%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9333393334%_
                      (lambda (_%e5440654442%_
                               _%hd5440754446%_
                               _%tl5440854449%_
                               _%e5440954452%_
                               _%hd5441054456%_
                               _%tl5441154459%_
                               _%e5441254462%_
                               _%hd5441354466%_
                               _%tl5441454469%_
                               _%e5441554472%_
                               _%hd5441654476%_
                               _%tl5441754479%_
                               _%e5441854482%_
                               _%hd5441954486%_
                               _%tl5442054489%_
                               _%__splice9311593116%_
                               _%target5442154492%_
                               _%tl5442354495%_)
                        (letrec ((_%loop5442454498%_
                                  (lambda (_%hd5442254502%_ _%body5442854505%_)
                                    (if (gx#stx-pair? _%hd5442254502%_)
                                        (let ((_%e5442554507%_
                                               (gx#syntax-e _%hd5442254502%_)))
                                          (let ((_%lp-tl5442754514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5442554507%_)))
                                                (_%lp-hd5442654511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5442554507%_))))
                                            (_%loop5442454498%_
                                             _%lp-tl5442754514%_
                                             (cons _%lp-hd5442654511%_
                                                   _%body5442854505%_))))
                                        (let ((_%body5442954517%_
                                               (reverse _%body5442854505%_)))
                                          (let ((_%g5440354520%_
                                                 _%body5442954517%_)
                                                (_%g5440454522%_
                                                 _%hd5441954486%_)
                                                (_%g5440554523%_
                                                 _%hd5441354466%_))
                                            (if (and (gx#identifier?
                                                      _%g5440554523%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5440454522%_)))
                                                (_%__kont9311393114%_
                                                 _%g5440354520%_
                                                 _%g5440454522%_
                                                 _%g5440554523%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))))))))
                          (_%loop5442454498%_ _%target5442154492%_ '()))))
                     (_%__match9328993290%_
                      (lambda (_%e5437954564%_
                               _%hd5438054568%_
                               _%tl5438154571%_
                               _%e5438254574%_
                               _%hd5438354578%_
                               _%tl5438454581%_
                               _%e5438554584%_
                               _%hd5438654588%_
                               _%tl5438754591%_
                               _%e5438854594%_
                               _%hd5438954598%_
                               _%tl5439054601%_
                               _%e5439154604%_
                               _%hd5439254608%_
                               _%tl5439354611%_
                               _%__splice9311193112%_
                               _%target5439454614%_
                               _%tl5439654617%_)
                        (letrec ((_%loop5439754620%_
                                  (lambda (_%hd5439554624%_ _%body5440154627%_)
                                    (if (gx#stx-pair? _%hd5439554624%_)
                                        (let ((_%e5439854629%_
                                               (gx#syntax-e _%hd5439554624%_)))
                                          (let ((_%lp-tl5440054636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5439854629%_)))
                                                (_%lp-hd5439954633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5439854629%_))))
                                            (_%loop5439754620%_
                                             _%lp-tl5440054636%_
                                             (cons _%lp-hd5439954633%_
                                                   _%body5440154627%_))))
                                        (let ((_%body5440254639%_
                                               (reverse _%body5440154627%_)))
                                          (let ((_%g5437654642%_
                                                 _%body5440254639%_)
                                                (_%g5437754644%_
                                                 _%hd5439254608%_)
                                                (_%g5437854645%_
                                                 _%hd5438654588%_))
                                            (if (and (gx#identifier?
                                                      _%g5437854645%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5437754644%_)))
                                                (_%__kont9310993110%_
                                                 _%g5437654642%_
                                                 _%g5437754644%_
                                                 _%g5437854645%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))))))))
                          (_%loop5439754620%_ _%target5439454614%_ '()))))
                     (_%__match9324593246%_
                      (lambda (_%e5435254684%_
                               _%hd5435354688%_
                               _%tl5435454691%_
                               _%e5435554694%_
                               _%hd5435654698%_
                               _%tl5435754701%_
                               _%e5435854704%_
                               _%hd5435954708%_
                               _%tl5436054711%_
                               _%e5436154714%_
                               _%hd5436254718%_
                               _%tl5436354721%_
                               _%e5436454724%_
                               _%hd5436554728%_
                               _%tl5436654731%_
                               _%__splice9310793108%_
                               _%target5436754734%_
                               _%tl5436954737%_)
                        (letrec ((_%loop5437054740%_
                                  (lambda (_%hd5436854744%_ _%body5437454747%_)
                                    (if (gx#stx-pair? _%hd5436854744%_)
                                        (let ((_%e5437154749%_
                                               (gx#syntax-e _%hd5436854744%_)))
                                          (let ((_%lp-tl5437354756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5437154749%_)))
                                                (_%lp-hd5437254753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5437154749%_))))
                                            (_%loop5437054740%_
                                             _%lp-tl5437354756%_
                                             (cons _%lp-hd5437254753%_
                                                   _%body5437454747%_))))
                                        (let ((_%body5437554759%_
                                               (reverse _%body5437454747%_)))
                                          (let ((_%g5434954762%_
                                                 _%body5437554759%_)
                                                (_%g5435054764%_
                                                 _%hd5436554728%_)
                                                (_%g5435154765%_
                                                 _%hd5435954708%_))
                                            (if (and (gx#identifier?
                                                      _%g5435154765%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5435054764%_)))
                                                (_%__kont9310593106%_
                                                 _%g5434954762%_
                                                 _%g5435054764%_
                                                 _%g5435154765%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))))))))
                          (_%loop5437054740%_ _%target5436754734%_ '()))))
                     (_%__match9320193202%_
                      (lambda (_%e5432554804%_
                               _%hd5432654808%_
                               _%tl5432754811%_
                               _%e5432854814%_
                               _%hd5432954818%_
                               _%tl5433054821%_
                               _%e5433154824%_
                               _%hd5433254828%_
                               _%tl5433354831%_
                               _%e5433454834%_
                               _%hd5433554838%_
                               _%tl5433654841%_
                               _%e5433754844%_
                               _%hd5433854848%_
                               _%tl5433954851%_
                               _%__splice9310393104%_
                               _%target5434054854%_
                               _%tl5434254857%_)
                        (letrec ((_%loop5434354860%_
                                  (lambda (_%hd5434154864%_ _%body5434754867%_)
                                    (if (gx#stx-pair? _%hd5434154864%_)
                                        (let ((_%e5434454869%_
                                               (gx#syntax-e _%hd5434154864%_)))
                                          (let ((_%lp-tl5434654876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5434454869%_)))
                                                (_%lp-hd5434554873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5434454869%_))))
                                            (_%loop5434354860%_
                                             _%lp-tl5434654876%_
                                             (cons _%lp-hd5434554873%_
                                                   _%body5434754867%_))))
                                        (let ((_%body5434854879%_
                                               (reverse _%body5434754867%_)))
                                          (let ((_%g5432254882%_
                                                 _%body5434854879%_)
                                                (_%g5432354884%_
                                                 _%hd5433854848%_)
                                                (_%g5432454885%_
                                                 _%hd5433254828%_))
                                            (if (and (gx#identifier?
                                                      _%g5432454885%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5432354884%_)))
                                                (_%__kont9310193102%_
                                                 _%g5432254882%_
                                                 _%g5432354884%_
                                                 _%g5432454885%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))))))))
                          (_%loop5434354860%_ _%target5434054854%_ '()))))
                     (_%__match9318193182%_
                      (lambda (_%e5432554804%_
                               _%hd5432654808%_
                               _%tl5432754811%_
                               _%e5432854814%_
                               _%hd5432954818%_
                               _%tl5433054821%_
                               _%e5433154824%_
                               _%hd5433254828%_
                               _%tl5433354831%_
                               _%e5433454834%_
                               _%hd5433554838%_
                               _%tl5433654841%_)
                        (if (gx#identifier? _%hd5433554838%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g98912_|
                                 _%hd5433554838%_)
                                (if (gx#stx-pair? _%tl5433654841%_)
                                    (let ((_%e5433754844%_
                                           (gx#syntax-e _%tl5433654841%_)))
                                      (let ((_%tl5433954851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5433754844%_)))
                                            (_%hd5433854848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5433754844%_))))
                                        (if (gx#stx-null? _%tl5433954851%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5433054821%_)
                                                (let ((_%__splice9310393104%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5433054821%_
                                                        '0)))
                                                  (let ((_%tl5434254857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9310393104%_
                                                            '1)))
                                                        (_%target5434054854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9310393104%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5434254857%_)
                                                        (_%__match9320193202%_
                                                         _%e5432554804%_
                                                         _%hd5432654808%_
                                                         _%tl5432754811%_
                                                         _%e5432854814%_
                                                         _%hd5432954818%_
                                                         _%tl5433054821%_
                                                         _%e5433154824%_
                                                         _%hd5433254828%_
                                                         _%tl5433354831%_
                                                         _%e5433454834%_
                                                         _%hd5433554838%_
                                                         _%tl5433654841%_
                                                         _%e5433754844%_
                                                         _%hd5433854848%_
                                                         _%tl5433954851%_
                                                         _%__splice9310393104%_
                                                         _%target5434054854%_
                                                         _%tl5434254857%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5429254435%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5429254435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5429254435%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g98913_|
                                     _%hd5433554838%_)
                                    (if (gx#stx-pair? _%tl5433654841%_)
                                        (let ((_%e5436454724%_
                                               (gx#syntax-e _%tl5433654841%_)))
                                          (let ((_%tl5436654731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5436454724%_)))
                                                (_%hd5436554728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5436454724%_))))
                                            (if (gx#stx-null? _%tl5436654731%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5433054821%_)
                                                    (let ((_%__splice9310793108%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5433054821%_
                                                            '0)))
                                                      (let ((_%tl5436954737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9310793108%_ '1)))
                    (_%target5436754734%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9310793108%_ '0))))
                (if (gx#stx-null? _%tl5436954737%_)
                    (_%__match9324593246%_
                     _%e5432554804%_
                     _%hd5432654808%_
                     _%tl5432754811%_
                     _%e5432854814%_
                     _%hd5432954818%_
                     _%tl5433054821%_
                     _%e5433154824%_
                     _%hd5433254828%_
                     _%tl5433354831%_
                     _%e5433454834%_
                     _%hd5433554838%_
                     _%tl5433654841%_
                     _%e5436454724%_
                     _%hd5436554728%_
                     _%tl5436654731%_
                     _%__splice9310793108%_
                     _%target5436754734%_
                     _%tl5436954737%_)
                    (let () (declare (not safe)) (_%g5429254435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5429254435%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5429254435%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g98914_|
                                         _%hd5433554838%_)
                                        (if (gx#stx-pair? _%tl5433654841%_)
                                            (let ((_%e5439154604%_
                                                   (gx#syntax-e
                                                    _%tl5433654841%_)))
                                              (let ((_%tl5439354611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5439154604%_)))
                                                    (_%hd5439254608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5439154604%_))))
                                                (if (gx#stx-null?
                                                     _%tl5439354611%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5433054821%_)
                                                        (let ((_%__splice9311193112%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5433054821%_
                                                                '0)))
                                                          (let ((_%tl5439654617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9311193112%_ '1)))
                        (_%target5439454614%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9311193112%_ '0))))
                    (if (gx#stx-null? _%tl5439654617%_)
                        (_%__match9328993290%_
                         _%e5432554804%_
                         _%hd5432654808%_
                         _%tl5432754811%_
                         _%e5432854814%_
                         _%hd5432954818%_
                         _%tl5433054821%_
                         _%e5433154824%_
                         _%hd5433254828%_
                         _%tl5433354831%_
                         _%e5433454834%_
                         _%hd5433554838%_
                         _%tl5433654841%_
                         _%e5439154604%_
                         _%hd5439254608%_
                         _%tl5439354611%_
                         _%__splice9311193112%_
                         _%target5439454614%_
                         _%tl5439654617%_)
                        (let () (declare (not safe)) (_%g5429254435%_)))))
                (let () (declare (not safe)) (_%g5429254435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5429254435%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5429254435%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g98915_|
                                             _%hd5433554838%_)
                                            (if (gx#stx-pair? _%tl5433654841%_)
                                                (let ((_%e5441854482%_
                                                       (gx#syntax-e
                                                        _%tl5433654841%_)))
                                                  (let ((_%tl5442054489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5441854482%_)))
                                                        (_%hd5441954486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5441854482%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5442054489%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5433054821%_)
                                                            (let ((_%__splice9311593116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5433054821%_
                            '0)))
                      (let ((_%tl5442354495%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9311593116%_ '1)))
                            (_%target5442154492%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9311593116%_ '0))))
                        (if (gx#stx-null? _%tl5442354495%_)
                            (_%__match9333393334%_
                             _%e5432554804%_
                             _%hd5432654808%_
                             _%tl5432754811%_
                             _%e5432854814%_
                             _%hd5432954818%_
                             _%tl5433054821%_
                             _%e5433154824%_
                             _%hd5433254828%_
                             _%tl5433354831%_
                             _%e5433454834%_
                             _%hd5433554838%_
                             _%tl5433654841%_
                             _%e5441854482%_
                             _%hd5441954486%_
                             _%tl5442054489%_
                             _%__splice9311593116%_
                             _%target5442154492%_
                             _%tl5442354495%_)
                            (let () (declare (not safe)) (_%g5429254435%_)))))
                    (let () (declare (not safe)) (_%g5429254435%_)))
                (let () (declare (not safe)) (_%g5429254435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5429254435%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5429254435%_))))))
                            (let () (declare (not safe)) (_%g5429254435%_)))))
                     (_%__match9315793158%_
                      (lambda (_%e5429854924%_
                               _%hd5429954928%_
                               _%tl5430054931%_
                               _%e5430154934%_
                               _%hd5430254938%_
                               _%tl5430354941%_
                               _%e5430454944%_
                               _%hd5430554948%_
                               _%tl5430654951%_
                               _%e5430754954%_
                               _%hd5430854958%_
                               _%tl5430954961%_
                               _%e5431054964%_
                               _%hd5431154968%_
                               _%tl5431254971%_
                               _%__splice9309993100%_
                               _%target5431354974%_
                               _%tl5431554977%_)
                        (letrec ((_%loop5431654980%_
                                  (lambda (_%hd5431454984%_ _%body5432054987%_)
                                    (if (gx#stx-pair? _%hd5431454984%_)
                                        (let ((_%e5431754989%_
                                               (gx#syntax-e _%hd5431454984%_)))
                                          (let ((_%lp-tl5431954996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5431754989%_)))
                                                (_%lp-hd5431854993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5431754989%_))))
                                            (_%loop5431654980%_
                                             _%lp-tl5431954996%_
                                             (cons _%lp-hd5431854993%_
                                                   _%body5432054987%_))))
                                        (let ((_%body5432154999%_
                                               (reverse _%body5432054987%_)))
                                          (let ((_%g5429455002%_
                                                 _%body5432154999%_)
                                                (_%g5429555004%_
                                                 _%hd5431154968%_)
                                                (_%g5429655005%_
                                                 _%hd5430854958%_)
                                                (_%g5429755006%_
                                                 _%hd5430554948%_))
                                            (if (let ((__tmp98916
                                                       (gx#syntax-local-value
                                                        _%g5429555004%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp98916))
                                                (_%__kont9309793098%_
                                                 _%g5429455002%_
                                                 _%g5429555004%_
                                                 _%g5429655005%_
                                                 _%g5429755006%_)
                                                (_%__match9318193182%_
                                                 _%e5429854924%_
                                                 _%hd5429954928%_
                                                 _%tl5430054931%_
                                                 _%e5430154934%_
                                                 _%hd5430254938%_
                                                 _%tl5430354941%_
                                                 _%e5430454944%_
                                                 _%hd5430554948%_
                                                 _%tl5430654951%_
                                                 _%e5430754954%_
                                                 _%hd5430854958%_
                                                 _%tl5430954961%_))))))))
                          (_%loop5431654980%_ _%target5431354974%_ '())))))
                (if (gx#stx-pair? _%__stx9309493095%_)
                    (let ((_%e5429854924%_ (gx#syntax-e _%__stx9309493095%_)))
                      (let ((_%tl5430054931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5429854924%_)))
                            (_%hd5429954928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5429854924%_))))
                        (if (gx#stx-pair? _%tl5430054931%_)
                            (let ((_%e5430154934%_
                                   (gx#syntax-e _%tl5430054931%_)))
                              (let ((_%tl5430354941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5430154934%_)))
                                    (_%hd5430254938%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5430154934%_))))
                                (if (gx#stx-pair? _%hd5430254938%_)
                                    (let ((_%e5430454944%_
                                           (gx#syntax-e _%hd5430254938%_)))
                                      (let ((_%tl5430654951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5430454944%_)))
                                            (_%hd5430554948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5430454944%_))))
                                        (if (gx#stx-pair? _%tl5430654951%_)
                                            (let ((_%e5430754954%_
                                                   (gx#syntax-e
                                                    _%tl5430654951%_)))
                                              (let ((_%tl5430954961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5430754954%_)))
                                                    (_%hd5430854958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5430754954%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5430954961%_)
                                                    (let ((_%e5431054964%_
                                                           (gx#syntax-e
                                                            _%tl5430954961%_)))
                                                      (let ((_%tl5431254971%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5431054964%_)))
                    (_%hd5431154968%_
                     (let () (declare (not safe)) (##car _%e5431054964%_))))
                (if (gx#stx-null? _%tl5431254971%_)
                    (if (gx#stx-pair/null? _%tl5430354941%_)
                        (let ((_%__splice9309993100%_
                               (gx#syntax-split-splice->vector
                                _%tl5430354941%_
                                '0)))
                          (let ((_%tl5431554977%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9309993100%_ '1)))
                                (_%target5431354974%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9309993100%_ '0))))
                            (if (gx#stx-null? _%tl5431554977%_)
                                (_%__match9315793158%_
                                 _%e5429854924%_
                                 _%hd5429954928%_
                                 _%tl5430054931%_
                                 _%e5430154934%_
                                 _%hd5430254938%_
                                 _%tl5430354941%_
                                 _%e5430454944%_
                                 _%hd5430554948%_
                                 _%tl5430654951%_
                                 _%e5430754954%_
                                 _%hd5430854958%_
                                 _%tl5430954961%_
                                 _%e5431054964%_
                                 _%hd5431154968%_
                                 _%tl5431254971%_
                                 _%__splice9309993100%_
                                 _%target5431354974%_
                                 _%tl5431554977%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5429254435%_)))))
                        (let () (declare (not safe)) (_%g5429254435%_)))
                    (let () (declare (not safe)) (_%g5429254435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5429254435%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5429254435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5429254435%_)))))
                            (let () (declare (not safe)) (_%g5429254435%_)))))
                    (let () (declare (not safe)) (_%g5429254435%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55494%_)
        (let* ((_%__stx9333693337%_ _%stx55494%_)
               (_%g5549955559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9333693337%_))))
          (let ((_%__kont9333993340%_
                 (lambda (_%g5550156115%_ _%g5550256117%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5550256117%_ '()))
                               (foldr (lambda (_%g5613356136%_ _%g5613456139%_)
                                        (cons _%g5613356136%_ _%g5613456139%_))
                                      '()
                                      _%g5550156115%_)))))
                (_%__kont9334393344%_
                 (lambda (_%g5551855703%_ _%g5551955705%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5551955705%_)
                       (let* ((_%g5572555732%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55494%_
                                _%g5551955705%_))
                              (_%E5572755738%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5572555732%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5572856036%_
                               (lambda (_%parts55742%_ _%var55744%_)
                                 (let ((_%$e55746%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55744%_))))
                                   (if _%$e55746%_
                                       ((lambda (_%te55750%_)
                                          (let _%loop55753%_ ((_%parts55756%_
                                                               _%parts55742%_)
                                                              (_%type55758%_
                                                               (##direct-structure-ref
                                                                _%te55750%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55759%_
                                                               _%var55744%_)
                                                              (_%checked-method?55760%_
                                                               (##direct-structure-ref
                                                                _%te55750%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55761%_
                                                               '#f))
                                            (let* ((_%parts5576255770%_
                                                    _%parts55756%_)
                                                   (_%else5576455831%_
                                                    (lambda ()
                                                      (let* ((_%g5578255790%_
                                                              (lambda (_%g5578355786%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5578355786%_)))
                     (_%g5578155827%_
                      (lambda (_%g5578355794%_)
                        ((lambda (_%g5578455797%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5578455797%_
                                       (foldr (lambda (_%g5581855821%_
                                                       _%g5581955824%_)
                                                (cons _%g5581855821%_
                                                      _%g5581955824%_))
                                              '()
                                              _%g5551855703%_))))
                         _%g5578355794%_))))
                (_%g5578155827%_ _%object55759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5576656010%_
                                                    (lambda (_%rest55835%_
                                                             _%part55837%_)
                                                      (if (and (not _%nil-check?55761%_)
                                                               (let ((__tmp98917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55837%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp98917)))
                  (let ((_%str55841%_ (symbol->string _%part55837%_)))
                    (_%loop55753%_
                     (cons (let ((__tmp98918
                                  (substring
                                   _%str55841%_
                                   '1
                                   (string-length _%str55841%_))))
                             (declare (not safe))
                             (##string->symbol __tmp98918))
                           _%rest55835%_)
                     _%type55758%_
                     _%object55759%_
                     _%checked-method?55760%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55758%_))
                      (let* ((_%g5584655861%_
                              (lambda (_%g5584755857%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5584755857%_)))
                             (_%g5584555930%_
                              (lambda (_%g5584755865%_)
                                (if (gx#stx-pair? _%g5584755865%_)
                                    (let ((_%e5585055868%_
                                           (gx#syntax-e _%g5584755865%_)))
                                      (let ((_%hd5585155872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5585055868%_)))
                                            (_%tl5585255875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5585055868%_))))
                                        (if (gx#stx-pair? _%tl5585255875%_)
                                            (let ((_%e5585355878%_
                                                   (gx#syntax-e
                                                    _%tl5585255875%_)))
                                              (let ((_%hd5585455882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5585355878%_)))
                                                    (_%tl5585555885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5585355878%_))))
                                                (if (gx#stx-null?
                                                     _%tl5585555885%_)
                                                    ((lambda (_%g5584855888%_
                                                              _%g5584955890%_)
                                                       (if (null? _%rest55835%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5584855888%_
                                     (cons _%g5584955890%_ '()))
                               (foldr (lambda (_%g5590955912%_ _%g5591055915%_)
                                        (cons _%g5590955912%_ _%g5591055915%_))
                                      '()
                                      _%g5551855703%_)))
                   (let ((_%$e55918%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55758%_
                           _%part55837%_)))
                     (if _%$e55918%_
                         ((lambda (_%slot-type55922%_)
                            (let ((_%slot-type55925%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55494%_
                                      _%slot-type55922%_))))
                              (_%loop55753%_
                               _%rest55835%_
                               _%slot-type55925%_
                               (cons _%g5584855888%_
                                     (cons _%g5584955890%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55758%_
                                _%part55837%_)
                               '#f)))
                          _%$e55918%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55494%_
                          _%g5551955705%_
                          _%part55837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5585455882%_
                                                     _%hd5585155872%_)
                                                    (_%g5584655861%_
                                                     _%g5584755865%_))))
                                            (_%g5584655861%_
                                             _%g5584755865%_))))
                                    (_%g5584655861%_ _%g5584755865%_)))))
                        (_%g5584555930%_
                         (list (if _%nil-check?55761%_
                                   (cons 'check-nil!
                                         (cons _%object55759%_ '()))
                                   _%object55759%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55494%_
                                _%type55758%_
                                _%part55837%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55758%_))
                          (if (null? _%rest55835%_)
                              (let* ((_%g5593655951%_
                                      (lambda (_%g5593755947%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5593755947%_)))
                                     (_%g5593556004%_
                                      (lambda (_%g5593755955%_)
                                        (if (gx#stx-pair? _%g5593755955%_)
                                            (let ((_%e5594055958%_
                                                   (gx#syntax-e
                                                    _%g5593755955%_)))
                                              (let ((_%hd5594155962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5594055958%_)))
                                                    (_%tl5594255965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5594055958%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5594255965%_)
                                                    (let ((_%e5594355968%_
                                                           (gx#syntax-e
                                                            _%tl5594255965%_)))
                                                      (let ((_%hd5594455972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5594355968%_)))
                    (_%tl5594555975%_
                     (let () (declare (not safe)) (##cdr _%e5594355968%_))))
                (if (gx#stx-null? _%tl5594555975%_)
                    ((lambda (_%g5593855978%_ _%g5593955980%_)
                       (cons _%g5593855978%_
                             (cons _%g5593955980%_
                                   (foldr (lambda (_%g5599555998%_
                                                   _%g5599656001%_)
                                            (cons _%g5599555998%_
                                                  _%g5599656001%_))
                                          '()
                                          _%g5551855703%_))))
                     _%hd5594455972%_
                     _%hd5594155962%_)
                    (_%g5593655951%_ _%g5593755955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5593655951%_
                                                     _%g5593755955%_))))
                                            (_%g5593655951%_
                                             _%g5593755955%_)))))
                                (_%g5593556004%_
                                 (list (if _%nil-check?55761%_
                                           (cons 'check-nil!
                                                 (cons _%object55759%_ '()))
                                           _%object55759%_)
                                       (gx#stx-identifier
                                        _%g5551955705%_
                                        (if _%checked-method?55760%_ '"" '"&")
                                        (let ((__obj98713 _%type55758%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj98713
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj98713
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj98713
                                               'name)))
                                        '"-"
                                        _%part55837%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55494%_
                               _%g5551955705%_
                               _%part55837%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55494%_
                           _%type55758%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5576255770%_)
                                                  (let ((_%hd5576756014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5576255770%_)))
                                                        (_%tl5576856017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5576255770%_))))
                                                    (let* ((_%part56020%_
                                                            _%hd5576756014%_)
                                                           (_%rest56023%_
                                                            _%tl5576856017%_))
                                                      (_%K5576656010%_
                                                       _%rest56023%_
                                                       _%part56020%_)))
                                                  (_%else5576455831%_)))))
                                        _%$e55746%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5551955705%_
                                                   (foldr (lambda (_%g5602756030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5602856033%_)
                    (cons _%g5602756030%_ _%g5602856033%_))
                  '()
                  _%g5551855703%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5572555732%_)
                             (let ((_%hd5572956040%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5572555732%_)))
                                   (_%tl5573056043%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5572555732%_))))
                               (let* ((_%var56046%_ _%hd5572956040%_)
                                      (_%parts56049%_ _%tl5573056043%_))
                                 (_%K5572856036%_
                                  _%parts56049%_
                                  _%var56046%_)))
                             (_%E5572755738%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5551955705%_
                                   (foldr (lambda (_%g5605156054%_
                                                   _%g5605256057%_)
                                            (cons _%g5605156054%_
                                                  _%g5605256057%_))
                                          '()
                                          _%g5551855703%_))))))
                (_%__kont9334793348%_
                 (lambda (_%g5554155604%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5561955622%_ _%g5562055625%_)
                                  (cons _%g5561955622%_ _%g5562055625%_))
                                '()
                                _%g5554155604%_)))))
            (let* ((_%__match9342393424%_
                    (lambda (_%e5554255566%_
                             _%hd5554355570%_
                             _%tl5554455573%_
                             _%__splice9334993350%_
                             _%target5554555576%_
                             _%tl5554755579%_)
                      (letrec ((_%loop5554855582%_
                                (lambda (_%hd5554655586%_ _%arg5555255589%_)
                                  (if (gx#stx-pair? _%hd5554655586%_)
                                      (let ((_%e5554955591%_
                                             (gx#syntax-e _%hd5554655586%_)))
                                        (let ((_%lp-tl5555155598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5554955591%_)))
                                              (_%lp-hd5555055595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5554955591%_))))
                                          (_%loop5554855582%_
                                           _%lp-tl5555155598%_
                                           (cons _%lp-hd5555055595%_
                                                 _%arg5555255589%_))))
                                      (let ((_%arg5555355601%_
                                             (reverse _%arg5555255589%_)))
                                        (_%__kont9334793348%_
                                         _%arg5555355601%_))))))
                        (_%loop5554855582%_ _%target5554555576%_ '()))))
                   (_%__match9340993410%_
                    (lambda (_%e5552055635%_
                             _%hd5552155639%_
                             _%tl5552255642%_
                             _%e5552355645%_
                             _%hd5552455649%_
                             _%tl5552555652%_
                             _%e5552655655%_
                             _%hd5552755659%_
                             _%tl5552855662%_
                             _%e5552955665%_
                             _%hd5553055669%_
                             _%tl5553155672%_
                             _%__splice9334593346%_
                             _%target5553255675%_
                             _%tl5553455678%_)
                      (letrec ((_%loop5553555681%_
                                (lambda (_%hd5553355685%_ _%rand5553955688%_)
                                  (if (gx#stx-pair? _%hd5553355685%_)
                                      (let ((_%e5553655690%_
                                             (gx#syntax-e _%hd5553355685%_)))
                                        (let ((_%lp-tl5553855697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5553655690%_)))
                                              (_%lp-hd5553755694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5553655690%_))))
                                          (_%loop5553555681%_
                                           _%lp-tl5553855697%_
                                           (cons _%lp-hd5553755694%_
                                                 _%rand5553955688%_))))
                                      (let ((_%rand5554055700%_
                                             (reverse _%rand5553955688%_)))
                                        (_%__kont9334393344%_
                                         _%rand5554055700%_
                                         _%hd5553055669%_))))))
                        (_%loop5553555681%_ _%target5553255675%_ '()))))
                   (_%__match9338393384%_
                    (lambda (_%e5552055635%_
                             _%hd5552155639%_
                             _%tl5552255642%_
                             _%e5552355645%_
                             _%hd5552455649%_
                             _%tl5552555652%_)
                      (if (gx#stx-pair? _%hd5552455649%_)
                          (let ((_%e5552655655%_
                                 (gx#syntax-e _%hd5552455649%_)))
                            (let ((_%tl5552855662%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5552655655%_)))
                                  (_%hd5552755659%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5552655655%_))))
                              (if (gx#identifier? _%hd5552755659%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g98919_|
                                       _%hd5552755659%_)
                                      (if (gx#stx-pair? _%tl5552855662%_)
                                          (let ((_%e5552955665%_
                                                 (gx#syntax-e
                                                  _%tl5552855662%_)))
                                            (let ((_%tl5553155672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5552955665%_)))
                                                  (_%hd5553055669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5552955665%_))))
                                              (if (gx#stx-null?
                                                   _%tl5553155672%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5552555652%_)
                                                      (let ((_%__splice9334593346%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5552555652%_
                                                              '0)))
                                                        (let ((_%tl5553455678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9334593346%_ '1)))
                      (_%target5553255675%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9334593346%_ '0))))
                  (if (gx#stx-null? _%tl5553455678%_)
                      (_%__match9340993410%_
                       _%e5552055635%_
                       _%hd5552155639%_
                       _%tl5552255642%_
                       _%e5552355645%_
                       _%hd5552455649%_
                       _%tl5552555652%_
                       _%e5552655655%_
                       _%hd5552755659%_
                       _%tl5552855662%_
                       _%e5552955665%_
                       _%hd5553055669%_
                       _%tl5553155672%_
                       _%__splice9334593346%_
                       _%target5553255675%_
                       _%tl5553455678%_)
                      (if (gx#stx-pair/null? _%tl5552255642%_)
                          (let ((_%__splice9334993350%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5552255642%_
                                  '0)))
                            (let ((_%tl5554755579%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9334993350%_ '1)))
                                  (_%target5554555576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9334993350%_
                                      '0))))
                              (if (gx#stx-null? _%tl5554755579%_)
                                  (_%__match9342393424%_
                                   _%e5552055635%_
                                   _%hd5552155639%_
                                   _%tl5552255642%_
                                   _%__splice9334993350%_
                                   _%target5554555576%_
                                   _%tl5554755579%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5549955559%_)))))
                          (let () (declare (not safe)) (_%g5549955559%_))))))
              (if (gx#stx-pair/null? _%tl5552255642%_)
                  (let ((_%__splice9334993350%_
                         (gx#syntax-split-splice->vector _%tl5552255642%_ '0)))
                    (let ((_%tl5554755579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '1)))
                          (_%target5554555576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '0))))
                      (if (gx#stx-null? _%tl5554755579%_)
                          (_%__match9342393424%_
                           _%e5552055635%_
                           _%hd5552155639%_
                           _%tl5552255642%_
                           _%__splice9334993350%_
                           _%target5554555576%_
                           _%tl5554755579%_)
                          (let () (declare (not safe)) (_%g5549955559%_)))))
                  (let () (declare (not safe)) (_%g5549955559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5552255642%_)
                                                      (let ((_%__splice9334993350%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5552255642%_
                                                              '0)))
                                                        (let ((_%tl5554755579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9334993350%_ '1)))
                      (_%target5554555576%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9334993350%_ '0))))
                  (if (gx#stx-null? _%tl5554755579%_)
                      (_%__match9342393424%_
                       _%e5552055635%_
                       _%hd5552155639%_
                       _%tl5552255642%_
                       _%__splice9334993350%_
                       _%target5554555576%_
                       _%tl5554755579%_)
                      (let () (declare (not safe)) (_%g5549955559%_)))))
              (let () (declare (not safe)) (_%g5549955559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5552255642%_)
                                              (let ((_%__splice9334993350%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5552255642%_
                                                      '0)))
                                                (let ((_%tl5554755579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9334993350%_
                                                          '1)))
                                                      (_%target5554555576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9334993350%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5554755579%_)
                                                      (_%__match9342393424%_
                                                       _%e5552055635%_
                                                       _%hd5552155639%_
                                                       _%tl5552255642%_
                                                       _%__splice9334993350%_
                                                       _%target5554555576%_
                                                       _%tl5554755579%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5549955559%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5549955559%_))))
                                      (if (gx#stx-pair/null? _%tl5552255642%_)
                                          (let ((_%__splice9334993350%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5552255642%_
                                                  '0)))
                                            (let ((_%tl5554755579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9334993350%_
                                                      '1)))
                                                  (_%target5554555576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9334993350%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5554755579%_)
                                                  (_%__match9342393424%_
                                                   _%e5552055635%_
                                                   _%hd5552155639%_
                                                   _%tl5552255642%_
                                                   _%__splice9334993350%_
                                                   _%target5554555576%_
                                                   _%tl5554755579%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549955559%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5549955559%_))))
                                  (if (gx#stx-pair/null? _%tl5552255642%_)
                                      (let ((_%__splice9334993350%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5552255642%_
                                              '0)))
                                        (let ((_%tl5554755579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9334993350%_
                                                  '1)))
                                              (_%target5554555576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9334993350%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5554755579%_)
                                              (_%__match9342393424%_
                                               _%e5552055635%_
                                               _%hd5552155639%_
                                               _%tl5552255642%_
                                               _%__splice9334993350%_
                                               _%target5554555576%_
                                               _%tl5554755579%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5549955559%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549955559%_))))))
                          (if (gx#stx-pair/null? _%tl5552255642%_)
                              (let ((_%__splice9334993350%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5552255642%_
                                      '0)))
                                (let ((_%tl5554755579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '1)))
                                      (_%target5554555576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554755579%_)
                                      (_%__match9342393424%_
                                       _%e5552055635%_
                                       _%hd5552155639%_
                                       _%tl5552255642%_
                                       _%__splice9334993350%_
                                       _%target5554555576%_
                                       _%tl5554755579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549955559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549955559%_))))))
                   (_%__match9337193372%_
                    (lambda (_%e5550356067%_
                             _%hd5550456071%_
                             _%tl5550556074%_
                             _%e5550656077%_
                             _%hd5550756081%_
                             _%tl5550856084%_
                             _%__splice9334193342%_
                             _%target5550956087%_
                             _%tl5551156090%_)
                      (letrec ((_%loop5551256093%_
                                (lambda (_%hd5551056097%_ _%rand5551656100%_)
                                  (if (gx#stx-pair? _%hd5551056097%_)
                                      (let ((_%e5551356102%_
                                             (gx#syntax-e _%hd5551056097%_)))
                                        (let ((_%lp-tl5551556109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5551356102%_)))
                                              (_%lp-hd5551456106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5551356102%_))))
                                          (_%loop5551256093%_
                                           _%lp-tl5551556109%_
                                           (cons _%lp-hd5551456106%_
                                                 _%rand5551656100%_))))
                                      (let ((_%rand5551756112%_
                                             (reverse _%rand5551656100%_)))
                                        (let ((_%g5550156115%_
                                               _%rand5551756112%_)
                                              (_%g5550256117%_
                                               _%hd5550756081%_))
                                          (if (gx#identifier? _%g5550256117%_)
                                              (_%__kont9333993340%_
                                               _%g5550156115%_
                                               _%g5550256117%_)
                                              (_%__match9338393384%_
                                               _%e5550356067%_
                                               _%hd5550456071%_
                                               _%tl5550556074%_
                                               _%e5550656077%_
                                               _%hd5550756081%_
                                               _%tl5550856084%_))))))))
                        (_%loop5551256093%_ _%target5550956087%_ '())))))
              (if (gx#stx-pair? _%__stx9333693337%_)
                  (let ((_%e5550356067%_ (gx#syntax-e _%__stx9333693337%_)))
                    (let ((_%tl5550556074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5550356067%_)))
                          (_%hd5550456071%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5550356067%_))))
                      (if (gx#stx-pair? _%tl5550556074%_)
                          (let ((_%e5550656077%_
                                 (gx#syntax-e _%tl5550556074%_)))
                            (let ((_%tl5550856084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5550656077%_)))
                                  (_%hd5550756081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5550656077%_))))
                              (if (gx#stx-pair/null? _%tl5550856084%_)
                                  (let ((_%__splice9334193342%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5550856084%_
                                          '0)))
                                    (let ((_%tl5551156090%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9334193342%_
                                              '1)))
                                          (_%target5550956087%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9334193342%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5551156090%_)
                                          (_%__match9337193372%_
                                           _%e5550356067%_
                                           _%hd5550456071%_
                                           _%tl5550556074%_
                                           _%e5550656077%_
                                           _%hd5550756081%_
                                           _%tl5550856084%_
                                           _%__splice9334193342%_
                                           _%target5550956087%_
                                           _%tl5551156090%_)
                                          (if (gx#stx-pair? _%hd5550756081%_)
                                              (let ((_%e5552655655%_
                                                     (gx#syntax-e
                                                      _%hd5550756081%_)))
                                                (let ((_%tl5552855662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5552655655%_)))
                                                      (_%hd5552755659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5552655655%_))))
                                                  (if (gx#identifier?
                                                       _%hd5552755659%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g98919_|
                                                           _%hd5552755659%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5552855662%_)
                                                              (let ((_%e5552955665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5552855662%_)))
                        (let ((_%tl5553155672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5552955665%_)))
                              (_%hd5553055669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5552955665%_))))
                          (if (gx#stx-pair/null? _%tl5550556074%_)
                              (let ((_%__splice9334993350%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5550556074%_
                                      '0)))
                                (let ((_%tl5554755579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '1)))
                                      (_%target5554555576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554755579%_)
                                      (_%__match9342393424%_
                                       _%e5550356067%_
                                       _%hd5550456071%_
                                       _%tl5550556074%_
                                       _%__splice9334993350%_
                                       _%target5554555576%_
                                       _%tl5554755579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549955559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549955559%_)))))
                      (if (gx#stx-pair/null? _%tl5550556074%_)
                          (let ((_%__splice9334993350%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5550556074%_
                                  '0)))
                            (let ((_%tl5554755579%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9334993350%_ '1)))
                                  (_%target5554555576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9334993350%_
                                      '0))))
                              (if (gx#stx-null? _%tl5554755579%_)
                                  (_%__match9342393424%_
                                   _%e5550356067%_
                                   _%hd5550456071%_
                                   _%tl5550556074%_
                                   _%__splice9334993350%_
                                   _%target5554555576%_
                                   _%tl5554755579%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5549955559%_)))))
                          (let () (declare (not safe)) (_%g5549955559%_))))
                  (if (gx#stx-pair/null? _%tl5550556074%_)
                      (let ((_%__splice9334993350%_
                             (gx#syntax-split-splice->vector
                              _%tl5550556074%_
                              '0)))
                        (let ((_%tl5554755579%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9334993350%_ '1)))
                              (_%target5554555576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9334993350%_ '0))))
                          (if (gx#stx-null? _%tl5554755579%_)
                              (_%__match9342393424%_
                               _%e5550356067%_
                               _%hd5550456071%_
                               _%tl5550556074%_
                               _%__splice9334993350%_
                               _%target5554555576%_
                               _%tl5554755579%_)
                              (let ()
                                (declare (not safe))
                                (_%g5549955559%_)))))
                      (let () (declare (not safe)) (_%g5549955559%_))))
              (if (gx#stx-pair/null? _%tl5550556074%_)
                  (let ((_%__splice9334993350%_
                         (gx#syntax-split-splice->vector _%tl5550556074%_ '0)))
                    (let ((_%tl5554755579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '1)))
                          (_%target5554555576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '0))))
                      (if (gx#stx-null? _%tl5554755579%_)
                          (_%__match9342393424%_
                           _%e5550356067%_
                           _%hd5550456071%_
                           _%tl5550556074%_
                           _%__splice9334993350%_
                           _%target5554555576%_
                           _%tl5554755579%_)
                          (let () (declare (not safe)) (_%g5549955559%_)))))
                  (let () (declare (not safe)) (_%g5549955559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5550556074%_)
                                                  (let ((_%__splice9334993350%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5550556074%_
                                                          '0)))
                                                    (let ((_%tl5554755579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9334993350%_
                                                              '1)))
                                                          (_%target5554555576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9334993350%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5554755579%_)
                                                          (_%__match9342393424%_
                                                           _%e5550356067%_
                                                           _%hd5550456071%_
                                                           _%tl5550556074%_
                                                           _%__splice9334993350%_
                                                           _%target5554555576%_
                                                           _%tl5554755579%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5549955559%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549955559%_)))))))
                                  (if (gx#stx-pair? _%hd5550756081%_)
                                      (let ((_%e5552655655%_
                                             (gx#syntax-e _%hd5550756081%_)))
                                        (let ((_%tl5552855662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5552655655%_)))
                                              (_%hd5552755659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5552655655%_))))
                                          (if (gx#identifier? _%hd5552755659%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g98919_|
                                                   _%hd5552755659%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5552855662%_)
                                                      (let ((_%e5552955665%_
                                                             (gx#syntax-e
                                                              _%tl5552855662%_)))
                                                        (let ((_%tl5553155672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5552955665%_)))
                      (_%hd5553055669%_
                       (let () (declare (not safe)) (##car _%e5552955665%_))))
                  (if (gx#stx-pair/null? _%tl5550556074%_)
                      (let ((_%__splice9334993350%_
                             (gx#syntax-split-splice->vector
                              _%tl5550556074%_
                              '0)))
                        (let ((_%tl5554755579%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9334993350%_ '1)))
                              (_%target5554555576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9334993350%_ '0))))
                          (if (gx#stx-null? _%tl5554755579%_)
                              (_%__match9342393424%_
                               _%e5550356067%_
                               _%hd5550456071%_
                               _%tl5550556074%_
                               _%__splice9334993350%_
                               _%target5554555576%_
                               _%tl5554755579%_)
                              (let ()
                                (declare (not safe))
                                (_%g5549955559%_)))))
                      (let () (declare (not safe)) (_%g5549955559%_)))))
              (if (gx#stx-pair/null? _%tl5550556074%_)
                  (let ((_%__splice9334993350%_
                         (gx#syntax-split-splice->vector _%tl5550556074%_ '0)))
                    (let ((_%tl5554755579%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '1)))
                          (_%target5554555576%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9334993350%_ '0))))
                      (if (gx#stx-null? _%tl5554755579%_)
                          (_%__match9342393424%_
                           _%e5550356067%_
                           _%hd5550456071%_
                           _%tl5550556074%_
                           _%__splice9334993350%_
                           _%target5554555576%_
                           _%tl5554755579%_)
                          (let () (declare (not safe)) (_%g5549955559%_)))))
                  (let () (declare (not safe)) (_%g5549955559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5550556074%_)
                                                      (let ((_%__splice9334993350%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5550556074%_
                                                              '0)))
                                                        (let ((_%tl5554755579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9334993350%_ '1)))
                      (_%target5554555576%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9334993350%_ '0))))
                  (if (gx#stx-null? _%tl5554755579%_)
                      (_%__match9342393424%_
                       _%e5550356067%_
                       _%hd5550456071%_
                       _%tl5550556074%_
                       _%__splice9334993350%_
                       _%target5554555576%_
                       _%tl5554755579%_)
                      (let () (declare (not safe)) (_%g5549955559%_)))))
              (let () (declare (not safe)) (_%g5549955559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5550556074%_)
                                                  (let ((_%__splice9334993350%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5550556074%_
                                                          '0)))
                                                    (let ((_%tl5554755579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9334993350%_
                                                              '1)))
                                                          (_%target5554555576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9334993350%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5554755579%_)
                                                          (_%__match9342393424%_
                                                           _%e5550356067%_
                                                           _%hd5550456071%_
                                                           _%tl5550556074%_
                                                           _%__splice9334993350%_
                                                           _%target5554555576%_
                                                           _%tl5554755579%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5549955559%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549955559%_))))))
                                      (if (gx#stx-pair/null? _%tl5550556074%_)
                                          (let ((_%__splice9334993350%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5550556074%_
                                                  '0)))
                                            (let ((_%tl5554755579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9334993350%_
                                                      '1)))
                                                  (_%target5554555576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9334993350%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5554755579%_)
                                                  (_%__match9342393424%_
                                                   _%e5550356067%_
                                                   _%hd5550456071%_
                                                   _%tl5550556074%_
                                                   _%__splice9334993350%_
                                                   _%target5554555576%_
                                                   _%tl5554755579%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5549955559%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5549955559%_)))))))
                          (if (gx#stx-pair/null? _%tl5550556074%_)
                              (let ((_%__splice9334993350%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5550556074%_
                                      '0)))
                                (let ((_%tl5554755579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '1)))
                                      (_%target5554555576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9334993350%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5554755579%_)
                                      (_%__match9342393424%_
                                       _%e5550356067%_
                                       _%hd5550456071%_
                                       _%tl5550556074%_
                                       _%__splice9334993350%_
                                       _%target5554555576%_
                                       _%tl5554755579%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5549955559%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5549955559%_))))))
                  (let () (declare (not safe)) (_%g5549955559%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56149%_)
        (let* ((_%__stx9342693427%_ _%stx56149%_)
               (_%g5615356174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9342693427%_))))
          (let ((_%__kont9342993430%_
                 (lambda (_%g5615556242%_)
                   (let* ((_%g5625456261%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56149%_
                            _%g5615556242%_))
                          (_%E5625656267%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5625456261%_
                                    '([var . parts]))
                             (void)))
                          (_%K5625756483%_
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
                                                          (_%nil-check?56289%_
                                                           '#f))
                                        (let* ((_%parts5629056298%_
                                                _%parts56285%_)
                                               (_%else5629256310%_
                                                (lambda () _%object56288%_))
                                               (_%K5629456465%_
                                                (lambda (_%rest56314%_
                                                         _%part56316%_)
                                                  (if (and (not _%nil-check?56289%_)
                                                           (let ((__tmp98920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56316%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp98920)))
              (let ((_%str56320%_ (symbol->string _%part56316%_)))
                (_%loop56282%_
                 (cons (let ((__tmp98921
                              (substring
                               _%str56320%_
                               '1
                               (string-length _%str56320%_))))
                         (declare (not safe))
                         (##string->symbol __tmp98921))
                       _%rest56314%_)
                 _%type56287%_
                 _%object56288%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56287%_))
                  (let* ((_%g5632556340%_
                          (lambda (_%g5632656336%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5632656336%_)))
                         (_%g5632456457%_
                          (lambda (_%g5632656344%_)
                            (if (gx#stx-pair? _%g5632656344%_)
                                (let ((_%e5632956347%_
                                       (gx#syntax-e _%g5632656344%_)))
                                  (let ((_%hd5633056351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5632956347%_)))
                                        (_%tl5633156354%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5632956347%_))))
                                    (if (gx#stx-pair? _%tl5633156354%_)
                                        (let ((_%e5633256357%_
                                               (gx#syntax-e _%tl5633156354%_)))
                                          (let ((_%hd5633356361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5633256357%_)))
                                                (_%tl5633456364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5633256357%_))))
                                            (if (gx#stx-null? _%tl5633456364%_)
                                                ((lambda (_%g5632756367%_
                                                          _%g5632856369%_)
                                                   (if (null? _%rest56314%_)
                                                       (let ((_%$e56399%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56287%_
                                                               _%part56316%_)))
                                                         (if _%$e56399%_
                                                             ((lambda (_%slot-type56403%_)
                                                                (let* ((_%g5640656414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5640756410%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5640756410%_)))
                               (_%g5640556437%_
                                (lambda (_%g5640756418%_)
                                  ((lambda (_%g5640856421%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5640856421%_
                                                             '()))
                                                 (cons (cons _%g5632756367%_
                                                             (cons _%g5632856369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5640756418%_))))
                          (_%g5640556437%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56149%_
                              _%slot-type56403%_)))))
                      _%$e56399%_)
                     (if _%nil-check?56289%_
                         (cons _%g5632756367%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5632856369%_ '()))
                                     '()))
                         (cons _%g5632756367%_ (cons _%g5632856369%_ '())))))
               (let ((_%$e56445%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56287%_
                       _%part56316%_)))
                 (if _%$e56445%_
                     ((lambda (_%type56449%_)
                        (let ((_%type56452%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56149%_
                                  _%type56449%_))))
                          (if _%nil-check?56289%_
                              (_%loop56282%_
                               _%rest56314%_
                               _%type56452%_
                               (cons _%g5632756367%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5632856369%_ '()))
                                           '()))
                               '#f)
                              (_%loop56282%_
                               _%rest56314%_
                               _%type56452%_
                               (cons _%g5632756367%_
                                     (cons _%g5632856369%_ '()))
                               '#f))))
                      _%$e56445%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56149%_
                      _%g5615556242%_
                      _%part56316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5633356361%_
                                                 _%hd5633056351%_)
                                                (_%g5632556340%_
                                                 _%g5632656344%_))))
                                        (_%g5632556340%_ _%g5632656344%_))))
                                (_%g5632556340%_ _%g5632656344%_)))))
                    (_%g5632456457%_
                     (list (if _%nil-check?56289%_
                               (cons 'check-nil! (cons _%object56288%_ '()))
                               _%object56288%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56149%_
                            _%type56287%_
                            _%part56316%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56287%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56149%_
                       _%type56287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5629056298%_)
                                              (let ((_%hd5629556469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5629056298%_)))
                                                    (_%tl5629656472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5629056298%_))))
                                                (let* ((_%part56475%_
                                                        _%hd5629556469%_)
                                                       (_%rest56478%_
                                                        _%tl5629656472%_))
                                                  (_%K5629456465%_
                                                   _%rest56478%_
                                                   _%part56475%_)))
                                              (_%else5629256310%_)))))
                                    _%$e56275%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5615556242%_ '())))))))
                     (if (pair? _%g5625456261%_)
                         (let ((_%hd5625856487%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5625456261%_)))
                               (_%tl5625956490%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5625456261%_))))
                           (let* ((_%var56493%_ _%hd5625856487%_)
                                  (_%parts56496%_ _%tl5625956490%_))
                             (_%K5625756483%_ _%parts56496%_ _%var56493%_)))
                         (_%E5625656267%_)))))
                (_%__kont9343193432%_
                 (lambda (_%g5616256201%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5616256201%_ '())))))
            (let ((_%__match9344793448%_
                   (lambda (_%e5615656222%_
                            _%hd5615756226%_
                            _%tl5615856229%_
                            _%e5615956232%_
                            _%hd5616056236%_
                            _%tl5616156239%_)
                     (let ((_%g5615556242%_ _%hd5616056236%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5615556242%_)
                           (_%__kont9342993430%_ _%g5615556242%_)
                           (_%__kont9343193432%_ _%hd5616056236%_))))))
              (if (gx#stx-pair? _%__stx9342693427%_)
                  (let ((_%e5615656222%_ (gx#syntax-e _%__stx9342693427%_)))
                    (let ((_%tl5615856229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5615656222%_)))
                          (_%hd5615756226%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5615656222%_))))
                      (if (gx#stx-pair? _%tl5615856229%_)
                          (let ((_%e5615956232%_
                                 (gx#syntax-e _%tl5615856229%_)))
                            (let ((_%tl5616156239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5615956232%_)))
                                  (_%hd5616056236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5615956232%_))))
                              (if (gx#stx-null? _%tl5616156239%_)
                                  (_%__match9344793448%_
                                   _%e5615656222%_
                                   _%hd5615756226%_
                                   _%tl5615856229%_
                                   _%e5615956232%_
                                   _%hd5616056236%_
                                   _%tl5616156239%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5615356174%_)))))
                          (let () (declare (not safe)) (_%g5615356174%_)))))
                  (let () (declare (not safe)) (_%g5615356174%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56503%_)
        (let* ((_%__stx9346493465%_ _%stx56503%_)
               (_%g5650756536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9346493465%_))))
          (let ((_%__kont9346793468%_
                 (lambda (_%g5650956628%_ _%g5651056630%_)
                   (let* ((_%g5664456651%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56503%_
                            _%g5651056630%_))
                          (_%E5664656657%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5664456651%_
                                    '([var . parts]))
                             (void)))
                          (_%K5664756887%_
                           (lambda (_%parts56661%_ _%var56663%_)
                             (let ((_%$e56665%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56663%_))))
                               (if _%$e56665%_
                                   ((lambda (_%te56669%_)
                                      (let _%loop56672%_ ((_%parts56675%_
                                                           _%parts56661%_)
                                                          (_%type56677%_
                                                           (##direct-structure-ref
                                                            _%te56669%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56678%_
                                                           _%var56663%_)
                                                          (_%checked-mutator?56679%_
                                                           (##direct-structure-ref
                                                            _%te56669%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56680%_
                                                           '#f))
                                        (let* ((_%parts5668156688%_
                                                _%parts56675%_)
                                               (_%E5668356694%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5668156688%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5668456869%_
                                                (lambda (_%rest56698%_
                                                         _%part56700%_)
                                                  (if (and (not _%nil-check?56680%_)
                                                           (let ((__tmp98922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56700%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp98922)))
              (let ((_%str56704%_ (symbol->string _%part56700%_)))
                (_%loop56672%_
                 (cons (let ((__tmp98923
                              (substring
                               _%str56704%_
                               '1
                               (string-length _%str56704%_))))
                         (declare (not safe))
                         (##string->symbol __tmp98923))
                       _%rest56698%_)
                 _%type56677%_
                 _%object56678%_
                 _%checked-mutator?56679%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56677%_))
                  (if (null? _%rest56698%_)
                      (let* ((_%g5671156726%_
                              (lambda (_%g5671256722%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5671256722%_)))
                             (_%g5671056783%_
                              (lambda (_%g5671256730%_)
                                (if (gx#stx-pair? _%g5671256730%_)
                                    (let ((_%e5671556733%_
                                           (gx#syntax-e _%g5671256730%_)))
                                      (let ((_%hd5671656737%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5671556733%_)))
                                            (_%tl5671756740%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5671556733%_))))
                                        (if (gx#stx-pair? _%tl5671756740%_)
                                            (let ((_%e5671856743%_
                                                   (gx#syntax-e
                                                    _%tl5671756740%_)))
                                              (let ((_%hd5671956747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5671856743%_)))
                                                    (_%tl5672056750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5671856743%_))))
                                                (if (gx#stx-null?
                                                     _%tl5672056750%_)
                                                    ((lambda (_%g5671356753%_
                                                              _%g5671456755%_)
                                                       (if _%nil-check?56680%_
                                                           (cons _%g5671356753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5671456755%_ '()))
                               (cons _%g5650956628%_ '())))
                   (cons _%g5671356753%_
                         (cons _%g5671456755%_ (cons _%g5650956628%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5671956747%_
                                                     _%hd5671656737%_)
                                                    (_%g5671156726%_
                                                     _%g5671256730%_))))
                                            (_%g5671156726%_
                                             _%g5671256730%_))))
                                    (_%g5671156726%_ _%g5671256730%_)))))
                        (_%g5671056783%_
                         (list _%object56678%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56503%_
                                _%type56677%_
                                _%part56700%_
                                (if _%checked-mutator?56679%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56677%_
                                     _%part56700%_)
                                    '#f)))))
                      (let ((_%$e56787%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56677%_
                              _%part56700%_)))
                        (if _%$e56787%_
                            ((lambda (_%type56791%_)
                               (let* ((_%type56794%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56503%_
                                          _%type56791%_)))
                                      (_%g5679756812%_
                                       (lambda (_%g5679856808%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5679856808%_)))
                                      (_%g5679656859%_
                                       (lambda (_%g5679856816%_)
                                         (if (gx#stx-pair? _%g5679856816%_)
                                             (let ((_%e5680156819%_
                                                    (gx#syntax-e
                                                     _%g5679856816%_)))
                                               (let ((_%hd5680256823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5680156819%_)))
                                                     (_%tl5680356826%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5680156819%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5680356826%_)
                                                     (let ((_%e5680456829%_
                                                            (gx#syntax-e
                                                             _%tl5680356826%_)))
                                                       (let ((_%hd5680556833%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5680456829%_)))
                     (_%tl5680656836%_
                      (let () (declare (not safe)) (##cdr _%e5680456829%_))))
                 (if (gx#stx-null? _%tl5680656836%_)
                     ((lambda (_%g5679956839%_ _%g5680056841%_)
                        (_%loop56672%_
                         _%rest56698%_
                         _%type56794%_
                         (cons _%g5679956839%_ (cons _%g5680056841%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56794%_
                          _%part56700%_)
                         '#f))
                      _%hd5680556833%_
                      _%hd5680256823%_)
                     (_%g5679756812%_ _%g5679856816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5679756812%_
                                                      _%g5679856816%_))))
                                             (_%g5679756812%_
                                              _%g5679856816%_)))))
                                 (_%g5679656859%_
                                  (list (if _%nil-check?56680%_
                                            (cons 'check-nil!
                                                  (cons _%object56678%_ '()))
                                            _%object56678%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56503%_
                                         _%type56794%_
                                         _%part56700%_)))))
                             _%$e56787%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56503%_
                             _%g5651056630%_
                             _%part56700%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56677%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56503%_
                       _%type56677%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5668156688%_)
                                              (let ((_%hd5668556873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5668156688%_)))
                                                    (_%tl5668656876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5668156688%_))))
                                                (let* ((_%part56879%_
                                                        _%hd5668556873%_)
                                                       (_%rest56882%_
                                                        _%tl5668656876%_))
                                                  (_%K5668456869%_
                                                   _%rest56882%_
                                                   _%part56879%_)))
                                              (_%E5668356694%_)))))
                                    _%$e56665%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56503%_)))))))
                     (if (pair? _%g5664456651%_)
                         (let ((_%hd5664856891%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5664456651%_)))
                               (_%tl5664956894%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5664456651%_))))
                           (let* ((_%var56897%_ _%hd5664856891%_)
                                  (_%parts56900%_ _%tl5664956894%_))
                             (_%K5664756887%_ _%parts56900%_ _%var56897%_)))
                         (_%E5664656657%_)))))
                (_%__kont9346993470%_
                 (lambda (_%g5652056573%_ _%g5652156575%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56503%_)))))
            (let ((_%__match9349193492%_
                   (lambda (_%e5651156598%_
                            _%hd5651256602%_
                            _%tl5651356605%_
                            _%e5651456608%_
                            _%hd5651556612%_
                            _%tl5651656615%_
                            _%e5651756618%_
                            _%hd5651856622%_
                            _%tl5651956625%_)
                     (let ((_%g5650956628%_ _%hd5651856622%_)
                           (_%g5651056630%_ _%hd5651556612%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5651056630%_)
                           (_%__kont9346793468%_
                            _%g5650956628%_
                            _%g5651056630%_)
                           (_%__kont9346993470%_
                            _%hd5651856622%_
                            _%hd5651556612%_))))))
              (if (gx#stx-pair? _%__stx9346493465%_)
                  (let ((_%e5651156598%_ (gx#syntax-e _%__stx9346493465%_)))
                    (let ((_%tl5651356605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5651156598%_)))
                          (_%hd5651256602%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5651156598%_))))
                      (if (gx#stx-pair? _%tl5651356605%_)
                          (let ((_%e5651456608%_
                                 (gx#syntax-e _%tl5651356605%_)))
                            (let ((_%tl5651656615%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5651456608%_)))
                                  (_%hd5651556612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5651456608%_))))
                              (if (gx#stx-pair? _%tl5651656615%_)
                                  (let ((_%e5651756618%_
                                         (gx#syntax-e _%tl5651656615%_)))
                                    (let ((_%tl5651956625%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5651756618%_)))
                                          (_%hd5651856622%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5651756618%_))))
                                      (if (gx#stx-null? _%tl5651956625%_)
                                          (_%__match9349193492%_
                                           _%e5651156598%_
                                           _%hd5651256602%_
                                           _%tl5651356605%_
                                           _%e5651456608%_
                                           _%hd5651556612%_
                                           _%tl5651656615%_
                                           _%e5651756618%_
                                           _%hd5651856622%_
                                           _%tl5651956625%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5650756536%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5650756536%_)))))
                          (let () (declare (not safe)) (_%g5650756536%_)))))
                  (let () (declare (not safe)) (_%g5650756536%_))))))))))

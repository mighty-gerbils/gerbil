(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g99638_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99639_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99640_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99643_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99644_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99647_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99648_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99649_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99650_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99654_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99655_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99656_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99657_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g99661_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51193%_)
        (let* ((_%__stx9297692977%_ _%stx51193%_)
               (_%g5120251411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9297692977%_))))
          (let ((_%__kont9297992980%_
                 (lambda (_%g5120452303%_
                          _%g5120552305%_
                          _%g5120652306%_
                          _%g5120752307%_
                          _%g5120852308%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5120852308%_
                                     (cons _%g5120752307%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5120852308%_
                                                       (cons _%g5120652306%_
                                                             (cons _%g5120552305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5235152354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5235252357%_)
                  (cons _%g5235152354%_ _%g5235252357%_))
                '()
                _%g5120452303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9298392984%_
                 (lambda (_%g5123652149%_
                          _%g5123752151%_
                          _%g5123852152%_
                          _%g5123952153%_
                          _%g5124052154%_
                          _%g5124152155%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5124152155%_
                                     (cons _%g5124052154%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5124152155%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5123952153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5124152155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5123852152%_
                                       (cons _%g5123752151%_ '())))
                           (foldr (lambda (_%g5219952202%_ _%g5220052205%_)
                                    (cons _%g5219952202%_ _%g5220052205%_))
                                  '()
                                  _%g5123652149%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9298792988%_
                 (lambda (_%g5127551968%_
                          _%g5127651970%_
                          _%g5127751971%_
                          _%g5127851972%_)
                   (let ((_%meta52009%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51193%_
                             _%g5127651970%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52009%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5127851972%_
                                           (cons _%g5127751971%_
                                                 (cons _%g5127651970%_ '())))
                                     (foldr (lambda (_%g5201352016%_
                                                     _%g5201452019%_)
                                              (cons _%g5201352016%_
                                                    _%g5201452019%_))
                                            '()
                                            _%g5127551968%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52009%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5127851972%_
                                               (cons _%g5127751971%_
                                                     (cons _%g5127651970%_
                                                           '())))
                                         (foldr (lambda (_%g5202352026%_
                                                         _%g5202452029%_)
                                                  (cons _%g5202352026%_
                                                        _%g5202452029%_))
                                                '()
                                                _%g5127551968%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51193%_
                              _%g5127651970%_
                              _%meta52009%_))))))
                (_%__kont9299192992%_
                 (lambda (_%g5130351848%_ _%g5130451850%_ _%g5130551851%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5130551851%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5130451850%_ '())))
                               (foldr (lambda (_%g5187451877%_ _%g5187551880%_)
                                        (cons _%g5187451877%_ _%g5187551880%_))
                                      '()
                                      _%g5130351848%_)))))
                (_%__kont9299592996%_
                 (lambda (_%g5133051708%_
                          _%g5133151710%_
                          _%g5133251711%_
                          _%g5133351712%_
                          _%g5133451713%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5133451713%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5133351712%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5133451713%_
                                                       (cons _%g5133251711%_
                                                             (cons _%g5133151710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5175451757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5175551760%_)
                  (cons _%g5175451757%_ _%g5175551760%_))
                '()
                _%g5133051708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9299993000%_
                 (lambda (_%g5136551568%_
                          _%g5136651570%_
                          _%g5136751571%_
                          _%g5136851572%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5136851572%_ _%g5136751571%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5136651570%_
                                                 (foldr (lambda (_%g5159451597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5159551600%_)
                  (cons _%g5159451597%_ _%g5159551600%_))
                '()
                _%g5136551568%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9300393004%_
                 (lambda (_%g5139051466%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5148451487%_ _%g5148551490%_)
                                        (cons _%g5148451487%_ _%g5148551490%_))
                                      '()
                                      _%g5139051466%_))))))
            (let* ((_%__match9330993310%_
                    (lambda (_%e5139151418%_
                             _%hd5139251422%_
                             _%tl5139351425%_
                             _%e5139451428%_
                             _%hd5139551432%_
                             _%tl5139651435%_
                             _%__splice9300593006%_
                             _%target5139751438%_
                             _%tl5139951441%_)
                      (letrec ((_%loop5140051444%_
                                (lambda (_%hd5139851448%_ _%body5140451451%_)
                                  (if (gx#stx-pair? _%hd5139851448%_)
                                      (let ((_%e5140151453%_
                                             (gx#syntax-e _%hd5139851448%_)))
                                        (let ((_%lp-tl5140351460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5140151453%_)))
                                              (_%lp-hd5140251457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5140151453%_))))
                                          (_%loop5140051444%_
                                           _%lp-tl5140351460%_
                                           (cons _%lp-hd5140251457%_
                                                 _%body5140451451%_))))
                                      (let ((_%body5140551463%_
                                             (reverse _%body5140451451%_)))
                                        (_%__kont9300393004%_
                                         _%body5140551463%_))))))
                        (_%loop5140051444%_ _%target5139751438%_ '()))))
                   (_%__match9328793288%_
                    (lambda (_%e5136951500%_
                             _%hd5137051504%_
                             _%tl5137151507%_
                             _%e5137251510%_
                             _%hd5137351514%_
                             _%tl5137451517%_
                             _%e5137551520%_
                             _%hd5137651524%_
                             _%tl5137751527%_
                             _%e5137851530%_
                             _%hd5137951534%_
                             _%tl5138051537%_
                             _%__splice9300193002%_
                             _%target5138151540%_
                             _%tl5138351543%_)
                      (letrec ((_%loop5138451546%_
                                (lambda (_%hd5138251550%_ _%body5138851553%_)
                                  (if (gx#stx-pair? _%hd5138251550%_)
                                      (let ((_%e5138551555%_
                                             (gx#syntax-e _%hd5138251550%_)))
                                        (let ((_%lp-tl5138751562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5138551555%_)))
                                              (_%lp-hd5138651559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5138551555%_))))
                                          (_%loop5138451546%_
                                           _%lp-tl5138751562%_
                                           (cons _%lp-hd5138651559%_
                                                 _%body5138851553%_))))
                                      (let ((_%body5138951565%_
                                             (reverse _%body5138851553%_)))
                                        (let ((_%g5136551568%_
                                               _%body5138951565%_)
                                              (_%g5136651570%_
                                               _%tl5137751527%_)
                                              (_%g5136751571%_
                                               _%tl5138051537%_)
                                              (_%g5136851572%_
                                               _%hd5137951534%_))
                                          (if (gx#identifier? _%g5136851572%_)
                                              (_%__kont9299993000%_
                                               _%g5136551568%_
                                               _%g5136651570%_
                                               _%g5136751571%_
                                               _%g5136851572%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_)))))))))
                        (_%loop5138451546%_ _%target5138151540%_ '()))))
                   (_%__match9327393274%_
                    (lambda (_%e5136951500%_
                             _%hd5137051504%_
                             _%tl5137151507%_
                             _%e5137251510%_
                             _%hd5137351514%_
                             _%tl5137451517%_
                             _%e5137551520%_
                             _%hd5137651524%_
                             _%tl5137751527%_)
                      (if (gx#stx-pair? _%hd5137651524%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5137651524%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (if (gx#stx-pair/null? _%tl5137451517%_)
                                  (let ((_%__splice9300193002%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5137451517%_
                                          '0)))
                                    (let ((_%tl5138351543%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '1)))
                                          (_%target5138151540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5138351543%_)
                                          (_%__match9328793288%_
                                           _%e5136951500%_
                                           _%hd5137051504%_
                                           _%tl5137151507%_
                                           _%e5137251510%_
                                           _%hd5137351514%_
                                           _%tl5137451517%_
                                           _%e5137551520%_
                                           _%hd5137651524%_
                                           _%tl5137751527%_
                                           _%e5137851530%_
                                           _%hd5137951534%_
                                           _%tl5138051537%_
                                           _%__splice9300193002%_
                                           _%target5138151540%_
                                           _%tl5138351543%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                   (_%__match9325593256%_
                    (lambda (_%e5133551610%_
                             _%hd5133651614%_
                             _%tl5133751617%_
                             _%e5133851620%_
                             _%hd5133951624%_
                             _%tl5134051627%_
                             _%e5134151630%_
                             _%hd5134251634%_
                             _%tl5134351637%_
                             _%e5134451640%_
                             _%hd5134551644%_
                             _%tl5134651647%_
                             _%e5134751650%_
                             _%hd5134851654%_
                             _%tl5134951657%_
                             _%e5135051660%_
                             _%hd5135151664%_
                             _%tl5135251667%_
                             _%e5135351670%_
                             _%hd5135451674%_
                             _%tl5135551677%_
                             _%__splice9299792998%_
                             _%target5135651680%_
                             _%tl5135851683%_)
                      (letrec ((_%loop5135951686%_
                                (lambda (_%hd5135751690%_ _%body5136351693%_)
                                  (if (gx#stx-pair? _%hd5135751690%_)
                                      (let ((_%e5136051695%_
                                             (gx#syntax-e _%hd5135751690%_)))
                                        (let ((_%lp-tl5136251702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5136051695%_)))
                                              (_%lp-hd5136151699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5136051695%_))))
                                          (_%loop5135951686%_
                                           _%lp-tl5136251702%_
                                           (cons _%lp-hd5136151699%_
                                                 _%body5136351693%_))))
                                      (let ((_%body5136451705%_
                                             (reverse _%body5136351693%_)))
                                        (let ((_%g5133051708%_
                                               _%body5136451705%_)
                                              (_%g5133151710%_
                                               _%hd5135451674%_)
                                              (_%g5133251711%_
                                               _%hd5135151664%_)
                                              (_%g5133351712%_
                                               _%hd5134851654%_)
                                              (_%g5133451713%_
                                               _%hd5134251634%_))
                                          (if (and (gx#identifier?
                                                    _%g5133451713%_)
                                                   (gx#identifier?
                                                    _%g5133151710%_)
                                                   (gx#identifier?
                                                    _%g5133251711%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5133251711%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5133251711%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5133251711%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5133251711%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9299592996%_
                                               _%g5133051708%_
                                               _%g5133151710%_
                                               _%g5133251711%_
                                               _%g5133351712%_
                                               _%g5133451713%_)
                                              (_%__match9327393274%_
                                               _%e5133551610%_
                                               _%hd5133651614%_
                                               _%tl5133751617%_
                                               _%e5133851620%_
                                               _%hd5133951624%_
                                               _%tl5134051627%_
                                               _%e5134151630%_
                                               _%hd5134251634%_
                                               _%tl5134351637%_))))))))
                        (_%loop5135951686%_ _%target5135651680%_ '()))))
                   (_%__match9319993200%_
                    (lambda (_%e5130651770%_
                             _%hd5130751774%_
                             _%tl5130851777%_
                             _%e5130951780%_
                             _%hd5131051784%_
                             _%tl5131151787%_
                             _%e5131251790%_
                             _%hd5131351794%_
                             _%tl5131451797%_
                             _%e5131551800%_
                             _%hd5131651804%_
                             _%tl5131751807%_
                             _%e5131851810%_
                             _%hd5131951814%_
                             _%tl5132051817%_
                             _%__splice9299392994%_
                             _%target5132151820%_
                             _%tl5132351823%_)
                      (letrec ((_%loop5132451826%_
                                (lambda (_%hd5132251830%_ _%body5132851833%_)
                                  (if (gx#stx-pair? _%hd5132251830%_)
                                      (let ((_%e5132551835%_
                                             (gx#syntax-e _%hd5132251830%_)))
                                        (let ((_%lp-tl5132751842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5132551835%_)))
                                              (_%lp-hd5132651839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5132551835%_))))
                                          (_%loop5132451826%_
                                           _%lp-tl5132751842%_
                                           (cons _%lp-hd5132651839%_
                                                 _%body5132851833%_))))
                                      (let ((_%body5132951845%_
                                             (reverse _%body5132851833%_)))
                                        (let ((_%g5130351848%_
                                               _%body5132951845%_)
                                              (_%g5130451850%_
                                               _%hd5131951814%_)
                                              (_%g5130551851%_
                                               _%hd5131351794%_))
                                          (if (gx#identifier? _%g5130551851%_)
                                              (_%__kont9299192992%_
                                               _%g5130351848%_
                                               _%g5130451850%_
                                               _%g5130551851%_)
                                              (_%__match9327393274%_
                                               _%e5130651770%_
                                               _%hd5130751774%_
                                               _%tl5130851777%_
                                               _%e5130951780%_
                                               _%hd5131051784%_
                                               _%tl5131151787%_
                                               _%e5131251790%_
                                               _%hd5131351794%_
                                               _%tl5131451797%_))))))))
                        (_%loop5132451826%_ _%target5132151820%_ '()))))
                   (_%__match9317993180%_
                    (lambda (_%e5130651770%_
                             _%hd5130751774%_
                             _%tl5130851777%_
                             _%e5130951780%_
                             _%hd5131051784%_
                             _%tl5131151787%_
                             _%e5131251790%_
                             _%hd5131351794%_
                             _%tl5131451797%_
                             _%e5131551800%_
                             _%hd5131651804%_
                             _%tl5131751807%_)
                      (if (gx#identifier? _%hd5131651804%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g99638_|
                               _%hd5131651804%_)
                              (if (gx#stx-pair? _%tl5131751807%_)
                                  (let ((_%e5131851810%_
                                         (gx#syntax-e _%tl5131751807%_)))
                                    (let ((_%tl5132051817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5131851810%_)))
                                          (_%hd5131951814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5131851810%_))))
                                      (if (gx#stx-null? _%tl5132051817%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5131151787%_)
                                              (let ((_%__splice9299392994%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5131151787%_
                                                      '0)))
                                                (let ((_%tl5132351823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9299392994%_
                                                          '1)))
                                                      (_%target5132151820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9299392994%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5132351823%_)
                                                      (_%__match9319993200%_
                                                       _%e5130651770%_
                                                       _%hd5130751774%_
                                                       _%tl5130851777%_
                                                       _%e5130951780%_
                                                       _%hd5131051784%_
                                                       _%tl5131151787%_
                                                       _%e5131251790%_
                                                       _%hd5131351794%_
                                                       _%tl5131451797%_
                                                       _%e5131551800%_
                                                       _%hd5131651804%_
                                                       _%tl5131751807%_
                                                       _%e5131851810%_
                                                       _%hd5131951814%_
                                                       _%tl5132051817%_
                                                       _%__splice9299392994%_
                                                       _%target5132151820%_
                                                       _%tl5132351823%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5131351794%_)
                                                          (let ((_%e5137851530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5131351794%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5131351794%_)
                                                  (let ((_%e5137851530%_
                                                         (gx#syntax-e
                                                          _%hd5131351794%_)))
                                                    (let ((_%tl5138051537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5137851530%_)))
                                                          (_%hd5137951534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5137851530%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5120251411%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))
                                          (if (gx#stx-pair? _%tl5132051817%_)
                                              (let ((_%e5135051660%_
                                                     (gx#syntax-e
                                                      _%tl5132051817%_)))
                                                (let ((_%tl5135251667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5135051660%_)))
                                                      (_%hd5135151664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5135051660%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5135251667%_)
                                                      (let ((_%e5135351670%_
                                                             (gx#syntax-e
                                                              _%tl5135251667%_)))
                                                        (let ((_%tl5135551677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5135351670%_)))
                      (_%hd5135451674%_
                       (let () (declare (not safe)) (##car _%e5135351670%_))))
                  (if (gx#stx-null? _%tl5135551677%_)
                      (if (gx#stx-pair/null? _%tl5131151787%_)
                          (let ((_%__splice9299792998%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5131151787%_
                                  '0)))
                            (let ((_%tl5135851683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9299792998%_ '1)))
                                  (_%target5135651680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9299792998%_
                                      '0))))
                              (if (gx#stx-null? _%tl5135851683%_)
                                  (_%__match9325593256%_
                                   _%e5130651770%_
                                   _%hd5130751774%_
                                   _%tl5130851777%_
                                   _%e5130951780%_
                                   _%hd5131051784%_
                                   _%tl5131151787%_
                                   _%e5131251790%_
                                   _%hd5131351794%_
                                   _%tl5131451797%_
                                   _%e5131551800%_
                                   _%hd5131651804%_
                                   _%tl5131751807%_
                                   _%e5131851810%_
                                   _%hd5131951814%_
                                   _%tl5132051817%_
                                   _%e5135051660%_
                                   _%hd5135151664%_
                                   _%tl5135251667%_
                                   _%e5135351670%_
                                   _%hd5135451674%_
                                   _%tl5135551677%_
                                   _%__splice9299792998%_
                                   _%target5135651680%_
                                   _%tl5135851683%_)
                                  (if (gx#stx-pair? _%hd5131351794%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5131351794%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))
                          (if (gx#stx-pair? _%hd5131351794%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5131351794%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                      (if (gx#stx-pair? _%hd5131351794%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5131351794%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (if (gx#stx-pair/null? _%tl5131151787%_)
                                  (let ((_%__splice9300193002%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5131151787%_
                                          '0)))
                                    (let ((_%tl5138351543%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '1)))
                                          (_%target5138151540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5138351543%_)
                                          (_%__match9328793288%_
                                           _%e5130651770%_
                                           _%hd5130751774%_
                                           _%tl5130851777%_
                                           _%e5130951780%_
                                           _%hd5131051784%_
                                           _%tl5131151787%_
                                           _%e5131251790%_
                                           _%hd5131351794%_
                                           _%tl5131451797%_
                                           _%e5137851530%_
                                           _%hd5137951534%_
                                           _%tl5138051537%_
                                           _%__splice9300193002%_
                                           _%target5138151540%_
                                           _%tl5138351543%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_))))))
              (if (gx#stx-pair? _%hd5131351794%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5131351794%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5131151787%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5131151787%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5130651770%_
                                   _%hd5130751774%_
                                   _%tl5130851777%_
                                   _%e5130951780%_
                                   _%hd5131051784%_
                                   _%tl5131151787%_
                                   _%e5131251790%_
                                   _%hd5131351794%_
                                   _%tl5131451797%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5131351794%_)
                                                  (let ((_%e5137851530%_
                                                         (gx#syntax-e
                                                          _%hd5131351794%_)))
                                                    (let ((_%tl5138051537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5137851530%_)))
                                                          (_%hd5137951534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5137851530%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5131151787%_)
                                                          (let ((_%__splice9300193002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5131151787%_ '0)))
                    (let ((_%tl5138351543%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '1)))
                          (_%target5138151540%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '0))))
                      (if (gx#stx-null? _%tl5138351543%_)
                          (_%__match9328793288%_
                           _%e5130651770%_
                           _%hd5130751774%_
                           _%tl5130851777%_
                           _%e5130951780%_
                           _%hd5131051784%_
                           _%tl5131151787%_
                           _%e5131251790%_
                           _%hd5131351794%_
                           _%tl5131451797%_
                           _%e5137851530%_
                           _%hd5137951534%_
                           _%tl5138051537%_
                           _%__splice9300193002%_
                           _%target5138151540%_
                           _%tl5138351543%_)
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))))
                                  (if (gx#stx-pair? _%hd5131351794%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5131351794%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5131151787%_)
                                              (let ((_%__splice9300193002%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5131151787%_
                                                      '0)))
                                                (let ((_%tl5138351543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '1)))
                                                      (_%target5138151540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5138351543%_)
                                                      (_%__match9328793288%_
                                                       _%e5130651770%_
                                                       _%hd5130751774%_
                                                       _%tl5130851777%_
                                                       _%e5130951780%_
                                                       _%hd5131051784%_
                                                       _%tl5131151787%_
                                                       _%e5131251790%_
                                                       _%hd5131351794%_
                                                       _%tl5131451797%_
                                                       _%e5137851530%_
                                                       _%hd5137951534%_
                                                       _%tl5138051537%_
                                                       _%__splice9300193002%_
                                                       _%target5138151540%_
                                                       _%tl5138351543%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5120251411%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                              (if (gx#stx-pair? _%hd5131351794%_)
                                  (let ((_%e5137851530%_
                                         (gx#syntax-e _%hd5131351794%_)))
                                    (let ((_%tl5138051537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137851530%_)))
                                          (_%hd5137951534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137851530%_))))
                                      (if (gx#stx-pair/null? _%tl5131151787%_)
                                          (let ((_%__splice9300193002%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5131151787%_
                                                  '0)))
                                            (let ((_%tl5138351543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9300193002%_
                                                      '1)))
                                                  (_%target5138151540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9300193002%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5138351543%_)
                                                  (_%__match9328793288%_
                                                   _%e5130651770%_
                                                   _%hd5130751774%_
                                                   _%tl5130851777%_
                                                   _%e5130951780%_
                                                   _%hd5131051784%_
                                                   _%tl5131151787%_
                                                   _%e5131251790%_
                                                   _%hd5131351794%_
                                                   _%tl5131451797%_
                                                   _%e5137851530%_
                                                   _%hd5137951534%_
                                                   _%tl5138051537%_
                                                   _%__splice9300193002%_
                                                   _%target5138151540%_
                                                   _%tl5138351543%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                          (if (gx#stx-pair? _%hd5131351794%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5131351794%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (if (gx#stx-pair/null? _%tl5131151787%_)
                                      (let ((_%__splice9300193002%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5131151787%_
                                              '0)))
                                        (let ((_%tl5138351543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9300193002%_
                                                  '1)))
                                              (_%target5138151540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9300193002%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5138351543%_)
                                              (_%__match9328793288%_
                                               _%e5130651770%_
                                               _%hd5130751774%_
                                               _%tl5130851777%_
                                               _%e5130951780%_
                                               _%hd5131051784%_
                                               _%tl5131151787%_
                                               _%e5131251790%_
                                               _%hd5131351794%_
                                               _%tl5131451797%_
                                               _%e5137851530%_
                                               _%hd5137951534%_
                                               _%tl5138051537%_
                                               _%__splice9300193002%_
                                               _%target5138151540%_
                                               _%tl5138351543%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_))))))
                   (_%__match9315593156%_
                    (lambda (_%e5127951890%_
                             _%hd5128051894%_
                             _%tl5128151897%_
                             _%e5128251900%_
                             _%hd5128351904%_
                             _%tl5128451907%_
                             _%e5128551910%_
                             _%hd5128651914%_
                             _%tl5128751917%_
                             _%e5128851920%_
                             _%hd5128951924%_
                             _%tl5129051927%_
                             _%e5129151930%_
                             _%hd5129251934%_
                             _%tl5129351937%_
                             _%__splice9298992990%_
                             _%target5129451940%_
                             _%tl5129651943%_)
                      (letrec ((_%loop5129751946%_
                                (lambda (_%hd5129551950%_ _%body5130151953%_)
                                  (if (gx#stx-pair? _%hd5129551950%_)
                                      (let ((_%e5129851955%_
                                             (gx#syntax-e _%hd5129551950%_)))
                                        (let ((_%lp-tl5130051962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5129851955%_)))
                                              (_%lp-hd5129951959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5129851955%_))))
                                          (_%loop5129751946%_
                                           _%lp-tl5130051962%_
                                           (cons _%lp-hd5129951959%_
                                                 _%body5130151953%_))))
                                      (let ((_%body5130251965%_
                                             (reverse _%body5130151953%_)))
                                        (let ((_%g5127551968%_
                                               _%body5130251965%_)
                                              (_%g5127651970%_
                                               _%hd5129251934%_)
                                              (_%g5127751971%_
                                               _%hd5128951924%_)
                                              (_%g5127851972%_
                                               _%hd5128651914%_))
                                          (if (and (gx#identifier?
                                                    _%g5127851972%_)
                                                   (gx#identifier?
                                                    _%g5127651970%_)
                                                   (gx#identifier?
                                                    _%g5127751971%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5127751971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5127751971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5127751971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5127751971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9298792988%_
                                               _%g5127551968%_
                                               _%g5127651970%_
                                               _%g5127751971%_
                                               _%g5127851972%_)
                                              (_%__match9317993180%_
                                               _%e5127951890%_
                                               _%hd5128051894%_
                                               _%tl5128151897%_
                                               _%e5128251900%_
                                               _%hd5128351904%_
                                               _%tl5128451907%_
                                               _%e5128551910%_
                                               _%hd5128651914%_
                                               _%tl5128751917%_
                                               _%e5128851920%_
                                               _%hd5128951924%_
                                               _%tl5129051927%_))))))))
                        (_%loop5129751946%_ _%target5129451940%_ '()))))
                   (_%__match9311593116%_
                    (lambda (_%e5124252041%_
                             _%hd5124352045%_
                             _%tl5124452048%_
                             _%e5124552051%_
                             _%hd5124652055%_
                             _%tl5124752058%_
                             _%e5124852061%_
                             _%hd5124952065%_
                             _%tl5125052068%_
                             _%e5125152071%_
                             _%hd5125252075%_
                             _%tl5125352078%_
                             _%e5125452081%_
                             _%hd5125552085%_
                             _%tl5125652088%_
                             _%e5125752091%_
                             _%hd5125852095%_
                             _%tl5125952098%_
                             _%e5126052101%_
                             _%hd5126152105%_
                             _%tl5126252108%_
                             _%e5126352111%_
                             _%hd5126452115%_
                             _%tl5126552118%_
                             _%__splice9298592986%_
                             _%target5126652121%_
                             _%tl5126852124%_)
                      (letrec ((_%loop5126952127%_
                                (lambda (_%hd5126752131%_ _%body5127352134%_)
                                  (if (gx#stx-pair? _%hd5126752131%_)
                                      (let ((_%e5127052136%_
                                             (gx#syntax-e _%hd5126752131%_)))
                                        (let ((_%lp-tl5127252143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5127052136%_)))
                                              (_%lp-hd5127152140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5127052136%_))))
                                          (_%loop5126952127%_
                                           _%lp-tl5127252143%_
                                           (cons _%lp-hd5127152140%_
                                                 _%body5127352134%_))))
                                      (let ((_%body5127452146%_
                                             (reverse _%body5127352134%_)))
                                        (let ((_%g5123652149%_
                                               _%body5127452146%_)
                                              (_%g5123752151%_
                                               _%hd5126452115%_)
                                              (_%g5123852152%_
                                               _%hd5126152105%_)
                                              (_%g5123952153%_
                                               _%hd5125852095%_)
                                              (_%g5124052154%_
                                               _%hd5125252075%_)
                                              (_%g5124152155%_
                                               _%hd5124952065%_))
                                          (if (and (gx#identifier?
                                                    _%g5124152155%_)
                                                   (gx#identifier?
                                                    _%g5123752151%_)
                                                   (gx#identifier?
                                                    _%g5123852152%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5123852152%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5123852152%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5123852152%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5123852152%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9298392984%_
                                               _%g5123652149%_
                                               _%g5123752151%_
                                               _%g5123852152%_
                                               _%g5123952153%_
                                               _%g5124052154%_
                                               _%g5124152155%_)
                                              (_%__match9317993180%_
                                               _%e5124252041%_
                                               _%hd5124352045%_
                                               _%tl5124452048%_
                                               _%e5124552051%_
                                               _%hd5124652055%_
                                               _%tl5124752058%_
                                               _%e5124852061%_
                                               _%hd5124952065%_
                                               _%tl5125052068%_
                                               _%e5125152071%_
                                               _%hd5125252075%_
                                               _%tl5125352078%_))))))))
                        (_%loop5126952127%_ _%target5126652121%_ '()))))
                   (_%__match9308393084%_
                    (lambda (_%e5124252041%_
                             _%hd5124352045%_
                             _%tl5124452048%_
                             _%e5124552051%_
                             _%hd5124652055%_
                             _%tl5124752058%_
                             _%e5124852061%_
                             _%hd5124952065%_
                             _%tl5125052068%_
                             _%e5125152071%_
                             _%hd5125252075%_
                             _%tl5125352078%_
                             _%e5125452081%_
                             _%hd5125552085%_
                             _%tl5125652088%_)
                      (if (gx#identifier? _%hd5125552085%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g99639_|
                               _%hd5125552085%_)
                              (if (gx#stx-pair? _%tl5125652088%_)
                                  (let ((_%e5125752091%_
                                         (gx#syntax-e _%tl5125652088%_)))
                                    (let ((_%tl5125952098%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5125752091%_)))
                                          (_%hd5125852095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5125752091%_))))
                                      (if (gx#stx-pair? _%tl5125952098%_)
                                          (let ((_%e5126052101%_
                                                 (gx#syntax-e
                                                  _%tl5125952098%_)))
                                            (let ((_%tl5126252108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5126052101%_)))
                                                  (_%hd5126152105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5126052101%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5126252108%_)
                                                  (let ((_%e5126352111%_
                                                         (gx#syntax-e
                                                          _%tl5126252108%_)))
                                                    (let ((_%tl5126552118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5126352111%_)))
                                                          (_%hd5126452115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5126352111%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5126552118%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5124752058%_)
                                                              (let ((_%__splice9298592986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5124752058%_
                              '0)))
                        (let ((_%tl5126852124%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9298592986%_ '1)))
                              (_%target5126652121%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9298592986%_ '0))))
                          (if (gx#stx-null? _%tl5126852124%_)
                              (_%__match9311593116%_
                               _%e5124252041%_
                               _%hd5124352045%_
                               _%tl5124452048%_
                               _%e5124552051%_
                               _%hd5124652055%_
                               _%tl5124752058%_
                               _%e5124852061%_
                               _%hd5124952065%_
                               _%tl5125052068%_
                               _%e5125152071%_
                               _%hd5125252075%_
                               _%tl5125352078%_
                               _%e5125452081%_
                               _%hd5125552085%_
                               _%tl5125652088%_
                               _%e5125752091%_
                               _%hd5125852095%_
                               _%tl5125952098%_
                               _%e5126052101%_
                               _%hd5126152105%_
                               _%tl5126252108%_
                               _%e5126352111%_
                               _%hd5126452115%_
                               _%tl5126552118%_
                               _%__splice9298592986%_
                               _%target5126652121%_
                               _%tl5126852124%_)
                              (if (gx#stx-pair? _%hd5124952065%_)
                                  (let ((_%e5137851530%_
                                         (gx#syntax-e _%hd5124952065%_)))
                                    (let ((_%tl5138051537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137851530%_)))
                                          (_%hd5137951534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137851530%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))))
                      (if (gx#stx-pair? _%hd5124952065%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5124952065%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                  (if (gx#stx-pair? _%hd5124952065%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5124952065%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (if (gx#stx-pair/null? _%tl5124752058%_)
                              (let ((_%__splice9300193002%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5124752058%_
                                      '0)))
                                (let ((_%tl5138351543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '1)))
                                      (_%target5138151540%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5138351543%_)
                                      (_%__match9328793288%_
                                       _%e5124252041%_
                                       _%hd5124352045%_
                                       _%tl5124452048%_
                                       _%e5124552051%_
                                       _%hd5124652055%_
                                       _%tl5124752058%_
                                       _%e5124852061%_
                                       _%hd5124952065%_
                                       _%tl5125052068%_
                                       _%e5137851530%_
                                       _%hd5137951534%_
                                       _%tl5138051537%_
                                       _%__splice9300193002%_
                                       _%target5138151540%_
                                       _%tl5138351543%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5125252075%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g99638_|
                                                           _%hd5125252075%_)
                                                          (if (gx#stx-null?
                                                               _%tl5126252108%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5124752058%_)
                          (let ((_%__splice9299792998%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5124752058%_
                                  '0)))
                            (let ((_%tl5135851683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9299792998%_ '1)))
                                  (_%target5135651680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9299792998%_
                                      '0))))
                              (if (gx#stx-null? _%tl5135851683%_)
                                  (_%__match9325593256%_
                                   _%e5124252041%_
                                   _%hd5124352045%_
                                   _%tl5124452048%_
                                   _%e5124552051%_
                                   _%hd5124652055%_
                                   _%tl5124752058%_
                                   _%e5124852061%_
                                   _%hd5124952065%_
                                   _%tl5125052068%_
                                   _%e5125152071%_
                                   _%hd5125252075%_
                                   _%tl5125352078%_
                                   _%e5125452081%_
                                   _%hd5125552085%_
                                   _%tl5125652088%_
                                   _%e5125752091%_
                                   _%hd5125852095%_
                                   _%tl5125952098%_
                                   _%e5126052101%_
                                   _%hd5126152105%_
                                   _%tl5126252108%_
                                   _%__splice9299792998%_
                                   _%target5135651680%_
                                   _%tl5135851683%_)
                                  (if (gx#stx-pair? _%hd5124952065%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5124952065%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))
                          (if (gx#stx-pair? _%hd5124952065%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5124952065%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                      (if (gx#stx-pair? _%hd5124952065%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5124952065%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (if (gx#stx-pair/null? _%tl5124752058%_)
                                  (let ((_%__splice9300193002%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5124752058%_
                                          '0)))
                                    (let ((_%tl5138351543%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '1)))
                                          (_%target5138151540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5138351543%_)
                                          (_%__match9328793288%_
                                           _%e5124252041%_
                                           _%hd5124352045%_
                                           _%tl5124452048%_
                                           _%e5124552051%_
                                           _%hd5124652055%_
                                           _%tl5124752058%_
                                           _%e5124852061%_
                                           _%hd5124952065%_
                                           _%tl5125052068%_
                                           _%e5137851530%_
                                           _%hd5137951534%_
                                           _%tl5138051537%_
                                           _%__splice9300193002%_
                                           _%target5138151540%_
                                           _%tl5138351543%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                  (if (gx#stx-pair? _%hd5124952065%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5124952065%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (if (gx#stx-pair/null? _%tl5124752058%_)
                              (let ((_%__splice9300193002%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5124752058%_
                                      '0)))
                                (let ((_%tl5138351543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '1)))
                                      (_%target5138151540%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5138351543%_)
                                      (_%__match9328793288%_
                                       _%e5124252041%_
                                       _%hd5124352045%_
                                       _%tl5124452048%_
                                       _%e5124552051%_
                                       _%hd5124652055%_
                                       _%tl5124752058%_
                                       _%e5124852061%_
                                       _%hd5124952065%_
                                       _%tl5125052068%_
                                       _%e5137851530%_
                                       _%hd5137951534%_
                                       _%tl5138051537%_
                                       _%__splice9300193002%_
                                       _%target5138151540%_
                                       _%tl5138351543%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
              (if (gx#stx-pair? _%hd5124952065%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5124952065%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5124752058%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5124752058%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5124252041%_
                                   _%hd5124352045%_
                                   _%tl5124452048%_
                                   _%e5124552051%_
                                   _%hd5124652055%_
                                   _%tl5124752058%_
                                   _%e5124852061%_
                                   _%hd5124952065%_
                                   _%tl5125052068%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5124952065%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5124952065%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5124752058%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5124752058%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5124252041%_
                       _%hd5124352045%_
                       _%tl5124452048%_
                       _%e5124552051%_
                       _%hd5124652055%_
                       _%tl5124752058%_
                       _%e5124852061%_
                       _%hd5124952065%_
                       _%tl5125052068%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))))
                                  (if (gx#stx-null? _%tl5125652088%_)
                                      (if (gx#stx-pair/null? _%tl5124752058%_)
                                          (let ((_%__splice9298992990%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5124752058%_
                                                  '0)))
                                            (let ((_%tl5129651943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9298992990%_
                                                      '1)))
                                                  (_%target5129451940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9298992990%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5129651943%_)
                                                  (_%__match9315593156%_
                                                   _%e5124252041%_
                                                   _%hd5124352045%_
                                                   _%tl5124452048%_
                                                   _%e5124552051%_
                                                   _%hd5124652055%_
                                                   _%tl5124752058%_
                                                   _%e5124852061%_
                                                   _%hd5124952065%_
                                                   _%tl5125052068%_
                                                   _%e5125152071%_
                                                   _%hd5125252075%_
                                                   _%tl5125352078%_
                                                   _%e5125452081%_
                                                   _%hd5125552085%_
                                                   _%tl5125652088%_
                                                   _%__splice9298992990%_
                                                   _%target5129451940%_
                                                   _%tl5129651943%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5124952065%_)
                                                      (let ((_%e5137851530%_
                                                             (gx#syntax-e
                                                              _%hd5124952065%_)))
                                                        (let ((_%tl5138051537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5137851530%_)))
                      (_%hd5137951534%_
                       (let () (declare (not safe)) (##car _%e5137851530%_))))
                  (let () (declare (not safe)) (_%g5120251411%_))))
              (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5124952065%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5124952065%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                      (if (gx#stx-pair? _%hd5124952065%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5124952065%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5124752058%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5124752058%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5124252041%_
                                                           _%hd5124352045%_
                                                           _%tl5124452048%_
                                                           _%e5124552051%_
                                                           _%hd5124652055%_
                                                           _%tl5124752058%_
                                                           _%e5124852061%_
                                                           _%hd5124952065%_
                                                           _%tl5125052068%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                              (if (gx#stx-null? _%tl5125652088%_)
                                  (if (gx#stx-pair/null? _%tl5124752058%_)
                                      (let ((_%__splice9298992990%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5124752058%_
                                              '0)))
                                        (let ((_%tl5129651943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9298992990%_
                                                  '1)))
                                              (_%target5129451940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9298992990%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5129651943%_)
                                              (_%__match9315593156%_
                                               _%e5124252041%_
                                               _%hd5124352045%_
                                               _%tl5124452048%_
                                               _%e5124552051%_
                                               _%hd5124652055%_
                                               _%tl5124752058%_
                                               _%e5124852061%_
                                               _%hd5124952065%_
                                               _%tl5125052068%_
                                               _%e5125152071%_
                                               _%hd5125252075%_
                                               _%tl5125352078%_
                                               _%e5125452081%_
                                               _%hd5125552085%_
                                               _%tl5125652088%_
                                               _%__splice9298992990%_
                                               _%target5129451940%_
                                               _%tl5129651943%_)
                                              (if (gx#stx-pair?
                                                   _%hd5124952065%_)
                                                  (let ((_%e5137851530%_
                                                         (gx#syntax-e
                                                          _%hd5124952065%_)))
                                                    (let ((_%tl5138051537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5137851530%_)))
                                                          (_%hd5137951534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5137851530%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5120251411%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))))
                                      (if (gx#stx-pair? _%hd5124952065%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5124952065%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                  (if (gx#identifier? _%hd5125252075%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g99638_|
                                           _%hd5125252075%_)
                                          (if (gx#stx-pair? _%tl5125652088%_)
                                              (let ((_%e5135051660%_
                                                     (gx#syntax-e
                                                      _%tl5125652088%_)))
                                                (let ((_%tl5135251667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5135051660%_)))
                                                      (_%hd5135151664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5135051660%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5135251667%_)
                                                      (let ((_%e5135351670%_
                                                             (gx#syntax-e
                                                              _%tl5135251667%_)))
                                                        (let ((_%tl5135551677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5135351670%_)))
                      (_%hd5135451674%_
                       (let () (declare (not safe)) (##car _%e5135351670%_))))
                  (if (gx#stx-null? _%tl5135551677%_)
                      (if (gx#stx-pair/null? _%tl5124752058%_)
                          (let ((_%__splice9299792998%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5124752058%_
                                  '0)))
                            (let ((_%tl5135851683%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9299792998%_ '1)))
                                  (_%target5135651680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9299792998%_
                                      '0))))
                              (if (gx#stx-null? _%tl5135851683%_)
                                  (_%__match9325593256%_
                                   _%e5124252041%_
                                   _%hd5124352045%_
                                   _%tl5124452048%_
                                   _%e5124552051%_
                                   _%hd5124652055%_
                                   _%tl5124752058%_
                                   _%e5124852061%_
                                   _%hd5124952065%_
                                   _%tl5125052068%_
                                   _%e5125152071%_
                                   _%hd5125252075%_
                                   _%tl5125352078%_
                                   _%e5125452081%_
                                   _%hd5125552085%_
                                   _%tl5125652088%_
                                   _%e5135051660%_
                                   _%hd5135151664%_
                                   _%tl5135251667%_
                                   _%e5135351670%_
                                   _%hd5135451674%_
                                   _%tl5135551677%_
                                   _%__splice9299792998%_
                                   _%target5135651680%_
                                   _%tl5135851683%_)
                                  (if (gx#stx-pair? _%hd5124952065%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5124952065%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))
                          (if (gx#stx-pair? _%hd5124952065%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5124952065%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                      (if (gx#stx-pair? _%hd5124952065%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5124952065%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (if (gx#stx-pair/null? _%tl5124752058%_)
                                  (let ((_%__splice9300193002%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5124752058%_
                                          '0)))
                                    (let ((_%tl5138351543%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '1)))
                                          (_%target5138151540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5138351543%_)
                                          (_%__match9328793288%_
                                           _%e5124252041%_
                                           _%hd5124352045%_
                                           _%tl5124452048%_
                                           _%e5124552051%_
                                           _%hd5124652055%_
                                           _%tl5124752058%_
                                           _%e5124852061%_
                                           _%hd5124952065%_
                                           _%tl5125052068%_
                                           _%e5137851530%_
                                           _%hd5137951534%_
                                           _%tl5138051537%_
                                           _%__splice9300193002%_
                                           _%target5138151540%_
                                           _%tl5138351543%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_))))))
              (if (gx#stx-pair? _%hd5124952065%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5124952065%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5124752058%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5124752058%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5124252041%_
                                   _%hd5124352045%_
                                   _%tl5124452048%_
                                   _%e5124552051%_
                                   _%hd5124652055%_
                                   _%tl5124752058%_
                                   _%e5124852061%_
                                   _%hd5124952065%_
                                   _%tl5125052068%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5124952065%_)
                                                  (let ((_%e5137851530%_
                                                         (gx#syntax-e
                                                          _%hd5124952065%_)))
                                                    (let ((_%tl5138051537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5137851530%_)))
                                                          (_%hd5137951534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5137851530%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5124752058%_)
                                                          (let ((_%__splice9300193002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5124752058%_ '0)))
                    (let ((_%tl5138351543%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '1)))
                          (_%target5138151540%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '0))))
                      (if (gx#stx-null? _%tl5138351543%_)
                          (_%__match9328793288%_
                           _%e5124252041%_
                           _%hd5124352045%_
                           _%tl5124452048%_
                           _%e5124552051%_
                           _%hd5124652055%_
                           _%tl5124752058%_
                           _%e5124852061%_
                           _%hd5124952065%_
                           _%tl5125052068%_
                           _%e5137851530%_
                           _%hd5137951534%_
                           _%tl5138051537%_
                           _%__splice9300193002%_
                           _%target5138151540%_
                           _%tl5138351543%_)
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))
                                          (if (gx#stx-pair? _%hd5124952065%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5124952065%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5124752058%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5124752058%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5124252041%_
                       _%hd5124352045%_
                       _%tl5124452048%_
                       _%e5124552051%_
                       _%hd5124652055%_
                       _%tl5124752058%_
                       _%e5124852061%_
                       _%hd5124952065%_
                       _%tl5125052068%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                      (if (gx#stx-pair? _%hd5124952065%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5124952065%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5124752058%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5124752058%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5124252041%_
                                                           _%hd5124352045%_
                                                           _%tl5124452048%_
                                                           _%e5124552051%_
                                                           _%hd5124652055%_
                                                           _%tl5124752058%_
                                                           _%e5124852061%_
                                                           _%hd5124952065%_
                                                           _%tl5125052068%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))))
                          (if (gx#stx-null? _%tl5125652088%_)
                              (if (gx#stx-pair/null? _%tl5124752058%_)
                                  (let ((_%__splice9298992990%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5124752058%_
                                          '0)))
                                    (let ((_%tl5129651943%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9298992990%_
                                              '1)))
                                          (_%target5129451940%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9298992990%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5129651943%_)
                                          (_%__match9315593156%_
                                           _%e5124252041%_
                                           _%hd5124352045%_
                                           _%tl5124452048%_
                                           _%e5124552051%_
                                           _%hd5124652055%_
                                           _%tl5124752058%_
                                           _%e5124852061%_
                                           _%hd5124952065%_
                                           _%tl5125052068%_
                                           _%e5125152071%_
                                           _%hd5125252075%_
                                           _%tl5125352078%_
                                           _%e5125452081%_
                                           _%hd5125552085%_
                                           _%tl5125652088%_
                                           _%__splice9298992990%_
                                           _%target5129451940%_
                                           _%tl5129651943%_)
                                          (if (gx#stx-pair? _%hd5124952065%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5124952065%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))))
                                  (if (gx#stx-pair? _%hd5124952065%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5124952065%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                              (if (gx#identifier? _%hd5125252075%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g99638_|
                                       _%hd5125252075%_)
                                      (if (gx#stx-pair? _%tl5125652088%_)
                                          (let ((_%e5135051660%_
                                                 (gx#syntax-e
                                                  _%tl5125652088%_)))
                                            (let ((_%tl5135251667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5135051660%_)))
                                                  (_%hd5135151664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5135051660%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5135251667%_)
                                                  (let ((_%e5135351670%_
                                                         (gx#syntax-e
                                                          _%tl5135251667%_)))
                                                    (let ((_%tl5135551677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5135351670%_)))
                                                          (_%hd5135451674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5135351670%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5135551677%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5124752058%_)
                                                              (let ((_%__splice9299792998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5124752058%_
                              '0)))
                        (let ((_%tl5135851683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9299792998%_ '1)))
                              (_%target5135651680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9299792998%_ '0))))
                          (if (gx#stx-null? _%tl5135851683%_)
                              (_%__match9325593256%_
                               _%e5124252041%_
                               _%hd5124352045%_
                               _%tl5124452048%_
                               _%e5124552051%_
                               _%hd5124652055%_
                               _%tl5124752058%_
                               _%e5124852061%_
                               _%hd5124952065%_
                               _%tl5125052068%_
                               _%e5125152071%_
                               _%hd5125252075%_
                               _%tl5125352078%_
                               _%e5125452081%_
                               _%hd5125552085%_
                               _%tl5125652088%_
                               _%e5135051660%_
                               _%hd5135151664%_
                               _%tl5135251667%_
                               _%e5135351670%_
                               _%hd5135451674%_
                               _%tl5135551677%_
                               _%__splice9299792998%_
                               _%target5135651680%_
                               _%tl5135851683%_)
                              (if (gx#stx-pair? _%hd5124952065%_)
                                  (let ((_%e5137851530%_
                                         (gx#syntax-e _%hd5124952065%_)))
                                    (let ((_%tl5138051537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137851530%_)))
                                          (_%hd5137951534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137851530%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))))
                      (if (gx#stx-pair? _%hd5124952065%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5124952065%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                  (if (gx#stx-pair? _%hd5124952065%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5124952065%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (if (gx#stx-pair/null? _%tl5124752058%_)
                              (let ((_%__splice9300193002%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5124752058%_
                                      '0)))
                                (let ((_%tl5138351543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '1)))
                                      (_%target5138151540%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5138351543%_)
                                      (_%__match9328793288%_
                                       _%e5124252041%_
                                       _%hd5124352045%_
                                       _%tl5124452048%_
                                       _%e5124552051%_
                                       _%hd5124652055%_
                                       _%tl5124752058%_
                                       _%e5124852061%_
                                       _%hd5124952065%_
                                       _%tl5125052068%_
                                       _%e5137851530%_
                                       _%hd5137951534%_
                                       _%tl5138051537%_
                                       _%__splice9300193002%_
                                       _%target5138151540%_
                                       _%tl5138351543%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5124952065%_)
                                                      (let ((_%e5137851530%_
                                                             (gx#syntax-e
                                                              _%hd5124952065%_)))
                                                        (let ((_%tl5138051537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5137851530%_)))
                      (_%hd5137951534%_
                       (let () (declare (not safe)) (##car _%e5137851530%_))))
                  (if (gx#stx-pair/null? _%tl5124752058%_)
                      (let ((_%__splice9300193002%_
                             (gx#syntax-split-splice->vector
                              _%tl5124752058%_
                              '0)))
                        (let ((_%tl5138351543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '1)))
                              (_%target5138151540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '0))))
                          (if (gx#stx-null? _%tl5138351543%_)
                              (_%__match9328793288%_
                               _%e5124252041%_
                               _%hd5124352045%_
                               _%tl5124452048%_
                               _%e5124552051%_
                               _%hd5124652055%_
                               _%tl5124752058%_
                               _%e5124852061%_
                               _%hd5124952065%_
                               _%tl5125052068%_
                               _%e5137851530%_
                               _%hd5137951534%_
                               _%tl5138051537%_
                               _%__splice9300193002%_
                               _%target5138151540%_
                               _%tl5138351543%_)
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5124952065%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5124952065%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5124752058%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5124752058%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5124252041%_
                       _%hd5124352045%_
                       _%tl5124452048%_
                       _%e5124552051%_
                       _%hd5124652055%_
                       _%tl5124752058%_
                       _%e5124852061%_
                       _%hd5124952065%_
                       _%tl5125052068%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                      (if (gx#stx-pair? _%hd5124952065%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5124952065%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5124752058%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5124752058%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5124252041%_
                                                           _%hd5124352045%_
                                                           _%tl5124452048%_
                                                           _%e5124552051%_
                                                           _%hd5124652055%_
                                                           _%tl5124752058%_
                                                           _%e5124852061%_
                                                           _%hd5124952065%_
                                                           _%tl5125052068%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                  (if (gx#stx-pair? _%hd5124952065%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5124952065%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5124752058%_)
                                              (let ((_%__splice9300193002%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5124752058%_
                                                      '0)))
                                                (let ((_%tl5138351543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '1)))
                                                      (_%target5138151540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5138351543%_)
                                                      (_%__match9328793288%_
                                                       _%e5124252041%_
                                                       _%hd5124352045%_
                                                       _%tl5124452048%_
                                                       _%e5124552051%_
                                                       _%hd5124652055%_
                                                       _%tl5124752058%_
                                                       _%e5124852061%_
                                                       _%hd5124952065%_
                                                       _%tl5125052068%_
                                                       _%e5137851530%_
                                                       _%hd5137951534%_
                                                       _%tl5138051537%_
                                                       _%__splice9300193002%_
                                                       _%target5138151540%_
                                                       _%tl5138351543%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5120251411%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))))
                   (_%__match9305393054%_
                    (lambda (_%e5120952215%_
                             _%hd5121052219%_
                             _%tl5121152222%_
                             _%e5121252225%_
                             _%hd5121352229%_
                             _%tl5121452232%_
                             _%e5121552235%_
                             _%hd5121652239%_
                             _%tl5121752242%_
                             _%e5121852245%_
                             _%hd5121952249%_
                             _%tl5122052252%_
                             _%e5122152255%_
                             _%hd5122252259%_
                             _%tl5122352262%_
                             _%e5122452265%_
                             _%hd5122552269%_
                             _%tl5122652272%_
                             _%__splice9298192982%_
                             _%target5122752275%_
                             _%tl5122952278%_)
                      (letrec ((_%loop5123052281%_
                                (lambda (_%hd5122852285%_ _%body5123452288%_)
                                  (if (gx#stx-pair? _%hd5122852285%_)
                                      (let ((_%e5123152290%_
                                             (gx#syntax-e _%hd5122852285%_)))
                                        (let ((_%lp-tl5123352297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5123152290%_)))
                                              (_%lp-hd5123252294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5123152290%_))))
                                          (_%loop5123052281%_
                                           _%lp-tl5123352297%_
                                           (cons _%lp-hd5123252294%_
                                                 _%body5123452288%_))))
                                      (let ((_%body5123552300%_
                                             (reverse _%body5123452288%_)))
                                        (let ((_%g5120452303%_
                                               _%body5123552300%_)
                                              (_%g5120552305%_
                                               _%hd5122552269%_)
                                              (_%g5120652306%_
                                               _%hd5122252259%_)
                                              (_%g5120752307%_
                                               _%hd5121952249%_)
                                              (_%g5120852308%_
                                               _%hd5121652239%_))
                                          (if (and (gx#identifier?
                                                    _%g5120852308%_)
                                                   (gx#identifier?
                                                    _%g5120652306%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5120652306%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5120652306%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5120652306%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5120652306%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5120652306%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9297992980%_
                                               _%g5120452303%_
                                               _%g5120552305%_
                                               _%g5120652306%_
                                               _%g5120752307%_
                                               _%g5120852308%_)
                                              (_%__match9308393084%_
                                               _%e5120952215%_
                                               _%hd5121052219%_
                                               _%tl5121152222%_
                                               _%e5121252225%_
                                               _%hd5121352229%_
                                               _%tl5121452232%_
                                               _%e5121552235%_
                                               _%hd5121652239%_
                                               _%tl5121752242%_
                                               _%e5121852245%_
                                               _%hd5121952249%_
                                               _%tl5122052252%_
                                               _%e5122152255%_
                                               _%hd5122252259%_
                                               _%tl5122352262%_))))))))
                        (_%loop5123052281%_ _%target5122752275%_ '())))))
              (if (gx#stx-pair? _%__stx9297692977%_)
                  (let ((_%e5120952215%_ (gx#syntax-e _%__stx9297692977%_)))
                    (let ((_%tl5121152222%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5120952215%_)))
                          (_%hd5121052219%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5120952215%_))))
                      (if (gx#stx-pair? _%tl5121152222%_)
                          (let ((_%e5121252225%_
                                 (gx#syntax-e _%tl5121152222%_)))
                            (let ((_%tl5121452232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5121252225%_)))
                                  (_%hd5121352229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5121252225%_))))
                              (if (gx#stx-pair? _%hd5121352229%_)
                                  (let ((_%e5121552235%_
                                         (gx#syntax-e _%hd5121352229%_)))
                                    (let ((_%tl5121752242%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5121552235%_)))
                                          (_%hd5121652239%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5121552235%_))))
                                      (if (gx#stx-pair? _%tl5121752242%_)
                                          (let ((_%e5121852245%_
                                                 (gx#syntax-e
                                                  _%tl5121752242%_)))
                                            (let ((_%tl5122052252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5121852245%_)))
                                                  (_%hd5121952249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5121852245%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5122052252%_)
                                                  (let ((_%e5122152255%_
                                                         (gx#syntax-e
                                                          _%tl5122052252%_)))
                                                    (let ((_%tl5122352262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5122152255%_)))
                                                          (_%hd5122252259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5122152255%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5122352262%_)
                                                          (let ((_%e5122452265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5122352262%_)))
                    (let ((_%tl5122652272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5122452265%_)))
                          (_%hd5122552269%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5122452265%_))))
                      (if (gx#stx-null? _%tl5122652272%_)
                          (if (gx#stx-pair/null? _%tl5121452232%_)
                              (let ((_%__splice9298192982%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5121452232%_
                                      '0)))
                                (let ((_%tl5122952278%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9298192982%_
                                          '1)))
                                      (_%target5122752275%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9298192982%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5122952278%_)
                                      (_%__match9305393054%_
                                       _%e5120952215%_
                                       _%hd5121052219%_
                                       _%tl5121152222%_
                                       _%e5121252225%_
                                       _%hd5121352229%_
                                       _%tl5121452232%_
                                       _%e5121552235%_
                                       _%hd5121652239%_
                                       _%tl5121752242%_
                                       _%e5121852245%_
                                       _%hd5121952249%_
                                       _%tl5122052252%_
                                       _%e5122152255%_
                                       _%hd5122252259%_
                                       _%tl5122352262%_
                                       _%e5122452265%_
                                       _%hd5122552269%_
                                       _%tl5122652272%_
                                       _%__splice9298192982%_
                                       _%target5122752275%_
                                       _%tl5122952278%_)
                                      (if (gx#stx-pair? _%hd5121652239%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5121652239%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))))
                              (if (gx#stx-pair? _%hd5121652239%_)
                                  (let ((_%e5137851530%_
                                         (gx#syntax-e _%hd5121652239%_)))
                                    (let ((_%tl5138051537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137851530%_)))
                                          (_%hd5137951534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137851530%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                          (if (gx#identifier? _%hd5122252259%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g99639_|
                                   _%hd5122252259%_)
                                  (if (gx#stx-pair? _%tl5122652272%_)
                                      (let ((_%e5126052101%_
                                             (gx#syntax-e _%tl5122652272%_)))
                                        (let ((_%tl5126252108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5126052101%_)))
                                              (_%hd5126152105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5126052101%_))))
                                          (if (gx#stx-pair? _%tl5126252108%_)
                                              (let ((_%e5126352111%_
                                                     (gx#syntax-e
                                                      _%tl5126252108%_)))
                                                (let ((_%tl5126552118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5126352111%_)))
                                                      (_%hd5126452115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5126352111%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5126552118%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5121452232%_)
                                                          (let ((_%__splice9298592986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5121452232%_ '0)))
                    (let ((_%tl5126852124%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9298592986%_ '1)))
                          (_%target5126652121%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9298592986%_ '0))))
                      (if (gx#stx-null? _%tl5126852124%_)
                          (_%__match9311593116%_
                           _%e5120952215%_
                           _%hd5121052219%_
                           _%tl5121152222%_
                           _%e5121252225%_
                           _%hd5121352229%_
                           _%tl5121452232%_
                           _%e5121552235%_
                           _%hd5121652239%_
                           _%tl5121752242%_
                           _%e5121852245%_
                           _%hd5121952249%_
                           _%tl5122052252%_
                           _%e5122152255%_
                           _%hd5122252259%_
                           _%tl5122352262%_
                           _%e5122452265%_
                           _%hd5122552269%_
                           _%tl5122652272%_
                           _%e5126052101%_
                           _%hd5126152105%_
                           _%tl5126252108%_
                           _%e5126352111%_
                           _%hd5126452115%_
                           _%tl5126552118%_
                           _%__splice9298592986%_
                           _%target5126652121%_
                           _%tl5126852124%_)
                          (if (gx#stx-pair? _%hd5121652239%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5121652239%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_))))))
                  (if (gx#stx-pair? _%hd5121652239%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
              (if (gx#stx-pair? _%hd5121652239%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5121452232%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5121452232%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5120952215%_
                                   _%hd5121052219%_
                                   _%tl5121152222%_
                                   _%e5121252225%_
                                   _%hd5121352229%_
                                   _%tl5121452232%_
                                   _%e5121552235%_
                                   _%hd5121652239%_
                                   _%tl5121752242%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5121952249%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g99638_|
                                                       _%hd5121952249%_)
                                                      (if (gx#stx-null?
                                                           _%tl5126252108%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5121452232%_)
                                                              (let ((_%__splice9299792998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5121452232%_
                              '0)))
                        (let ((_%tl5135851683%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9299792998%_ '1)))
                              (_%target5135651680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9299792998%_ '0))))
                          (if (gx#stx-null? _%tl5135851683%_)
                              (_%__match9325593256%_
                               _%e5120952215%_
                               _%hd5121052219%_
                               _%tl5121152222%_
                               _%e5121252225%_
                               _%hd5121352229%_
                               _%tl5121452232%_
                               _%e5121552235%_
                               _%hd5121652239%_
                               _%tl5121752242%_
                               _%e5121852245%_
                               _%hd5121952249%_
                               _%tl5122052252%_
                               _%e5122152255%_
                               _%hd5122252259%_
                               _%tl5122352262%_
                               _%e5122452265%_
                               _%hd5122552269%_
                               _%tl5122652272%_
                               _%e5126052101%_
                               _%hd5126152105%_
                               _%tl5126252108%_
                               _%__splice9299792998%_
                               _%target5135651680%_
                               _%tl5135851683%_)
                              (if (gx#stx-pair? _%hd5121652239%_)
                                  (let ((_%e5137851530%_
                                         (gx#syntax-e _%hd5121652239%_)))
                                    (let ((_%tl5138051537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5137851530%_)))
                                          (_%hd5137951534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5137851530%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))))
                      (if (gx#stx-pair? _%hd5121652239%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5121652239%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                  (if (gx#stx-pair? _%hd5121652239%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (if (gx#stx-pair/null? _%tl5121452232%_)
                              (let ((_%__splice9300193002%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5121452232%_
                                      '0)))
                                (let ((_%tl5138351543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '1)))
                                      (_%target5138151540%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9300193002%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5138351543%_)
                                      (_%__match9328793288%_
                                       _%e5120952215%_
                                       _%hd5121052219%_
                                       _%tl5121152222%_
                                       _%e5121252225%_
                                       _%hd5121352229%_
                                       _%tl5121452232%_
                                       _%e5121552235%_
                                       _%hd5121652239%_
                                       _%tl5121752242%_
                                       _%e5137851530%_
                                       _%hd5137951534%_
                                       _%tl5138051537%_
                                       _%__splice9300193002%_
                                       _%target5138151540%_
                                       _%tl5138351543%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
              (if (gx#stx-pair? _%hd5121652239%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5121452232%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5121452232%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5120952215%_
                                   _%hd5121052219%_
                                   _%tl5121152222%_
                                   _%e5121252225%_
                                   _%hd5121352229%_
                                   _%tl5121452232%_
                                   _%e5121552235%_
                                   _%hd5121652239%_
                                   _%tl5121752242%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5121652239%_)
                                                      (let ((_%e5137851530%_
                                                             (gx#syntax-e
                                                              _%hd5121652239%_)))
                                                        (let ((_%tl5138051537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5137851530%_)))
                      (_%hd5137951534%_
                       (let () (declare (not safe)) (##car _%e5137851530%_))))
                  (if (gx#stx-pair/null? _%tl5121452232%_)
                      (let ((_%__splice9300193002%_
                             (gx#syntax-split-splice->vector
                              _%tl5121452232%_
                              '0)))
                        (let ((_%tl5138351543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '1)))
                              (_%target5138151540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '0))))
                          (if (gx#stx-null? _%tl5138351543%_)
                              (_%__match9328793288%_
                               _%e5120952215%_
                               _%hd5121052219%_
                               _%tl5121152222%_
                               _%e5121252225%_
                               _%hd5121352229%_
                               _%tl5121452232%_
                               _%e5121552235%_
                               _%hd5121652239%_
                               _%tl5121752242%_
                               _%e5137851530%_
                               _%hd5137951534%_
                               _%tl5138051537%_
                               _%__splice9300193002%_
                               _%target5138151540%_
                               _%tl5138351543%_)
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5121652239%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5121652239%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5121452232%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5121452232%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5120952215%_
                                                           _%hd5121052219%_
                                                           _%tl5121152222%_
                                                           _%e5121252225%_
                                                           _%hd5121352229%_
                                                           _%tl5121452232%_
                                                           _%e5121552235%_
                                                           _%hd5121652239%_
                                                           _%tl5121752242%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                  (if (gx#identifier? _%hd5121952249%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g99638_|
                                           _%hd5121952249%_)
                                          (if (gx#stx-pair? _%tl5122652272%_)
                                              (let ((_%e5135351670%_
                                                     (gx#syntax-e
                                                      _%tl5122652272%_)))
                                                (let ((_%tl5135551677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5135351670%_)))
                                                      (_%hd5135451674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5135351670%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5135551677%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5121452232%_)
                                                          (let ((_%__splice9299792998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5121452232%_ '0)))
                    (let ((_%tl5135851683%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9299792998%_ '1)))
                          (_%target5135651680%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9299792998%_ '0))))
                      (if (gx#stx-null? _%tl5135851683%_)
                          (_%__match9325593256%_
                           _%e5120952215%_
                           _%hd5121052219%_
                           _%tl5121152222%_
                           _%e5121252225%_
                           _%hd5121352229%_
                           _%tl5121452232%_
                           _%e5121552235%_
                           _%hd5121652239%_
                           _%tl5121752242%_
                           _%e5121852245%_
                           _%hd5121952249%_
                           _%tl5122052252%_
                           _%e5122152255%_
                           _%hd5122252259%_
                           _%tl5122352262%_
                           _%e5122452265%_
                           _%hd5122552269%_
                           _%tl5122652272%_
                           _%e5135351670%_
                           _%hd5135451674%_
                           _%tl5135551677%_
                           _%__splice9299792998%_
                           _%target5135651680%_
                           _%tl5135851683%_)
                          (if (gx#stx-pair? _%hd5121652239%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5121652239%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_))))))
                  (if (gx#stx-pair? _%hd5121652239%_)
                      (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                        (let ((_%tl5138051537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5137851530%_)))
                              (_%hd5137951534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5137851530%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
              (if (gx#stx-pair? _%hd5121652239%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (if (gx#stx-pair/null? _%tl5121452232%_)
                          (let ((_%__splice9300193002%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5121452232%_
                                  '0)))
                            (let ((_%tl5138351543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9300193002%_ '1)))
                                  (_%target5138151540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9300193002%_
                                      '0))))
                              (if (gx#stx-null? _%tl5138351543%_)
                                  (_%__match9328793288%_
                                   _%e5120952215%_
                                   _%hd5121052219%_
                                   _%tl5121152222%_
                                   _%e5121252225%_
                                   _%hd5121352229%_
                                   _%tl5121452232%_
                                   _%e5121552235%_
                                   _%hd5121652239%_
                                   _%tl5121752242%_
                                   _%e5137851530%_
                                   _%hd5137951534%_
                                   _%tl5138051537%_
                                   _%__splice9300193002%_
                                   _%target5138151540%_
                                   _%tl5138351543%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5121652239%_)
                                                  (let ((_%e5137851530%_
                                                         (gx#syntax-e
                                                          _%hd5121652239%_)))
                                                    (let ((_%tl5138051537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5137851530%_)))
                                                          (_%hd5137951534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5137851530%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5121452232%_)
                                                          (let ((_%__splice9300193002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5121452232%_ '0)))
                    (let ((_%tl5138351543%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '1)))
                          (_%target5138151540%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9300193002%_ '0))))
                      (if (gx#stx-null? _%tl5138351543%_)
                          (_%__match9328793288%_
                           _%e5120952215%_
                           _%hd5121052219%_
                           _%tl5121152222%_
                           _%e5121252225%_
                           _%hd5121352229%_
                           _%tl5121452232%_
                           _%e5121552235%_
                           _%hd5121652239%_
                           _%tl5121752242%_
                           _%e5137851530%_
                           _%hd5137951534%_
                           _%tl5138051537%_
                           _%__splice9300193002%_
                           _%target5138151540%_
                           _%tl5138351543%_)
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_))))
                                          (if (gx#stx-pair? _%hd5121652239%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5121652239%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5121452232%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5121452232%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5120952215%_
                       _%hd5121052219%_
                       _%tl5121152222%_
                       _%e5121252225%_
                       _%hd5121352229%_
                       _%tl5121452232%_
                       _%e5121552235%_
                       _%hd5121652239%_
                       _%tl5121752242%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                      (if (gx#stx-pair? _%hd5121652239%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5121652239%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5121452232%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5121452232%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5120952215%_
                                                           _%hd5121052219%_
                                                           _%tl5121152222%_
                                                           _%e5121252225%_
                                                           _%hd5121352229%_
                                                           _%tl5121452232%_
                                                           _%e5121552235%_
                                                           _%hd5121652239%_
                                                           _%tl5121752242%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                              (if (gx#identifier? _%hd5121952249%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g99638_|
                                       _%hd5121952249%_)
                                      (if (gx#stx-pair? _%tl5122652272%_)
                                          (let ((_%e5135351670%_
                                                 (gx#syntax-e
                                                  _%tl5122652272%_)))
                                            (let ((_%tl5135551677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5135351670%_)))
                                                  (_%hd5135451674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5135351670%_))))
                                              (if (gx#stx-null?
                                                   _%tl5135551677%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5121452232%_)
                                                      (let ((_%__splice9299792998%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5121452232%_
                                                              '0)))
                                                        (let ((_%tl5135851683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9299792998%_ '1)))
                      (_%target5135651680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9299792998%_ '0))))
                  (if (gx#stx-null? _%tl5135851683%_)
                      (_%__match9325593256%_
                       _%e5120952215%_
                       _%hd5121052219%_
                       _%tl5121152222%_
                       _%e5121252225%_
                       _%hd5121352229%_
                       _%tl5121452232%_
                       _%e5121552235%_
                       _%hd5121652239%_
                       _%tl5121752242%_
                       _%e5121852245%_
                       _%hd5121952249%_
                       _%tl5122052252%_
                       _%e5122152255%_
                       _%hd5122252259%_
                       _%tl5122352262%_
                       _%e5122452265%_
                       _%hd5122552269%_
                       _%tl5122652272%_
                       _%e5135351670%_
                       _%hd5135451674%_
                       _%tl5135551677%_
                       _%__splice9299792998%_
                       _%target5135651680%_
                       _%tl5135851683%_)
                      (if (gx#stx-pair? _%hd5121652239%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5121652239%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                          (let () (declare (not safe)) (_%g5120251411%_))))))
              (if (gx#stx-pair? _%hd5121652239%_)
                  (let ((_%e5137851530%_ (gx#syntax-e _%hd5121652239%_)))
                    (let ((_%tl5138051537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137851530%_)))
                          (_%hd5137951534%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137851530%_))))
                      (let () (declare (not safe)) (_%g5120251411%_))))
                  (let () (declare (not safe)) (_%g5120251411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5121652239%_)
                                                      (let ((_%e5137851530%_
                                                             (gx#syntax-e
                                                              _%hd5121652239%_)))
                                                        (let ((_%tl5138051537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5137851530%_)))
                      (_%hd5137951534%_
                       (let () (declare (not safe)) (##car _%e5137851530%_))))
                  (if (gx#stx-pair/null? _%tl5121452232%_)
                      (let ((_%__splice9300193002%_
                             (gx#syntax-split-splice->vector
                              _%tl5121452232%_
                              '0)))
                        (let ((_%tl5138351543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '1)))
                              (_%target5138151540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '0))))
                          (if (gx#stx-null? _%tl5138351543%_)
                              (_%__match9328793288%_
                               _%e5120952215%_
                               _%hd5121052219%_
                               _%tl5121152222%_
                               _%e5121252225%_
                               _%hd5121352229%_
                               _%tl5121452232%_
                               _%e5121552235%_
                               _%hd5121652239%_
                               _%tl5121752242%_
                               _%e5137851530%_
                               _%hd5137951534%_
                               _%tl5138051537%_
                               _%__splice9300193002%_
                               _%target5138151540%_
                               _%tl5138351543%_)
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5121652239%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5121652239%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5121452232%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5121452232%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5120952215%_
                       _%hd5121052219%_
                       _%tl5121152222%_
                       _%e5121252225%_
                       _%hd5121352229%_
                       _%tl5121452232%_
                       _%e5121552235%_
                       _%hd5121652239%_
                       _%tl5121752242%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))
                                      (if (gx#stx-pair? _%hd5121652239%_)
                                          (let ((_%e5137851530%_
                                                 (gx#syntax-e
                                                  _%hd5121652239%_)))
                                            (let ((_%tl5138051537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5137851530%_)))
                                                  (_%hd5137951534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5137851530%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5121452232%_)
                                                  (let ((_%__splice9300193002%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5121452232%_
                                                          '0)))
                                                    (let ((_%tl5138351543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '1)))
                                                          (_%target5138151540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9300193002%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5138351543%_)
                                                          (_%__match9328793288%_
                                                           _%e5120952215%_
                                                           _%hd5121052219%_
                                                           _%tl5121152222%_
                                                           _%e5121252225%_
                                                           _%hd5121352229%_
                                                           _%tl5121452232%_
                                                           _%e5121552235%_
                                                           _%hd5121652239%_
                                                           _%tl5121752242%_
                                                           _%e5137851530%_
                                                           _%hd5137951534%_
                                                           _%tl5138051537%_
                                                           _%__splice9300193002%_
                                                           _%target5138151540%_
                                                           _%tl5138351543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5120251411%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                  (if (gx#stx-pair? _%hd5121652239%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5121652239%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5121452232%_)
                                              (let ((_%__splice9300193002%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5121452232%_
                                                      '0)))
                                                (let ((_%tl5138351543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '1)))
                                                      (_%target5138151540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9300193002%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5138351543%_)
                                                      (_%__match9328793288%_
                                                       _%e5120952215%_
                                                       _%hd5121052219%_
                                                       _%tl5121152222%_
                                                       _%e5121252225%_
                                                       _%hd5121352229%_
                                                       _%tl5121452232%_
                                                       _%e5121552235%_
                                                       _%hd5121652239%_
                                                       _%tl5121752242%_
                                                       _%e5137851530%_
                                                       _%hd5137951534%_
                                                       _%tl5138051537%_
                                                       _%__splice9300193002%_
                                                       _%target5138151540%_
                                                       _%tl5138351543%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5120251411%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))))
                  (if (gx#stx-null? _%tl5122352262%_)
                      (if (gx#stx-pair/null? _%tl5121452232%_)
                          (let ((_%__splice9298992990%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5121452232%_
                                  '0)))
                            (let ((_%tl5129651943%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9298992990%_ '1)))
                                  (_%target5129451940%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9298992990%_
                                      '0))))
                              (if (gx#stx-null? _%tl5129651943%_)
                                  (_%__match9315593156%_
                                   _%e5120952215%_
                                   _%hd5121052219%_
                                   _%tl5121152222%_
                                   _%e5121252225%_
                                   _%hd5121352229%_
                                   _%tl5121452232%_
                                   _%e5121552235%_
                                   _%hd5121652239%_
                                   _%tl5121752242%_
                                   _%e5121852245%_
                                   _%hd5121952249%_
                                   _%tl5122052252%_
                                   _%e5122152255%_
                                   _%hd5122252259%_
                                   _%tl5122352262%_
                                   _%__splice9298992990%_
                                   _%target5129451940%_
                                   _%tl5129651943%_)
                                  (if (gx#stx-pair? _%hd5121652239%_)
                                      (let ((_%e5137851530%_
                                             (gx#syntax-e _%hd5121652239%_)))
                                        (let ((_%tl5138051537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5137851530%_)))
                                              (_%hd5137951534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5137851530%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))
                          (if (gx#stx-pair? _%hd5121652239%_)
                              (let ((_%e5137851530%_
                                     (gx#syntax-e _%hd5121652239%_)))
                                (let ((_%tl5138051537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5137851530%_)))
                                      (_%hd5137951534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5137851530%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_))))
                              (let () (declare (not safe)) (_%g5120251411%_))))
                      (if (gx#stx-pair? _%hd5121652239%_)
                          (let ((_%e5137851530%_
                                 (gx#syntax-e _%hd5121652239%_)))
                            (let ((_%tl5138051537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137851530%_)))
                                  (_%hd5137951534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137851530%_))))
                              (if (gx#stx-pair/null? _%tl5121452232%_)
                                  (let ((_%__splice9300193002%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5121452232%_
                                          '0)))
                                    (let ((_%tl5138351543%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '1)))
                                          (_%target5138151540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9300193002%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5138351543%_)
                                          (_%__match9328793288%_
                                           _%e5120952215%_
                                           _%hd5121052219%_
                                           _%tl5121152222%_
                                           _%e5121252225%_
                                           _%hd5121352229%_
                                           _%tl5121452232%_
                                           _%e5121552235%_
                                           _%hd5121652239%_
                                           _%tl5121752242%_
                                           _%e5137851530%_
                                           _%hd5137951534%_
                                           _%tl5138051537%_
                                           _%__splice9300193002%_
                                           _%target5138151540%_
                                           _%tl5138351543%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5120251411%_)))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5121652239%_)
                                                      (let ((_%e5137851530%_
                                                             (gx#syntax-e
                                                              _%hd5121652239%_)))
                                                        (let ((_%tl5138051537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5137851530%_)))
                      (_%hd5137951534%_
                       (let () (declare (not safe)) (##car _%e5137851530%_))))
                  (if (gx#stx-pair/null? _%tl5121452232%_)
                      (let ((_%__splice9300193002%_
                             (gx#syntax-split-splice->vector
                              _%tl5121452232%_
                              '0)))
                        (let ((_%tl5138351543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '1)))
                              (_%target5138151540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9300193002%_ '0))))
                          (if (gx#stx-null? _%tl5138351543%_)
                              (_%__match9328793288%_
                               _%e5120952215%_
                               _%hd5121052219%_
                               _%tl5121152222%_
                               _%e5121252225%_
                               _%hd5121352229%_
                               _%tl5121452232%_
                               _%e5121552235%_
                               _%hd5121652239%_
                               _%tl5121752242%_
                               _%e5137851530%_
                               _%hd5137951534%_
                               _%tl5138051537%_
                               _%__splice9300193002%_
                               _%target5138151540%_
                               _%tl5138351543%_)
                              (let ()
                                (declare (not safe))
                                (_%g5120251411%_)))))
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5121652239%_)
                                              (let ((_%e5137851530%_
                                                     (gx#syntax-e
                                                      _%hd5121652239%_)))
                                                (let ((_%tl5138051537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5137851530%_)))
                                                      (_%hd5137951534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5137851530%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5121452232%_)
                                                      (let ((_%__splice9300193002%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5121452232%_
                                                              '0)))
                                                        (let ((_%tl5138351543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '1)))
                      (_%target5138151540%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9300193002%_ '0))))
                  (if (gx#stx-null? _%tl5138351543%_)
                      (_%__match9328793288%_
                       _%e5120952215%_
                       _%hd5121052219%_
                       _%tl5121152222%_
                       _%e5121252225%_
                       _%hd5121352229%_
                       _%tl5121452232%_
                       _%e5121552235%_
                       _%hd5121652239%_
                       _%tl5121752242%_
                       _%e5137851530%_
                       _%hd5137951534%_
                       _%tl5138051537%_
                       _%__splice9300193002%_
                       _%target5138151540%_
                       _%tl5138351543%_)
                      (let () (declare (not safe)) (_%g5120251411%_)))))
              (let () (declare (not safe)) (_%g5120251411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5120251411%_))))))
                                  (if (gx#stx-null? _%hd5121352229%_)
                                      (if (gx#stx-pair/null? _%tl5121452232%_)
                                          (let ((_%__splice9300593006%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5121452232%_
                                                  '0)))
                                            (let ((_%tl5139951441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9300593006%_
                                                      '1)))
                                                  (_%target5139751438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9300593006%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5139951441%_)
                                                  (_%__match9330993310%_
                                                   _%e5120952215%_
                                                   _%hd5121052219%_
                                                   _%tl5121152222%_
                                                   _%e5121252225%_
                                                   _%hd5121352229%_
                                                   _%tl5121452232%_
                                                   _%__splice9300593006%_
                                                   _%target5139751438%_
                                                   _%tl5139951441%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5120251411%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5120251411%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5120251411%_))))))
                          (let () (declare (not safe)) (_%g5120251411%_)))))
                  (let () (declare (not safe)) (_%g5120251411%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52371%_)
        (let* ((_%g5237552409%_
                (lambda (_%g5237652405%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5237652405%_)))
               (_%g5237452530%_
                (lambda (_%g5237652413%_)
                  (if (gx#stx-pair? _%g5237652413%_)
                      (let ((_%e5238052416%_ (gx#syntax-e _%g5237652413%_)))
                        (let ((_%hd5238152420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5238052416%_)))
                              (_%tl5238252423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5238052416%_))))
                          (if (gx#stx-pair? _%tl5238252423%_)
                              (let ((_%e5238352426%_
                                     (gx#syntax-e _%tl5238252423%_)))
                                (let ((_%hd5238452430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5238352426%_)))
                                      (_%tl5238552433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5238352426%_))))
                                  (if (gx#stx-pair? _%hd5238452430%_)
                                      (let ((_%e5238652436%_
                                             (gx#syntax-e _%hd5238452430%_)))
                                        (let ((_%hd5238752440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5238652436%_)))
                                              (_%tl5238852443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5238652436%_))))
                                          (if (gx#stx-pair? _%tl5238852443%_)
                                              (let ((_%e5238952446%_
                                                     (gx#syntax-e
                                                      _%tl5238852443%_)))
                                                (let ((_%hd5239052450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5238952446%_)))
                                                      (_%tl5239152453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5238952446%_))))
                                                  (if (gx#identifier?
                                                       _%hd5239052450%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g99640_|
                                                           _%hd5239052450%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5239152453%_)
                                                              (let ((_%e5239252456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5239152453%_)))
                        (let ((_%hd5239352460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5239252456%_)))
                              (_%tl5239452463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5239252456%_))))
                          (if (gx#stx-null? _%tl5239452463%_)
                              (if (gx#stx-pair/null? _%tl5238552433%_)
                                  (let ((_g99641_
                                         (gx#syntax-split-splice
                                          _%tl5238552433%_
                                          '0)))
                                    (begin
                                      (let ((_g99642_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g99641_)
                                                   (##values-length _g99641_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g99642_ 2)))
                                            (error "Context expects 2 values"
                                                   _g99642_)))
                                      (let ((_%target5239552466%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g99641_ 0)))
                                            (_%tl5239752469%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g99641_ 1))))
                                        (if (gx#stx-null? _%tl5239752469%_)
                                            (letrec ((_%loop5239852472%_
                                                      (lambda (_%hd5239652476%_
                                                               _%body5240252479%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5239652476%_)
                                                            (let ((_%e5239952481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5239652476%_)))
                      (let ((_%lp-hd5240052485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5239952481%_)))
                            (_%lp-tl5240152488%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5239952481%_))))
                        (_%loop5239852472%_
                         _%lp-tl5240152488%_
                         (cons _%lp-hd5240052485%_ _%body5240252479%_))))
                    (let ((_%body5240352491%_ (reverse _%body5240252479%_)))
                      ((lambda (_%g5237752494%_
                                _%g5237852496%_
                                _%g5237952497%_)
                         (if (gx#identifier? _%g5237952497%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5237852496%_
                                               (cons _%g5237952497%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5252152524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5252252527%_)
                            (cons _%g5252152524%_ _%g5252252527%_))
                          '()
                          _%g5237752494%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5237952497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5237852496%_ (cons _%g5237952497%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5237552409%_ _%g5237652413%_)))
                       _%body5240352491%_
                       _%hd5239352460%_
                       _%hd5238752440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5239852472%_
                                               _%target5239552466%_
                                               '()))
                                            (_%g5237552409%_
                                             _%g5237652413%_)))))
                                  (_%g5237552409%_ _%g5237652413%_))
                              (_%g5237552409%_ _%g5237652413%_))))
                      (_%g5237552409%_ _%g5237652413%_))
                  (_%g5237552409%_ _%g5237652413%_))
              (_%g5237552409%_ _%g5237652413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5237552409%_
                                               _%g5237652413%_))))
                                      (_%g5237552409%_ _%g5237652413%_))))
                              (_%g5237552409%_ _%g5237652413%_))))
                      (_%g5237552409%_ _%g5237652413%_)))))
          (_%g5237452530%_ _%$stx52371%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53094%_ _%slot53096%_)
        (let ((_%$e53098%_
               (let ((__obj99444 _%klass53094%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj99444
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj99444 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj99444
                      'slot-types)))))
          (if _%$e53098%_
              ((lambda (_%slot-types53102%_)
                 (agetq _%slot53096%_ _%slot-types53102%_))
               _%$e53098%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53075%_ _%slot53077%_)
        (let ((_%$e53079%_
               (let ((__obj99445 _%klass53075%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj99445
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj99445 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj99445
                      'slot-defaults)))))
          (if _%$e53079%_
              ((lambda (_%slot-defaults53083%_)
                 (let ((_%$e53086%_
                        (agetq _%slot53077%_ _%slot-defaults53083%_)))
                   (if _%$e53086%_
                       (gx#syntax-local-introduce _%$e53086%_)
                       '#f)))
               _%$e53079%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53056%_ _%slot53058%_)
        (let ((_%$e53060%_
               (let ((__obj99446 _%klass53056%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj99446
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj99446 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj99446
                      'slot-defaults)))))
          (if _%$e53060%_
              ((lambda (_%slot-defaults53064%_)
                 (let ((_%$e53067%_
                        (agetq _%slot53058%_ _%slot-defaults53064%_)))
                   (if _%$e53067%_
                       (gx#syntax-local-introduce _%$e53067%_)
                       '#f)))
               _%$e53060%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52825%_ _%slot52827%_)
        (let ((_%contract5282852830%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52825%_
                _%slot52827%_)))
          (if _%contract5282852830%_
              (let* ((_%contract52833%_ _%contract5282852830%_)
                     (_%__stx9331293313%_ _%contract52833%_)
                     (_%g5283852875%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9331293313%_))))
                (let ((_%__kont9331593316%_
                       (lambda (_%g5284053025%_ _%g5284153027%_)
                         (not (gx#free-identifier=?
                               _%g5284153027%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9331793318%_
                       (lambda (_%g5284852965%_
                                _%g5284952967%_
                                _%g5285052968%_)
                         (not (gx#free-identifier=?
                               _%g5284952967%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9331993320%_ (lambda (_%g5286352902%_) '#f)))
                  (let* ((_%__match9336593366%_
                          (lambda (_%e5285152925%_
                                   _%hd5285252929%_
                                   _%tl5285352932%_
                                   _%e5285452935%_
                                   _%hd5285552939%_
                                   _%tl5285652942%_
                                   _%e5285752945%_
                                   _%hd5285852949%_
                                   _%tl5285952952%_
                                   _%e5286052955%_
                                   _%hd5286152959%_
                                   _%tl5286252962%_)
                            (let ((_%g5284852965%_ _%hd5286152959%_)
                                  (_%g5284952967%_ _%hd5285852949%_)
                                  (_%g5285052968%_ _%hd5285552939%_))
                              (if (and (gx#identifier? _%g5284952967%_)
                                       (or (gx#free-identifier=?
                                            _%g5284952967%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5284952967%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5284952967%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5284952967%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9331793318%_
                                   _%g5284852965%_
                                   _%g5284952967%_
                                   _%g5285052968%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5283852875%_))))))
                         (_%__match9333593336%_
                          (lambda (_%e5284253005%_
                                   _%hd5284353009%_
                                   _%tl5284453012%_
                                   _%e5284553015%_
                                   _%hd5284653019%_
                                   _%tl5284753022%_)
                            (let ((_%g5284053025%_ _%hd5284653019%_)
                                  (_%g5284153027%_ _%hd5284353009%_))
                              (if (and (gx#identifier? _%g5284153027%_)
                                       (or (gx#free-identifier=?
                                            _%g5284153027%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5284153027%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5284153027%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5284153027%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9331593316%_
                                   _%g5284053025%_
                                   _%g5284153027%_)
                                  (if (gx#identifier? _%hd5284353009%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g99643_|
                                           _%hd5284353009%_)
                                          (_%__kont9331993320%_
                                           _%hd5284653019%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5283852875%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5283852875%_))))))))
                    (if (gx#stx-pair? _%__stx9331293313%_)
                        (let ((_%e5284253005%_
                               (gx#syntax-e _%__stx9331293313%_)))
                          (let ((_%tl5284453012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5284253005%_)))
                                (_%hd5284353009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5284253005%_))))
                            (if (gx#stx-pair? _%tl5284453012%_)
                                (let ((_%e5284553015%_
                                       (gx#syntax-e _%tl5284453012%_)))
                                  (let ((_%tl5284753022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5284553015%_)))
                                        (_%hd5284653019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5284553015%_))))
                                    (if (gx#stx-null? _%tl5284753022%_)
                                        (_%__match9333593336%_
                                         _%e5284253005%_
                                         _%hd5284353009%_
                                         _%tl5284453012%_
                                         _%e5284553015%_
                                         _%hd5284653019%_
                                         _%tl5284753022%_)
                                        (if (gx#identifier? _%hd5284353009%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g99643_|
                                                 _%hd5284353009%_)
                                                (if (gx#stx-pair?
                                                     _%tl5284753022%_)
                                                    (let ((_%e5285752945%_
                                                           (gx#syntax-e
                                                            _%tl5284753022%_)))
                                                      (let ((_%tl5285952952%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5285752945%_)))
                    (_%hd5285852949%_
                     (let () (declare (not safe)) (##car _%e5285752945%_))))
                (if (gx#stx-pair? _%tl5285952952%_)
                    (let ((_%e5286052955%_ (gx#syntax-e _%tl5285952952%_)))
                      (let ((_%tl5286252962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5286052955%_)))
                            (_%hd5286152959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5286052955%_))))
                        (if (gx#stx-null? _%tl5286252962%_)
                            (_%__match9336593366%_
                             _%e5284253005%_
                             _%hd5284353009%_
                             _%tl5284453012%_
                             _%e5284553015%_
                             _%hd5284653019%_
                             _%tl5284753022%_
                             _%e5285752945%_
                             _%hd5285852949%_
                             _%tl5285952952%_
                             _%e5286052955%_
                             _%hd5286152959%_
                             _%tl5286252962%_)
                            (let () (declare (not safe)) (_%g5283852875%_)))))
                    (let () (declare (not safe)) (_%g5283852875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5283852875%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5283852875%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5283852875%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5283852875%_)))))
                        (let () (declare (not safe)) (_%g5283852875%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass52594%_ _%slot52596%_)
        (let ((_%contract5259752599%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52594%_
                _%slot52596%_)))
          (if _%contract5259752599%_
              (let* ((_%contract52602%_ _%contract5259752599%_)
                     (_%__stx9338693387%_ _%contract52602%_)
                     (_%g5260752644%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9338693387%_))))
                (let ((_%__kont9338993390%_
                       (lambda (_%g5260952794%_ _%g5261052796%_)
                         (not (gx#free-identifier=?
                               _%g5261052796%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9339193392%_
                       (lambda (_%g5261752734%_
                                _%g5261852736%_
                                _%g5261952737%_)
                         '#t))
                      (_%__kont9339393394%_ (lambda (_%g5263252671%_) '#t)))
                  (let* ((_%__match9343993440%_
                          (lambda (_%e5262052694%_
                                   _%hd5262152698%_
                                   _%tl5262252701%_
                                   _%e5262352704%_
                                   _%hd5262452708%_
                                   _%tl5262552711%_
                                   _%e5262652714%_
                                   _%hd5262752718%_
                                   _%tl5262852721%_
                                   _%e5262952724%_
                                   _%hd5263052728%_
                                   _%tl5263152731%_)
                            (let ((_%g5261752734%_ _%hd5263052728%_)
                                  (_%g5261852736%_ _%hd5262752718%_)
                                  (_%g5261952737%_ _%hd5262452708%_))
                              (if (and (gx#identifier? _%g5261852736%_)
                                       (or (gx#free-identifier=?
                                            _%g5261852736%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5261852736%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5261852736%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5261852736%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9339193392%_
                                   _%g5261752734%_
                                   _%g5261852736%_
                                   _%g5261952737%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5260752644%_))))))
                         (_%__match9340993410%_
                          (lambda (_%e5261152774%_
                                   _%hd5261252778%_
                                   _%tl5261352781%_
                                   _%e5261452784%_
                                   _%hd5261552788%_
                                   _%tl5261652791%_)
                            (let ((_%g5260952794%_ _%hd5261552788%_)
                                  (_%g5261052796%_ _%hd5261252778%_))
                              (if (and (gx#identifier? _%g5261052796%_)
                                       (or (gx#free-identifier=?
                                            _%g5261052796%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5261052796%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5261052796%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5261052796%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9338993390%_
                                   _%g5260952794%_
                                   _%g5261052796%_)
                                  (if (gx#identifier? _%hd5261252778%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g99644_|
                                           _%hd5261252778%_)
                                          (_%__kont9339393394%_
                                           _%hd5261552788%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5260752644%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5260752644%_))))))))
                    (if (gx#stx-pair? _%__stx9338693387%_)
                        (let ((_%e5261152774%_
                               (gx#syntax-e _%__stx9338693387%_)))
                          (let ((_%tl5261352781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5261152774%_)))
                                (_%hd5261252778%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5261152774%_))))
                            (if (gx#stx-pair? _%tl5261352781%_)
                                (let ((_%e5261452784%_
                                       (gx#syntax-e _%tl5261352781%_)))
                                  (let ((_%tl5261652791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5261452784%_)))
                                        (_%hd5261552788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5261452784%_))))
                                    (if (gx#stx-null? _%tl5261652791%_)
                                        (_%__match9340993410%_
                                         _%e5261152774%_
                                         _%hd5261252778%_
                                         _%tl5261352781%_
                                         _%e5261452784%_
                                         _%hd5261552788%_
                                         _%tl5261652791%_)
                                        (if (gx#identifier? _%hd5261252778%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g99644_|
                                                 _%hd5261252778%_)
                                                (if (gx#stx-pair?
                                                     _%tl5261652791%_)
                                                    (let ((_%e5262652714%_
                                                           (gx#syntax-e
                                                            _%tl5261652791%_)))
                                                      (let ((_%tl5262852721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5262652714%_)))
                    (_%hd5262752718%_
                     (let () (declare (not safe)) (##car _%e5262652714%_))))
                (if (gx#stx-pair? _%tl5262852721%_)
                    (let ((_%e5262952724%_ (gx#syntax-e _%tl5262852721%_)))
                      (let ((_%tl5263152731%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5262952724%_)))
                            (_%hd5263052728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5262952724%_))))
                        (if (gx#stx-null? _%tl5263152731%_)
                            (_%__match9343993440%_
                             _%e5261152774%_
                             _%hd5261252778%_
                             _%tl5261352781%_
                             _%e5261452784%_
                             _%hd5261552788%_
                             _%tl5261652791%_
                             _%e5262652714%_
                             _%hd5262752718%_
                             _%tl5262852721%_
                             _%e5262952724%_
                             _%hd5263052728%_
                             _%tl5263152731%_)
                            (let () (declare (not safe)) (_%g5260752644%_)))))
                    (let () (declare (not safe)) (_%g5260752644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5260752644%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5260752644%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5260752644%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5260752644%_)))))
                        (let () (declare (not safe)) (_%g5260752644%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id52581%_)
        (if (gx#identifier? _%id52581%_)
            (let* ((_%str52584%_ (symbol->string (gx#stx-e _%id52581%_)))
                   (_%index5258652588%_ (string-index _%str52584%_ '#\.)))
              (if _%index5258652588%_
                  (let ((_%index52591%_ _%index5258652588%_))
                    (if (let () (declare (not safe)) (##fx> _%index52591%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str52584%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx52574%_ _%id52576%_)
        (let ((_%parts52578%_
               (string-split (symbol->string (gx#stx-e _%id52576%_)) '#\.)))
          (if (find string-empty? _%parts52578%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx52574%_
               _%id52576%_)
              (cons (gx#stx-identifier _%id52576%_ (car _%parts52578%_))
                    (map string->symbol (cdr _%parts52578%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx52555%_ _%klass-or-id52557%_ _%slot52558%_)
        (let* ((_%klass52560%_
                (if (gx#identifier? _%klass-or-id52557%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52555%_
                       _%klass-or-id52557%_))
                    _%klass-or-id52557%_))
               (_%accessors52563%_
                (let ((__obj99447 _%klass52560%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj99447
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj99447 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj99447
                       'unchecked-accessors))))
               (_%$e52568%_ (agetq _%slot52558%_ _%accessors52563%_)))
          (if _%$e52568%_
              _%$e52568%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx52555%_
               _%klass52560%_
               _%slot52558%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52535%_
               _%klass-or-id52537%_
               _%slot52538%_
               _%checked?52539%_)
        (let* ((_%klass52541%_
                (if (gx#identifier? _%klass-or-id52537%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52535%_
                       _%klass-or-id52537%_))
                    _%klass-or-id52537%_))
               (_%mutators52544%_
                (if _%checked?52539%_
                    (let ((__obj99448 _%klass52541%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj99448
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj99448 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj99448
                           'mutators)))
                    (let ((__obj99449 _%klass52541%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj99449
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj99449 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj99449
                           'unchecked-mutators)))))
               (_%$e52549%_ (agetq _%slot52538%_ _%mutators52544%_)))
          (if _%$e52549%_
              _%$e52549%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx52535%_
               _%klass52541%_
               _%slot52538%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53107%_)
        (letrec ((_%expand-body53110%_
                  (lambda (_%klass54008%_
                           _%var54010%_
                           _%Type54011%_
                           _%body54012%_
                           _%checked?54013%_)
                    (let* ((_%g5401554059%_
                            (lambda (_%g5401654055%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5401654055%_)))
                           (_%g5401454214%_
                            (lambda (_%g5401654063%_)
                              (if (gx#stx-pair? _%g5401654063%_)
                                  (let ((_%e5402454066%_
                                         (gx#syntax-e _%g5401654063%_)))
                                    (let ((_%hd5402554070%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5402454066%_)))
                                          (_%tl5402654073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5402454066%_))))
                                      (if (gx#stx-pair? _%tl5402654073%_)
                                          (let ((_%e5402754076%_
                                                 (gx#syntax-e
                                                  _%tl5402654073%_)))
                                            (let ((_%hd5402854080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5402754076%_)))
                                                  (_%tl5402954083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5402754076%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5402954083%_)
                                                  (let ((_%e5403054086%_
                                                         (gx#syntax-e
                                                          _%tl5402954083%_)))
                                                    (let ((_%hd5403154090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5403054086%_)))
                                                          (_%tl5403254093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5403054086%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5403254093%_)
                                                          (let ((_%e5403354096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5403254093%_)))
                    (let ((_%hd5403454100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5403354096%_)))
                          (_%tl5403554103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5403354096%_))))
                      (if (gx#stx-pair? _%tl5403554103%_)
                          (let ((_%e5403654106%_
                                 (gx#syntax-e _%tl5403554103%_)))
                            (let ((_%hd5403754110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5403654106%_)))
                                  (_%tl5403854113%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5403654106%_))))
                              (if (gx#stx-pair? _%tl5403854113%_)
                                  (let ((_%e5403954116%_
                                         (gx#syntax-e _%tl5403854113%_)))
                                    (let ((_%hd5404054120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5403954116%_)))
                                          (_%tl5404154123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5403954116%_))))
                                      (if (gx#stx-pair? _%tl5404154123%_)
                                          (let ((_%e5404254126%_
                                                 (gx#syntax-e
                                                  _%tl5404154123%_)))
                                            (let ((_%hd5404354130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5404254126%_)))
                                                  (_%tl5404454133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5404254126%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5404354130%_)
                                                  (let ((_g99645_
                                                         (gx#syntax-split-splice
                                                          _%hd5404354130%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g99646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g99645_)
                           (##values-length _g99645_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99646_ 2)))
                    (error "Context expects 2 values" _g99646_)))
              (let ((_%target5404554136%_
                     (let () (declare (not safe)) (##values-ref _g99645_ 0)))
                    (_%tl5404754139%_
                     (let () (declare (not safe)) (##values-ref _g99645_ 1))))
                (if (gx#stx-null? _%tl5404754139%_)
                    (letrec ((_%loop5404854142%_
                              (lambda (_%hd5404654146%_ _%body5405254149%_)
                                (if (gx#stx-pair? _%hd5404654146%_)
                                    (let ((_%e5404954151%_
                                           (gx#syntax-e _%hd5404654146%_)))
                                      (let ((_%lp-hd5405054155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5404954151%_)))
                                            (_%lp-tl5405154158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5404954151%_))))
                                        (_%loop5404854142%_
                                         _%lp-tl5405154158%_
                                         (cons _%lp-hd5405054155%_
                                               _%body5405254149%_))))
                                    (let ((_%body5405354161%_
                                           (reverse _%body5405254149%_)))
                                      (if (gx#stx-null? _%tl5404454133%_)
                                          ((lambda (_%g5401754164%_
                                                    _%g5401854166%_
                                                    _%g5401954167%_
                                                    _%g5402054168%_
                                                    _%g5402154169%_
                                                    _%g5402254170%_
                                                    _%g5402354171%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5402154169%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5402254170%_ '()))
                                         (cons _%g5402154169%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5402354171%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5402154169%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5402054168%_ '()))
                               (cons _%g5401954167%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5401854166%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5420554208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5420654211%_)
                      (cons _%g5420554208%_ _%g5420654211%_))
                    '()
                    _%g5401754164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5405354161%_
                                           _%hd5404054120%_
                                           _%hd5403754110%_
                                           _%hd5403454100%_
                                           _%hd5403154090%_
                                           _%hd5402854080%_
                                           _%hd5402554070%_)
                                          (_%g5401554059%_
                                           _%g5401654063%_)))))))
                      (_%loop5404854142%_ _%target5404554136%_ '()))
                    (_%g5401554059%_ _%g5401654063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5401554059%_
                                                   _%g5401654063%_))))
                                          (_%g5401554059%_ _%g5401654063%_))))
                                  (_%g5401554059%_ _%g5401654063%_))))
                          (_%g5401554059%_ _%g5401654063%_))))
                  (_%g5401554059%_ _%g5401654063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5401554059%_
                                                   _%g5401654063%_))))
                                          (_%g5401554059%_ _%g5401654063%_))))
                                  (_%g5401554059%_ _%g5401654063%_)))))
                      (_%g5401454214%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj99450 _%klass54008%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj99450
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj99450
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj99450
                                    'type-descriptor)))
                             _%var54010%_
                             _%klass54008%_
                             _%checked?54013%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54012%_)))))
                 (_%expand53112%_
                  (lambda (_%var53900%_
                           _%Type53902%_
                           _%body53903%_
                           _%checked?53904%_
                           _%checked-mutators?53905%_
                           _%maybe?53906%_)
                    (let* ((_%klass53908%_
                            (gx#syntax-local-value _%Type53902%_ false))
                           (_%expr-body53915%_
                            (_%expand-body53110%_
                             _%klass53908%_
                             _%var53900%_
                             _%Type53902%_
                             _%body53903%_
                             (let ((_%$e53911%_ _%checked?53904%_))
                               (if _%$e53911%_
                                   _%$e53911%_
                                   _%checked-mutators?53905%_)))))
                      (if _%checked?53904%_
                          (let* ((_%g5392053939%_
                                  (lambda (_%g5392153935%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5392153935%_)))
                                 (_%g5391954001%_
                                  (lambda (_%g5392153943%_)
                                    (if (gx#stx-pair? _%g5392153943%_)
                                        (let ((_%e5392553946%_
                                               (gx#syntax-e _%g5392153943%_)))
                                          (let ((_%hd5392653950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5392553946%_)))
                                                (_%tl5392753953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5392553946%_))))
                                            (if (gx#stx-pair? _%tl5392753953%_)
                                                (let ((_%e5392853956%_
                                                       (gx#syntax-e
                                                        _%tl5392753953%_)))
                                                  (let ((_%hd5392953960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5392853956%_)))
                                                        (_%tl5393053963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5392853956%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5393053963%_)
                                                        (let ((_%e5393153966%_
                                                               (gx#syntax-e
                                                                _%tl5393053963%_)))
                                                          (let ((_%hd5393253970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5393153966%_)))
                        (_%tl5393353973%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5393153966%_))))
                    (if (gx#stx-null? _%tl5393353973%_)
                        ((lambda (_%g5392253976%_
                                  _%g5392353978%_
                                  _%g5392453979%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5392353978%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5392453979%_ '())))
                                       (cons _%g5392253976%_ '()))))
                         _%hd5393253970%_
                         _%hd5392953960%_
                         _%hd5392653950%_)
                        (_%g5392053939%_ _%g5392153943%_))))
                (_%g5392053939%_ _%g5392153943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5392053939%_
                                                 _%g5392153943%_))))
                                        (_%g5392053939%_ _%g5392153943%_)))))
                            (_%g5391954001%_
                             (list (let ((_%instance?54005%_
                                          (let ((__obj99451 _%klass53908%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj99451
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj99451
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj99451
                                                 'predicate)))))
                                     (if _%maybe?53906%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54005%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54005%_))
                                   _%var53900%_
                                   _%expr-body53915%_)))
                          _%expr-body53915%_)))))
          (let* ((_%__stx9346093461%_ _%stx53107%_)
                 (_%g5311853261%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9346093461%_))))
            (let ((_%__kont9346393464%_
                   (lambda (_%g5312053828%_
                            _%g5312153830%_
                            _%g5312253831%_
                            _%g5312353832%_)
                     (let* ((_%g5385753865%_
                             (lambda (_%g5385853861%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5385853861%_)))
                            (_%g5385653892%_
                             (lambda (_%g5385853869%_)
                               ((lambda (_%g5385953872%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5312353832%_
                                                    (cons _%g5312253831%_
                                                          (cons _%g5385953872%_
                                                                '())))
                                              (foldr (lambda (_%g5388353886%_
                                                              _%g5388453889%_)
                                                       (cons _%g5388353886%_
                                                             _%g5388453889%_))
                                                     '()
                                                     _%g5312053828%_))))
                                _%g5385853869%_))))
                       (_%g5385653892%_
                        (let ((__obj99452
                               (gx#syntax-local-value _%g5312153830%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj99452
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj99452
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj99452
                               'identifier)))))))
                  (_%__kont9346793468%_
                   (lambda (_%g5314853708%_ _%g5314953710%_ _%g5315053711%_)
                     (_%expand53112%_
                      _%g5315053711%_
                      _%g5314953710%_
                      (foldr (lambda (_%g5373453737%_ _%g5373553740%_)
                               (cons _%g5373453737%_ _%g5373553740%_))
                             '()
                             _%g5314853708%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9347193472%_
                   (lambda (_%g5317553588%_ _%g5317653590%_ _%g5317753591%_)
                     (_%expand53112%_
                      _%g5317753591%_
                      _%g5317653590%_
                      (foldr (lambda (_%g5361453617%_ _%g5361553620%_)
                               (cons _%g5361453617%_ _%g5361553620%_))
                             '()
                             _%g5317553588%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9347593476%_
                   (lambda (_%g5320253468%_ _%g5320353470%_ _%g5320453471%_)
                     (_%expand53112%_
                      _%g5320453471%_
                      _%g5320353470%_
                      (foldr (lambda (_%g5349453497%_ _%g5349553500%_)
                               (cons _%g5349453497%_ _%g5349553500%_))
                             '()
                             _%g5320253468%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9347993480%_
                   (lambda (_%g5322953346%_ _%g5323053348%_ _%g5323153349%_)
                     (_%expand53112%_
                      _%g5323153349%_
                      _%g5323053348%_
                      (foldr (lambda (_%g5337453377%_ _%g5337553380%_)
                               (cons _%g5337453377%_ _%g5337553380%_))
                             '()
                             _%g5322953346%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9369993700%_
                      (lambda (_%e5323253268%_
                               _%hd5323353272%_
                               _%tl5323453275%_
                               _%e5323553278%_
                               _%hd5323653282%_
                               _%tl5323753285%_
                               _%e5323853288%_
                               _%hd5323953292%_
                               _%tl5324053295%_
                               _%e5324153298%_
                               _%hd5324253302%_
                               _%tl5324353305%_
                               _%e5324453308%_
                               _%hd5324553312%_
                               _%tl5324653315%_
                               _%__splice9348193482%_
                               _%target5324753318%_
                               _%tl5324953321%_)
                        (letrec ((_%loop5325053324%_
                                  (lambda (_%hd5324853328%_ _%body5325453331%_)
                                    (if (gx#stx-pair? _%hd5324853328%_)
                                        (let ((_%e5325153333%_
                                               (gx#syntax-e _%hd5324853328%_)))
                                          (let ((_%lp-tl5325353340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5325153333%_)))
                                                (_%lp-hd5325253337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5325153333%_))))
                                            (_%loop5325053324%_
                                             _%lp-tl5325353340%_
                                             (cons _%lp-hd5325253337%_
                                                   _%body5325453331%_))))
                                        (let ((_%body5325553343%_
                                               (reverse _%body5325453331%_)))
                                          (let ((_%g5322953346%_
                                                 _%body5325553343%_)
                                                (_%g5323053348%_
                                                 _%hd5324553312%_)
                                                (_%g5323153349%_
                                                 _%hd5323953292%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5323053348%_))
                                                (_%__kont9347993480%_
                                                 _%g5322953346%_
                                                 _%g5323053348%_
                                                 _%g5323153349%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))))))))
                          (_%loop5325053324%_ _%target5324753318%_ '()))))
                     (_%__match9365593656%_
                      (lambda (_%e5320553390%_
                               _%hd5320653394%_
                               _%tl5320753397%_
                               _%e5320853400%_
                               _%hd5320953404%_
                               _%tl5321053407%_
                               _%e5321153410%_
                               _%hd5321253414%_
                               _%tl5321353417%_
                               _%e5321453420%_
                               _%hd5321553424%_
                               _%tl5321653427%_
                               _%e5321753430%_
                               _%hd5321853434%_
                               _%tl5321953437%_
                               _%__splice9347793478%_
                               _%target5322053440%_
                               _%tl5322253443%_)
                        (letrec ((_%loop5322353446%_
                                  (lambda (_%hd5322153450%_ _%body5322753453%_)
                                    (if (gx#stx-pair? _%hd5322153450%_)
                                        (let ((_%e5322453455%_
                                               (gx#syntax-e _%hd5322153450%_)))
                                          (let ((_%lp-tl5322653462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5322453455%_)))
                                                (_%lp-hd5322553459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5322453455%_))))
                                            (_%loop5322353446%_
                                             _%lp-tl5322653462%_
                                             (cons _%lp-hd5322553459%_
                                                   _%body5322753453%_))))
                                        (let ((_%body5322853465%_
                                               (reverse _%body5322753453%_)))
                                          (let ((_%g5320253468%_
                                                 _%body5322853465%_)
                                                (_%g5320353470%_
                                                 _%hd5321853434%_)
                                                (_%g5320453471%_
                                                 _%hd5321253414%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5320353470%_))
                                                (_%__kont9347593476%_
                                                 _%g5320253468%_
                                                 _%g5320353470%_
                                                 _%g5320453471%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))))))))
                          (_%loop5322353446%_ _%target5322053440%_ '()))))
                     (_%__match9361193612%_
                      (lambda (_%e5317853510%_
                               _%hd5317953514%_
                               _%tl5318053517%_
                               _%e5318153520%_
                               _%hd5318253524%_
                               _%tl5318353527%_
                               _%e5318453530%_
                               _%hd5318553534%_
                               _%tl5318653537%_
                               _%e5318753540%_
                               _%hd5318853544%_
                               _%tl5318953547%_
                               _%e5319053550%_
                               _%hd5319153554%_
                               _%tl5319253557%_
                               _%__splice9347393474%_
                               _%target5319353560%_
                               _%tl5319553563%_)
                        (letrec ((_%loop5319653566%_
                                  (lambda (_%hd5319453570%_ _%body5320053573%_)
                                    (if (gx#stx-pair? _%hd5319453570%_)
                                        (let ((_%e5319753575%_
                                               (gx#syntax-e _%hd5319453570%_)))
                                          (let ((_%lp-tl5319953582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5319753575%_)))
                                                (_%lp-hd5319853579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5319753575%_))))
                                            (_%loop5319653566%_
                                             _%lp-tl5319953582%_
                                             (cons _%lp-hd5319853579%_
                                                   _%body5320053573%_))))
                                        (let ((_%body5320153585%_
                                               (reverse _%body5320053573%_)))
                                          (let ((_%g5317553588%_
                                                 _%body5320153585%_)
                                                (_%g5317653590%_
                                                 _%hd5319153554%_)
                                                (_%g5317753591%_
                                                 _%hd5318553534%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5317653590%_))
                                                (_%__kont9347193472%_
                                                 _%g5317553588%_
                                                 _%g5317653590%_
                                                 _%g5317753591%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))))))))
                          (_%loop5319653566%_ _%target5319353560%_ '()))))
                     (_%__match9356793568%_
                      (lambda (_%e5315153630%_
                               _%hd5315253634%_
                               _%tl5315353637%_
                               _%e5315453640%_
                               _%hd5315553644%_
                               _%tl5315653647%_
                               _%e5315753650%_
                               _%hd5315853654%_
                               _%tl5315953657%_
                               _%e5316053660%_
                               _%hd5316153664%_
                               _%tl5316253667%_
                               _%e5316353670%_
                               _%hd5316453674%_
                               _%tl5316553677%_
                               _%__splice9346993470%_
                               _%target5316653680%_
                               _%tl5316853683%_)
                        (letrec ((_%loop5316953686%_
                                  (lambda (_%hd5316753690%_ _%body5317353693%_)
                                    (if (gx#stx-pair? _%hd5316753690%_)
                                        (let ((_%e5317053695%_
                                               (gx#syntax-e _%hd5316753690%_)))
                                          (let ((_%lp-tl5317253702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5317053695%_)))
                                                (_%lp-hd5317153699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5317053695%_))))
                                            (_%loop5316953686%_
                                             _%lp-tl5317253702%_
                                             (cons _%lp-hd5317153699%_
                                                   _%body5317353693%_))))
                                        (let ((_%body5317453705%_
                                               (reverse _%body5317353693%_)))
                                          (let ((_%g5314853708%_
                                                 _%body5317453705%_)
                                                (_%g5314953710%_
                                                 _%hd5316453674%_)
                                                (_%g5315053711%_
                                                 _%hd5315853654%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5314953710%_))
                                                (_%__kont9346793468%_
                                                 _%g5314853708%_
                                                 _%g5314953710%_
                                                 _%g5315053711%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))))))))
                          (_%loop5316953686%_ _%target5316653680%_ '()))))
                     (_%__match9354793548%_
                      (lambda (_%e5315153630%_
                               _%hd5315253634%_
                               _%tl5315353637%_
                               _%e5315453640%_
                               _%hd5315553644%_
                               _%tl5315653647%_
                               _%e5315753650%_
                               _%hd5315853654%_
                               _%tl5315953657%_
                               _%e5316053660%_
                               _%hd5316153664%_
                               _%tl5316253667%_)
                        (if (gx#identifier? _%hd5316153664%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g99647_|
                                 _%hd5316153664%_)
                                (if (gx#stx-pair? _%tl5316253667%_)
                                    (let ((_%e5316353670%_
                                           (gx#syntax-e _%tl5316253667%_)))
                                      (let ((_%tl5316553677%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5316353670%_)))
                                            (_%hd5316453674%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5316353670%_))))
                                        (if (gx#stx-null? _%tl5316553677%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5315653647%_)
                                                (let ((_%__splice9346993470%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5315653647%_
                                                        '0)))
                                                  (let ((_%tl5316853683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9346993470%_
                                                            '1)))
                                                        (_%target5316653680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9346993470%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5316853683%_)
                                                        (_%__match9356793568%_
                                                         _%e5315153630%_
                                                         _%hd5315253634%_
                                                         _%tl5315353637%_
                                                         _%e5315453640%_
                                                         _%hd5315553644%_
                                                         _%tl5315653647%_
                                                         _%e5315753650%_
                                                         _%hd5315853654%_
                                                         _%tl5315953657%_
                                                         _%e5316053660%_
                                                         _%hd5316153664%_
                                                         _%tl5316253667%_
                                                         _%e5316353670%_
                                                         _%hd5316453674%_
                                                         _%tl5316553677%_
                                                         _%__splice9346993470%_
                                                         _%target5316653680%_
                                                         _%tl5316853683%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5311853261%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5311853261%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5311853261%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g99648_|
                                     _%hd5316153664%_)
                                    (if (gx#stx-pair? _%tl5316253667%_)
                                        (let ((_%e5319053550%_
                                               (gx#syntax-e _%tl5316253667%_)))
                                          (let ((_%tl5319253557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5319053550%_)))
                                                (_%hd5319153554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5319053550%_))))
                                            (if (gx#stx-null? _%tl5319253557%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5315653647%_)
                                                    (let ((_%__splice9347393474%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5315653647%_
                                                            '0)))
                                                      (let ((_%tl5319553563%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9347393474%_ '1)))
                    (_%target5319353560%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9347393474%_ '0))))
                (if (gx#stx-null? _%tl5319553563%_)
                    (_%__match9361193612%_
                     _%e5315153630%_
                     _%hd5315253634%_
                     _%tl5315353637%_
                     _%e5315453640%_
                     _%hd5315553644%_
                     _%tl5315653647%_
                     _%e5315753650%_
                     _%hd5315853654%_
                     _%tl5315953657%_
                     _%e5316053660%_
                     _%hd5316153664%_
                     _%tl5316253667%_
                     _%e5319053550%_
                     _%hd5319153554%_
                     _%tl5319253557%_
                     _%__splice9347393474%_
                     _%target5319353560%_
                     _%tl5319553563%_)
                    (let () (declare (not safe)) (_%g5311853261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5311853261%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5311853261%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g99649_|
                                         _%hd5316153664%_)
                                        (if (gx#stx-pair? _%tl5316253667%_)
                                            (let ((_%e5321753430%_
                                                   (gx#syntax-e
                                                    _%tl5316253667%_)))
                                              (let ((_%tl5321953437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5321753430%_)))
                                                    (_%hd5321853434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5321753430%_))))
                                                (if (gx#stx-null?
                                                     _%tl5321953437%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5315653647%_)
                                                        (let ((_%__splice9347793478%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5315653647%_
                                                                '0)))
                                                          (let ((_%tl5322253443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9347793478%_ '1)))
                        (_%target5322053440%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9347793478%_ '0))))
                    (if (gx#stx-null? _%tl5322253443%_)
                        (_%__match9365593656%_
                         _%e5315153630%_
                         _%hd5315253634%_
                         _%tl5315353637%_
                         _%e5315453640%_
                         _%hd5315553644%_
                         _%tl5315653647%_
                         _%e5315753650%_
                         _%hd5315853654%_
                         _%tl5315953657%_
                         _%e5316053660%_
                         _%hd5316153664%_
                         _%tl5316253667%_
                         _%e5321753430%_
                         _%hd5321853434%_
                         _%tl5321953437%_
                         _%__splice9347793478%_
                         _%target5322053440%_
                         _%tl5322253443%_)
                        (let () (declare (not safe)) (_%g5311853261%_)))))
                (let () (declare (not safe)) (_%g5311853261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5311853261%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5311853261%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g99650_|
                                             _%hd5316153664%_)
                                            (if (gx#stx-pair? _%tl5316253667%_)
                                                (let ((_%e5324453308%_
                                                       (gx#syntax-e
                                                        _%tl5316253667%_)))
                                                  (let ((_%tl5324653315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5324453308%_)))
                                                        (_%hd5324553312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5324453308%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5324653315%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5315653647%_)
                                                            (let ((_%__splice9348193482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5315653647%_
                            '0)))
                      (let ((_%tl5324953321%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9348193482%_ '1)))
                            (_%target5324753318%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9348193482%_ '0))))
                        (if (gx#stx-null? _%tl5324953321%_)
                            (_%__match9369993700%_
                             _%e5315153630%_
                             _%hd5315253634%_
                             _%tl5315353637%_
                             _%e5315453640%_
                             _%hd5315553644%_
                             _%tl5315653647%_
                             _%e5315753650%_
                             _%hd5315853654%_
                             _%tl5315953657%_
                             _%e5316053660%_
                             _%hd5316153664%_
                             _%tl5316253667%_
                             _%e5324453308%_
                             _%hd5324553312%_
                             _%tl5324653315%_
                             _%__splice9348193482%_
                             _%target5324753318%_
                             _%tl5324953321%_)
                            (let () (declare (not safe)) (_%g5311853261%_)))))
                    (let () (declare (not safe)) (_%g5311853261%_)))
                (let () (declare (not safe)) (_%g5311853261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5311853261%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5311853261%_))))))
                            (let () (declare (not safe)) (_%g5311853261%_)))))
                     (_%__match9352393524%_
                      (lambda (_%e5312453750%_
                               _%hd5312553754%_
                               _%tl5312653757%_
                               _%e5312753760%_
                               _%hd5312853764%_
                               _%tl5312953767%_
                               _%e5313053770%_
                               _%hd5313153774%_
                               _%tl5313253777%_
                               _%e5313353780%_
                               _%hd5313453784%_
                               _%tl5313553787%_
                               _%e5313653790%_
                               _%hd5313753794%_
                               _%tl5313853797%_
                               _%__splice9346593466%_
                               _%target5313953800%_
                               _%tl5314153803%_)
                        (letrec ((_%loop5314253806%_
                                  (lambda (_%hd5314053810%_ _%body5314653813%_)
                                    (if (gx#stx-pair? _%hd5314053810%_)
                                        (let ((_%e5314353815%_
                                               (gx#syntax-e _%hd5314053810%_)))
                                          (let ((_%lp-tl5314553822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5314353815%_)))
                                                (_%lp-hd5314453819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5314353815%_))))
                                            (_%loop5314253806%_
                                             _%lp-tl5314553822%_
                                             (cons _%lp-hd5314453819%_
                                                   _%body5314653813%_))))
                                        (let ((_%body5314753825%_
                                               (reverse _%body5314653813%_)))
                                          (let ((_%g5312053828%_
                                                 _%body5314753825%_)
                                                (_%g5312153830%_
                                                 _%hd5313753794%_)
                                                (_%g5312253831%_
                                                 _%hd5313453784%_)
                                                (_%g5312353832%_
                                                 _%hd5313153774%_))
                                            (if (let ((__tmp99651
                                                       (gx#syntax-local-value
                                                        _%g5312153830%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp99651))
                                                (_%__kont9346393464%_
                                                 _%g5312053828%_
                                                 _%g5312153830%_
                                                 _%g5312253831%_
                                                 _%g5312353832%_)
                                                (_%__match9354793548%_
                                                 _%e5312453750%_
                                                 _%hd5312553754%_
                                                 _%tl5312653757%_
                                                 _%e5312753760%_
                                                 _%hd5312853764%_
                                                 _%tl5312953767%_
                                                 _%e5313053770%_
                                                 _%hd5313153774%_
                                                 _%tl5313253777%_
                                                 _%e5313353780%_
                                                 _%hd5313453784%_
                                                 _%tl5313553787%_))))))))
                          (_%loop5314253806%_ _%target5313953800%_ '())))))
                (if (gx#stx-pair? _%__stx9346093461%_)
                    (let ((_%e5312453750%_ (gx#syntax-e _%__stx9346093461%_)))
                      (let ((_%tl5312653757%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5312453750%_)))
                            (_%hd5312553754%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5312453750%_))))
                        (if (gx#stx-pair? _%tl5312653757%_)
                            (let ((_%e5312753760%_
                                   (gx#syntax-e _%tl5312653757%_)))
                              (let ((_%tl5312953767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5312753760%_)))
                                    (_%hd5312853764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5312753760%_))))
                                (if (gx#stx-pair? _%hd5312853764%_)
                                    (let ((_%e5313053770%_
                                           (gx#syntax-e _%hd5312853764%_)))
                                      (let ((_%tl5313253777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5313053770%_)))
                                            (_%hd5313153774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5313053770%_))))
                                        (if (gx#stx-pair? _%tl5313253777%_)
                                            (let ((_%e5313353780%_
                                                   (gx#syntax-e
                                                    _%tl5313253777%_)))
                                              (let ((_%tl5313553787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5313353780%_)))
                                                    (_%hd5313453784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5313353780%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5313553787%_)
                                                    (let ((_%e5313653790%_
                                                           (gx#syntax-e
                                                            _%tl5313553787%_)))
                                                      (let ((_%tl5313853797%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5313653790%_)))
                    (_%hd5313753794%_
                     (let () (declare (not safe)) (##car _%e5313653790%_))))
                (if (gx#stx-null? _%tl5313853797%_)
                    (if (gx#stx-pair/null? _%tl5312953767%_)
                        (let ((_%__splice9346593466%_
                               (gx#syntax-split-splice->vector
                                _%tl5312953767%_
                                '0)))
                          (let ((_%tl5314153803%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9346593466%_ '1)))
                                (_%target5313953800%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9346593466%_ '0))))
                            (if (gx#stx-null? _%tl5314153803%_)
                                (_%__match9352393524%_
                                 _%e5312453750%_
                                 _%hd5312553754%_
                                 _%tl5312653757%_
                                 _%e5312753760%_
                                 _%hd5312853764%_
                                 _%tl5312953767%_
                                 _%e5313053770%_
                                 _%hd5313153774%_
                                 _%tl5313253777%_
                                 _%e5313353780%_
                                 _%hd5313453784%_
                                 _%tl5313553787%_
                                 _%e5313653790%_
                                 _%hd5313753794%_
                                 _%tl5313853797%_
                                 _%__splice9346593466%_
                                 _%target5313953800%_
                                 _%tl5314153803%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5311853261%_)))))
                        (let () (declare (not safe)) (_%g5311853261%_)))
                    (let () (declare (not safe)) (_%g5311853261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5311853261%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5311853261%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5311853261%_)))))
                            (let () (declare (not safe)) (_%g5311853261%_)))))
                    (let () (declare (not safe)) (_%g5311853261%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54224%_)
        (letrec ((_%expand-body54227%_
                  (lambda (_%var55218%_
                           _%Interface55220%_
                           _%body55221%_
                           _%checked?55222%_)
                    (let* ((_%type55224%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54224%_
                               _%Interface55220%_)))
                           (_%g5522755271%_
                            (lambda (_%g5522855267%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5522855267%_)))
                           (_%g5522655427%_
                            (lambda (_%g5522855275%_)
                              (if (gx#stx-pair? _%g5522855275%_)
                                  (let ((_%e5523655278%_
                                         (gx#syntax-e _%g5522855275%_)))
                                    (let ((_%hd5523755282%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5523655278%_)))
                                          (_%tl5523855285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5523655278%_))))
                                      (if (gx#stx-pair? _%tl5523855285%_)
                                          (let ((_%e5523955288%_
                                                 (gx#syntax-e
                                                  _%tl5523855285%_)))
                                            (let ((_%hd5524055292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5523955288%_)))
                                                  (_%tl5524155295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5523955288%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5524155295%_)
                                                  (let ((_%e5524255298%_
                                                         (gx#syntax-e
                                                          _%tl5524155295%_)))
                                                    (let ((_%hd5524355302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5524255298%_)))
                                                          (_%tl5524455305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5524255298%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5524455305%_)
                                                          (let ((_%e5524555308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5524455305%_)))
                    (let ((_%hd5524655312%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5524555308%_)))
                          (_%tl5524755315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5524555308%_))))
                      (if (gx#stx-pair? _%tl5524755315%_)
                          (let ((_%e5524855318%_
                                 (gx#syntax-e _%tl5524755315%_)))
                            (let ((_%hd5524955322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5524855318%_)))
                                  (_%tl5525055325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5524855318%_))))
                              (if (gx#stx-pair? _%tl5525055325%_)
                                  (let ((_%e5525155328%_
                                         (gx#syntax-e _%tl5525055325%_)))
                                    (let ((_%hd5525255332%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5525155328%_)))
                                          (_%tl5525355335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5525155328%_))))
                                      (if (gx#stx-pair? _%tl5525355335%_)
                                          (let ((_%e5525455338%_
                                                 (gx#syntax-e
                                                  _%tl5525355335%_)))
                                            (let ((_%hd5525555342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5525455338%_)))
                                                  (_%tl5525655345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5525455338%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5525555342%_)
                                                  (let ((_g99652_
                                                         (gx#syntax-split-splice
                                                          _%hd5525555342%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g99653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g99652_)
                           (##values-length _g99652_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99653_ 2)))
                    (error "Context expects 2 values" _g99653_)))
              (let ((_%target5525755348%_
                     (let () (declare (not safe)) (##values-ref _g99652_ 0)))
                    (_%tl5525955351%_
                     (let () (declare (not safe)) (##values-ref _g99652_ 1))))
                (if (gx#stx-null? _%tl5525955351%_)
                    (letrec ((_%loop5526055354%_
                              (lambda (_%hd5525855358%_ _%body5526455361%_)
                                (if (gx#stx-pair? _%hd5525855358%_)
                                    (let ((_%e5526155363%_
                                           (gx#syntax-e _%hd5525855358%_)))
                                      (let ((_%lp-hd5526255367%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5526155363%_)))
                                            (_%lp-tl5526355370%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5526155363%_))))
                                        (_%loop5526055354%_
                                         _%lp-tl5526355370%_
                                         (cons _%lp-hd5526255367%_
                                               _%body5526455361%_))))
                                    (let ((_%body5526555373%_
                                           (reverse _%body5526455361%_)))
                                      (if (gx#stx-null? _%tl5525655345%_)
                                          ((lambda (_%g5522955376%_
                                                    _%g5523055378%_
                                                    _%g5523155379%_
                                                    _%g5523255380%_
                                                    _%g5523355381%_
                                                    _%g5523455382%_
                                                    _%g5523555383%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5523255380%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5523355381%_ '()))
                                         (cons _%g5523255380%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5523555383%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5523255380%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5523455382%_ '()))
                               (cons _%g5523155379%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5523055378%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5541855421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5541955424%_)
                      (cons _%g5541855421%_ _%g5541955424%_))
                    '()
                    _%g5522955376%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5526555373%_
                                           _%hd5525255332%_
                                           _%hd5524955322%_
                                           _%hd5524655312%_
                                           _%hd5524355302%_
                                           _%hd5524055292%_
                                           _%hd5523755282%_)
                                          (_%g5522755271%_
                                           _%g5522855275%_)))))))
                      (_%loop5526055354%_ _%target5525755348%_ '()))
                    (_%g5522755271%_ _%g5522855275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5522755271%_
                                                   _%g5522855275%_))))
                                          (_%g5522755271%_ _%g5522855275%_))))
                                  (_%g5522755271%_ _%g5522855275%_))))
                          (_%g5522755271%_ _%g5522855275%_))))
                  (_%g5522755271%_ _%g5522855275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5522755271%_
                                                   _%g5522855275%_))))
                                          (_%g5522755271%_ _%g5522855275%_))))
                                  (_%g5522755271%_ _%g5522855275%_)))))
                      (_%g5522655427%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55224%_
                             (let ((__obj99453 _%type55224%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj99453
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj99453
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj99453
                                    'type-descriptor)))
                             _%var55218%_
                             _%checked?55222%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55221%_)))))
                 (_%expand54229%_
                  (lambda (_%var55017%_
                           _%Interface55019%_
                           _%body55020%_
                           _%checked?55021%_
                           _%checked-methods?55022%_
                           _%maybe?55023%_)
                    (let* ((_%g5502555033%_
                            (lambda (_%g5502655029%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5502655029%_)))
                           (_%g5502455210%_
                            (lambda (_%g5502655037%_)
                              ((lambda (_%g5502755040%_)
                                 (if _%checked?55021%_
                                     (if _%maybe?55023%_
                                         (let* ((_%g5505255067%_
                                                 (lambda (_%g5505355063%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5505355063%_)))
                                                (_%g5505155113%_
                                                 (lambda (_%g5505355071%_)
                                                   (if (gx#stx-pair?
                                                        _%g5505355071%_)
                                                       (let ((_%e5505655074%_
                                                              (gx#syntax-e
                                                               _%g5505355071%_)))
                                                         (let ((_%hd5505755078%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5505655074%_)))
                       (_%tl5505855081%_
                        (let () (declare (not safe)) (##cdr _%e5505655074%_))))
                   (if (gx#stx-pair? _%tl5505855081%_)
                       (let ((_%e5505955084%_ (gx#syntax-e _%tl5505855081%_)))
                         (let ((_%hd5506055088%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5505955084%_)))
                               (_%tl5506155091%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5505955084%_))))
                           (if (gx#stx-null? _%tl5506155091%_)
                               ((lambda (_%g5505455094%_ _%g5505555096%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5505555096%_
                                                    (cons (cons _%g5505455094%_
                                                                (cons _%g5505555096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5505555096%_
                                                                (cons _%g5502755040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5505555096%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5506055088%_
                                _%hd5505755078%_)
                               (_%g5505255067%_ _%g5505355071%_))))
                       (_%g5505255067%_ _%g5505355071%_))))
               (_%g5505255067%_ _%g5505355071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5505155113%_
                                            (list _%var55017%_
                                                  _%Interface55019%_)))
                                         (let* ((_%g5511755132%_
                                                 (lambda (_%g5511855128%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5511855128%_)))
                                                (_%g5511655176%_
                                                 (lambda (_%g5511855136%_)
                                                   (if (gx#stx-pair?
                                                        _%g5511855136%_)
                                                       (let ((_%e5512155139%_
                                                              (gx#syntax-e
                                                               _%g5511855136%_)))
                                                         (let ((_%hd5512255143%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5512155139%_)))
                       (_%tl5512355146%_
                        (let () (declare (not safe)) (##cdr _%e5512155139%_))))
                   (if (gx#stx-pair? _%tl5512355146%_)
                       (let ((_%e5512455149%_ (gx#syntax-e _%tl5512355146%_)))
                         (let ((_%hd5512555153%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5512455149%_)))
                               (_%tl5512655156%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5512455149%_))))
                           (if (gx#stx-null? _%tl5512655156%_)
                               ((lambda (_%g5511955159%_ _%g5512055161%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5512055161%_
                                                    (cons (cons _%g5511955159%_
                                                                (cons _%g5512055161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5502755040%_ '()))))
                                _%hd5512555153%_
                                _%hd5512255143%_)
                               (_%g5511755132%_ _%g5511855136%_))))
                       (_%g5511755132%_ _%g5511855136%_))))
               (_%g5511755132%_ _%g5511855136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5511655176%_
                                            (list _%var55017%_
                                                  _%Interface55019%_))))
                                     (if _%maybe?55023%_
                                         (let* ((_%g5518055188%_
                                                 (lambda (_%g5518155184%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5518155184%_)))
                                                (_%g5517955206%_
                                                 (lambda (_%g5518155192%_)
                                                   ((lambda (_%g5518255195%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5518255195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5502755040%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5518255195%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5518155192%_))))
                                           (_%g5517955206%_ _%var55017%_))
                                         _%g5502755040%_)))
                               _%g5502655037%_))))
                      (_%g5502455210%_
                       (_%expand-body54227%_
                        _%var55017%_
                        _%Interface55019%_
                        _%body55020%_
                        (let ((_%$e55214%_ _%checked?55021%_))
                          (if _%$e55214%_
                              _%$e55214%_
                              _%checked-methods?55022%_))))))))
          (let* ((_%__stx9370293703%_ _%stx54224%_)
                 (_%g5423554378%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9370293703%_))))
            (let ((_%__kont9370593706%_
                   (lambda (_%g5423754945%_
                            _%g5423854947%_
                            _%g5423954948%_
                            _%g5424054949%_)
                     (let* ((_%g5497454982%_
                             (lambda (_%g5497554978%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5497554978%_)))
                            (_%g5497355009%_
                             (lambda (_%g5497554986%_)
                               ((lambda (_%g5497654989%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5424054949%_
                                                    (cons _%g5423954948%_
                                                          (cons _%g5497654989%_
                                                                '())))
                                              (foldr (lambda (_%g5500055003%_
                                                              _%g5500155006%_)
                                                       (cons _%g5500055003%_
                                                             _%g5500155006%_))
                                                     '()
                                                     _%g5423754945%_))))
                                _%g5497554986%_))))
                       (_%g5497355009%_
                        (let ((__obj99454
                               (gx#syntax-local-value _%g5423854947%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj99454
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj99454
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj99454
                               'identifier)))))))
                  (_%__kont9370993710%_
                   (lambda (_%g5426554825%_ _%g5426654827%_ _%g5426754828%_)
                     (_%expand54229%_
                      _%g5426754828%_
                      _%g5426654827%_
                      (foldr (lambda (_%g5485154854%_ _%g5485254857%_)
                               (cons _%g5485154854%_ _%g5485254857%_))
                             '()
                             _%g5426554825%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9371393714%_
                   (lambda (_%g5429254705%_ _%g5429354707%_ _%g5429454708%_)
                     (_%expand54229%_
                      _%g5429454708%_
                      _%g5429354707%_
                      (foldr (lambda (_%g5473154734%_ _%g5473254737%_)
                               (cons _%g5473154734%_ _%g5473254737%_))
                             '()
                             _%g5429254705%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9371793718%_
                   (lambda (_%g5431954585%_ _%g5432054587%_ _%g5432154588%_)
                     (_%expand54229%_
                      _%g5432154588%_
                      _%g5432054587%_
                      (foldr (lambda (_%g5461154614%_ _%g5461254617%_)
                               (cons _%g5461154614%_ _%g5461254617%_))
                             '()
                             _%g5431954585%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9372193722%_
                   (lambda (_%g5434654463%_ _%g5434754465%_ _%g5434854466%_)
                     (_%expand54229%_
                      _%g5434854466%_
                      _%g5434754465%_
                      (foldr (lambda (_%g5449154494%_ _%g5449254497%_)
                               (cons _%g5449154494%_ _%g5449254497%_))
                             '()
                             _%g5434654463%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9394193942%_
                      (lambda (_%e5434954385%_
                               _%hd5435054389%_
                               _%tl5435154392%_
                               _%e5435254395%_
                               _%hd5435354399%_
                               _%tl5435454402%_
                               _%e5435554405%_
                               _%hd5435654409%_
                               _%tl5435754412%_
                               _%e5435854415%_
                               _%hd5435954419%_
                               _%tl5436054422%_
                               _%e5436154425%_
                               _%hd5436254429%_
                               _%tl5436354432%_
                               _%__splice9372393724%_
                               _%target5436454435%_
                               _%tl5436654438%_)
                        (letrec ((_%loop5436754441%_
                                  (lambda (_%hd5436554445%_ _%body5437154448%_)
                                    (if (gx#stx-pair? _%hd5436554445%_)
                                        (let ((_%e5436854450%_
                                               (gx#syntax-e _%hd5436554445%_)))
                                          (let ((_%lp-tl5437054457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5436854450%_)))
                                                (_%lp-hd5436954454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5436854450%_))))
                                            (_%loop5436754441%_
                                             _%lp-tl5437054457%_
                                             (cons _%lp-hd5436954454%_
                                                   _%body5437154448%_))))
                                        (let ((_%body5437254460%_
                                               (reverse _%body5437154448%_)))
                                          (let ((_%g5434654463%_
                                                 _%body5437254460%_)
                                                (_%g5434754465%_
                                                 _%hd5436254429%_)
                                                (_%g5434854466%_
                                                 _%hd5435654409%_))
                                            (if (and (gx#identifier?
                                                      _%g5434854466%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5434754465%_)))
                                                (_%__kont9372193722%_
                                                 _%g5434654463%_
                                                 _%g5434754465%_
                                                 _%g5434854466%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))))))))
                          (_%loop5436754441%_ _%target5436454435%_ '()))))
                     (_%__match9389793898%_
                      (lambda (_%e5432254507%_
                               _%hd5432354511%_
                               _%tl5432454514%_
                               _%e5432554517%_
                               _%hd5432654521%_
                               _%tl5432754524%_
                               _%e5432854527%_
                               _%hd5432954531%_
                               _%tl5433054534%_
                               _%e5433154537%_
                               _%hd5433254541%_
                               _%tl5433354544%_
                               _%e5433454547%_
                               _%hd5433554551%_
                               _%tl5433654554%_
                               _%__splice9371993720%_
                               _%target5433754557%_
                               _%tl5433954560%_)
                        (letrec ((_%loop5434054563%_
                                  (lambda (_%hd5433854567%_ _%body5434454570%_)
                                    (if (gx#stx-pair? _%hd5433854567%_)
                                        (let ((_%e5434154572%_
                                               (gx#syntax-e _%hd5433854567%_)))
                                          (let ((_%lp-tl5434354579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5434154572%_)))
                                                (_%lp-hd5434254576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5434154572%_))))
                                            (_%loop5434054563%_
                                             _%lp-tl5434354579%_
                                             (cons _%lp-hd5434254576%_
                                                   _%body5434454570%_))))
                                        (let ((_%body5434554582%_
                                               (reverse _%body5434454570%_)))
                                          (let ((_%g5431954585%_
                                                 _%body5434554582%_)
                                                (_%g5432054587%_
                                                 _%hd5433554551%_)
                                                (_%g5432154588%_
                                                 _%hd5432954531%_))
                                            (if (and (gx#identifier?
                                                      _%g5432154588%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5432054587%_)))
                                                (_%__kont9371793718%_
                                                 _%g5431954585%_
                                                 _%g5432054587%_
                                                 _%g5432154588%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))))))))
                          (_%loop5434054563%_ _%target5433754557%_ '()))))
                     (_%__match9385393854%_
                      (lambda (_%e5429554627%_
                               _%hd5429654631%_
                               _%tl5429754634%_
                               _%e5429854637%_
                               _%hd5429954641%_
                               _%tl5430054644%_
                               _%e5430154647%_
                               _%hd5430254651%_
                               _%tl5430354654%_
                               _%e5430454657%_
                               _%hd5430554661%_
                               _%tl5430654664%_
                               _%e5430754667%_
                               _%hd5430854671%_
                               _%tl5430954674%_
                               _%__splice9371593716%_
                               _%target5431054677%_
                               _%tl5431254680%_)
                        (letrec ((_%loop5431354683%_
                                  (lambda (_%hd5431154687%_ _%body5431754690%_)
                                    (if (gx#stx-pair? _%hd5431154687%_)
                                        (let ((_%e5431454692%_
                                               (gx#syntax-e _%hd5431154687%_)))
                                          (let ((_%lp-tl5431654699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5431454692%_)))
                                                (_%lp-hd5431554696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5431454692%_))))
                                            (_%loop5431354683%_
                                             _%lp-tl5431654699%_
                                             (cons _%lp-hd5431554696%_
                                                   _%body5431754690%_))))
                                        (let ((_%body5431854702%_
                                               (reverse _%body5431754690%_)))
                                          (let ((_%g5429254705%_
                                                 _%body5431854702%_)
                                                (_%g5429354707%_
                                                 _%hd5430854671%_)
                                                (_%g5429454708%_
                                                 _%hd5430254651%_))
                                            (if (and (gx#identifier?
                                                      _%g5429454708%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5429354707%_)))
                                                (_%__kont9371393714%_
                                                 _%g5429254705%_
                                                 _%g5429354707%_
                                                 _%g5429454708%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))))))))
                          (_%loop5431354683%_ _%target5431054677%_ '()))))
                     (_%__match9380993810%_
                      (lambda (_%e5426854747%_
                               _%hd5426954751%_
                               _%tl5427054754%_
                               _%e5427154757%_
                               _%hd5427254761%_
                               _%tl5427354764%_
                               _%e5427454767%_
                               _%hd5427554771%_
                               _%tl5427654774%_
                               _%e5427754777%_
                               _%hd5427854781%_
                               _%tl5427954784%_
                               _%e5428054787%_
                               _%hd5428154791%_
                               _%tl5428254794%_
                               _%__splice9371193712%_
                               _%target5428354797%_
                               _%tl5428554800%_)
                        (letrec ((_%loop5428654803%_
                                  (lambda (_%hd5428454807%_ _%body5429054810%_)
                                    (if (gx#stx-pair? _%hd5428454807%_)
                                        (let ((_%e5428754812%_
                                               (gx#syntax-e _%hd5428454807%_)))
                                          (let ((_%lp-tl5428954819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5428754812%_)))
                                                (_%lp-hd5428854816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5428754812%_))))
                                            (_%loop5428654803%_
                                             _%lp-tl5428954819%_
                                             (cons _%lp-hd5428854816%_
                                                   _%body5429054810%_))))
                                        (let ((_%body5429154822%_
                                               (reverse _%body5429054810%_)))
                                          (let ((_%g5426554825%_
                                                 _%body5429154822%_)
                                                (_%g5426654827%_
                                                 _%hd5428154791%_)
                                                (_%g5426754828%_
                                                 _%hd5427554771%_))
                                            (if (and (gx#identifier?
                                                      _%g5426754828%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5426654827%_)))
                                                (_%__kont9370993710%_
                                                 _%g5426554825%_
                                                 _%g5426654827%_
                                                 _%g5426754828%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))))))))
                          (_%loop5428654803%_ _%target5428354797%_ '()))))
                     (_%__match9378993790%_
                      (lambda (_%e5426854747%_
                               _%hd5426954751%_
                               _%tl5427054754%_
                               _%e5427154757%_
                               _%hd5427254761%_
                               _%tl5427354764%_
                               _%e5427454767%_
                               _%hd5427554771%_
                               _%tl5427654774%_
                               _%e5427754777%_
                               _%hd5427854781%_
                               _%tl5427954784%_)
                        (if (gx#identifier? _%hd5427854781%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g99654_|
                                 _%hd5427854781%_)
                                (if (gx#stx-pair? _%tl5427954784%_)
                                    (let ((_%e5428054787%_
                                           (gx#syntax-e _%tl5427954784%_)))
                                      (let ((_%tl5428254794%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5428054787%_)))
                                            (_%hd5428154791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5428054787%_))))
                                        (if (gx#stx-null? _%tl5428254794%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5427354764%_)
                                                (let ((_%__splice9371193712%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5427354764%_
                                                        '0)))
                                                  (let ((_%tl5428554800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9371193712%_
                                                            '1)))
                                                        (_%target5428354797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9371193712%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5428554800%_)
                                                        (_%__match9380993810%_
                                                         _%e5426854747%_
                                                         _%hd5426954751%_
                                                         _%tl5427054754%_
                                                         _%e5427154757%_
                                                         _%hd5427254761%_
                                                         _%tl5427354764%_
                                                         _%e5427454767%_
                                                         _%hd5427554771%_
                                                         _%tl5427654774%_
                                                         _%e5427754777%_
                                                         _%hd5427854781%_
                                                         _%tl5427954784%_
                                                         _%e5428054787%_
                                                         _%hd5428154791%_
                                                         _%tl5428254794%_
                                                         _%__splice9371193712%_
                                                         _%target5428354797%_
                                                         _%tl5428554800%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5423554378%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5423554378%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5423554378%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g99655_|
                                     _%hd5427854781%_)
                                    (if (gx#stx-pair? _%tl5427954784%_)
                                        (let ((_%e5430754667%_
                                               (gx#syntax-e _%tl5427954784%_)))
                                          (let ((_%tl5430954674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5430754667%_)))
                                                (_%hd5430854671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5430754667%_))))
                                            (if (gx#stx-null? _%tl5430954674%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5427354764%_)
                                                    (let ((_%__splice9371593716%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5427354764%_
                                                            '0)))
                                                      (let ((_%tl5431254680%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9371593716%_ '1)))
                    (_%target5431054677%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9371593716%_ '0))))
                (if (gx#stx-null? _%tl5431254680%_)
                    (_%__match9385393854%_
                     _%e5426854747%_
                     _%hd5426954751%_
                     _%tl5427054754%_
                     _%e5427154757%_
                     _%hd5427254761%_
                     _%tl5427354764%_
                     _%e5427454767%_
                     _%hd5427554771%_
                     _%tl5427654774%_
                     _%e5427754777%_
                     _%hd5427854781%_
                     _%tl5427954784%_
                     _%e5430754667%_
                     _%hd5430854671%_
                     _%tl5430954674%_
                     _%__splice9371593716%_
                     _%target5431054677%_
                     _%tl5431254680%_)
                    (let () (declare (not safe)) (_%g5423554378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5423554378%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5423554378%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g99656_|
                                         _%hd5427854781%_)
                                        (if (gx#stx-pair? _%tl5427954784%_)
                                            (let ((_%e5433454547%_
                                                   (gx#syntax-e
                                                    _%tl5427954784%_)))
                                              (let ((_%tl5433654554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5433454547%_)))
                                                    (_%hd5433554551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5433454547%_))))
                                                (if (gx#stx-null?
                                                     _%tl5433654554%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5427354764%_)
                                                        (let ((_%__splice9371993720%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5427354764%_
                                                                '0)))
                                                          (let ((_%tl5433954560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9371993720%_ '1)))
                        (_%target5433754557%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9371993720%_ '0))))
                    (if (gx#stx-null? _%tl5433954560%_)
                        (_%__match9389793898%_
                         _%e5426854747%_
                         _%hd5426954751%_
                         _%tl5427054754%_
                         _%e5427154757%_
                         _%hd5427254761%_
                         _%tl5427354764%_
                         _%e5427454767%_
                         _%hd5427554771%_
                         _%tl5427654774%_
                         _%e5427754777%_
                         _%hd5427854781%_
                         _%tl5427954784%_
                         _%e5433454547%_
                         _%hd5433554551%_
                         _%tl5433654554%_
                         _%__splice9371993720%_
                         _%target5433754557%_
                         _%tl5433954560%_)
                        (let () (declare (not safe)) (_%g5423554378%_)))))
                (let () (declare (not safe)) (_%g5423554378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5423554378%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5423554378%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g99657_|
                                             _%hd5427854781%_)
                                            (if (gx#stx-pair? _%tl5427954784%_)
                                                (let ((_%e5436154425%_
                                                       (gx#syntax-e
                                                        _%tl5427954784%_)))
                                                  (let ((_%tl5436354432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5436154425%_)))
                                                        (_%hd5436254429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5436154425%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5436354432%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5427354764%_)
                                                            (let ((_%__splice9372393724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5427354764%_
                            '0)))
                      (let ((_%tl5436654438%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9372393724%_ '1)))
                            (_%target5436454435%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9372393724%_ '0))))
                        (if (gx#stx-null? _%tl5436654438%_)
                            (_%__match9394193942%_
                             _%e5426854747%_
                             _%hd5426954751%_
                             _%tl5427054754%_
                             _%e5427154757%_
                             _%hd5427254761%_
                             _%tl5427354764%_
                             _%e5427454767%_
                             _%hd5427554771%_
                             _%tl5427654774%_
                             _%e5427754777%_
                             _%hd5427854781%_
                             _%tl5427954784%_
                             _%e5436154425%_
                             _%hd5436254429%_
                             _%tl5436354432%_
                             _%__splice9372393724%_
                             _%target5436454435%_
                             _%tl5436654438%_)
                            (let () (declare (not safe)) (_%g5423554378%_)))))
                    (let () (declare (not safe)) (_%g5423554378%_)))
                (let () (declare (not safe)) (_%g5423554378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5423554378%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5423554378%_))))))
                            (let () (declare (not safe)) (_%g5423554378%_)))))
                     (_%__match9376593766%_
                      (lambda (_%e5424154867%_
                               _%hd5424254871%_
                               _%tl5424354874%_
                               _%e5424454877%_
                               _%hd5424554881%_
                               _%tl5424654884%_
                               _%e5424754887%_
                               _%hd5424854891%_
                               _%tl5424954894%_
                               _%e5425054897%_
                               _%hd5425154901%_
                               _%tl5425254904%_
                               _%e5425354907%_
                               _%hd5425454911%_
                               _%tl5425554914%_
                               _%__splice9370793708%_
                               _%target5425654917%_
                               _%tl5425854920%_)
                        (letrec ((_%loop5425954923%_
                                  (lambda (_%hd5425754927%_ _%body5426354930%_)
                                    (if (gx#stx-pair? _%hd5425754927%_)
                                        (let ((_%e5426054932%_
                                               (gx#syntax-e _%hd5425754927%_)))
                                          (let ((_%lp-tl5426254939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5426054932%_)))
                                                (_%lp-hd5426154936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5426054932%_))))
                                            (_%loop5425954923%_
                                             _%lp-tl5426254939%_
                                             (cons _%lp-hd5426154936%_
                                                   _%body5426354930%_))))
                                        (let ((_%body5426454942%_
                                               (reverse _%body5426354930%_)))
                                          (let ((_%g5423754945%_
                                                 _%body5426454942%_)
                                                (_%g5423854947%_
                                                 _%hd5425454911%_)
                                                (_%g5423954948%_
                                                 _%hd5425154901%_)
                                                (_%g5424054949%_
                                                 _%hd5424854891%_))
                                            (if (let ((__tmp99658
                                                       (gx#syntax-local-value
                                                        _%g5423854947%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp99658))
                                                (_%__kont9370593706%_
                                                 _%g5423754945%_
                                                 _%g5423854947%_
                                                 _%g5423954948%_
                                                 _%g5424054949%_)
                                                (_%__match9378993790%_
                                                 _%e5424154867%_
                                                 _%hd5424254871%_
                                                 _%tl5424354874%_
                                                 _%e5424454877%_
                                                 _%hd5424554881%_
                                                 _%tl5424654884%_
                                                 _%e5424754887%_
                                                 _%hd5424854891%_
                                                 _%tl5424954894%_
                                                 _%e5425054897%_
                                                 _%hd5425154901%_
                                                 _%tl5425254904%_))))))))
                          (_%loop5425954923%_ _%target5425654917%_ '())))))
                (if (gx#stx-pair? _%__stx9370293703%_)
                    (let ((_%e5424154867%_ (gx#syntax-e _%__stx9370293703%_)))
                      (let ((_%tl5424354874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5424154867%_)))
                            (_%hd5424254871%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5424154867%_))))
                        (if (gx#stx-pair? _%tl5424354874%_)
                            (let ((_%e5424454877%_
                                   (gx#syntax-e _%tl5424354874%_)))
                              (let ((_%tl5424654884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5424454877%_)))
                                    (_%hd5424554881%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5424454877%_))))
                                (if (gx#stx-pair? _%hd5424554881%_)
                                    (let ((_%e5424754887%_
                                           (gx#syntax-e _%hd5424554881%_)))
                                      (let ((_%tl5424954894%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5424754887%_)))
                                            (_%hd5424854891%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5424754887%_))))
                                        (if (gx#stx-pair? _%tl5424954894%_)
                                            (let ((_%e5425054897%_
                                                   (gx#syntax-e
                                                    _%tl5424954894%_)))
                                              (let ((_%tl5425254904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5425054897%_)))
                                                    (_%hd5425154901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5425054897%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5425254904%_)
                                                    (let ((_%e5425354907%_
                                                           (gx#syntax-e
                                                            _%tl5425254904%_)))
                                                      (let ((_%tl5425554914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5425354907%_)))
                    (_%hd5425454911%_
                     (let () (declare (not safe)) (##car _%e5425354907%_))))
                (if (gx#stx-null? _%tl5425554914%_)
                    (if (gx#stx-pair/null? _%tl5424654884%_)
                        (let ((_%__splice9370793708%_
                               (gx#syntax-split-splice->vector
                                _%tl5424654884%_
                                '0)))
                          (let ((_%tl5425854920%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9370793708%_ '1)))
                                (_%target5425654917%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9370793708%_ '0))))
                            (if (gx#stx-null? _%tl5425854920%_)
                                (_%__match9376593766%_
                                 _%e5424154867%_
                                 _%hd5424254871%_
                                 _%tl5424354874%_
                                 _%e5424454877%_
                                 _%hd5424554881%_
                                 _%tl5424654884%_
                                 _%e5424754887%_
                                 _%hd5424854891%_
                                 _%tl5424954894%_
                                 _%e5425054897%_
                                 _%hd5425154901%_
                                 _%tl5425254904%_
                                 _%e5425354907%_
                                 _%hd5425454911%_
                                 _%tl5425554914%_
                                 _%__splice9370793708%_
                                 _%target5425654917%_
                                 _%tl5425854920%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5423554378%_)))))
                        (let () (declare (not safe)) (_%g5423554378%_)))
                    (let () (declare (not safe)) (_%g5423554378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5423554378%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5423554378%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5423554378%_)))))
                            (let () (declare (not safe)) (_%g5423554378%_)))))
                    (let () (declare (not safe)) (_%g5423554378%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx55437%_)
        (let* ((_%__stx9394493945%_ _%stx55437%_)
               (_%g5544255502%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9394493945%_))))
          (let ((_%__kont9394793948%_
                 (lambda (_%g5544456058%_ _%g5544556060%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5544556060%_ '()))
                               (foldr (lambda (_%g5607656079%_ _%g5607756082%_)
                                        (cons _%g5607656079%_ _%g5607756082%_))
                                      '()
                                      _%g5544456058%_)))))
                (_%__kont9395193952%_
                 (lambda (_%g5546155646%_ _%g5546255648%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5546255648%_)
                       (let* ((_%g5566855675%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx55437%_
                                _%g5546255648%_))
                              (_%E5567055681%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5566855675%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5567155979%_
                               (lambda (_%parts55685%_ _%var55687%_)
                                 (let ((_%$e55689%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var55687%_))))
                                   (if _%$e55689%_
                                       ((lambda (_%te55693%_)
                                          (let _%loop55696%_ ((_%parts55699%_
                                                               _%parts55685%_)
                                                              (_%type55701%_
                                                               (##direct-structure-ref
                                                                _%te55693%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object55702%_
                                                               _%var55687%_)
                                                              (_%checked-method?55703%_
                                                               (##direct-structure-ref
                                                                _%te55693%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?55704%_
                                                               '#f))
                                            (let* ((_%parts5570555713%_
                                                    _%parts55699%_)
                                                   (_%else5570755774%_
                                                    (lambda ()
                                                      (let* ((_%g5572555733%_
                                                              (lambda (_%g5572655729%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5572655729%_)))
                     (_%g5572455770%_
                      (lambda (_%g5572655737%_)
                        ((lambda (_%g5572755740%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5572755740%_
                                       (foldr (lambda (_%g5576155764%_
                                                       _%g5576255767%_)
                                                (cons _%g5576155764%_
                                                      _%g5576255767%_))
                                              '()
                                              _%g5546155646%_))))
                         _%g5572655737%_))))
                (_%g5572455770%_ _%object55702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5570955953%_
                                                    (lambda (_%rest55778%_
                                                             _%part55780%_)
                                                      (if (and (not _%nil-check?55704%_)
                                                               (let ((__tmp99659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55780%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp99659)))
                  (let ((_%str55784%_ (symbol->string _%part55780%_)))
                    (_%loop55696%_
                     (cons (let ((__tmp99660
                                  (substring
                                   _%str55784%_
                                   '1
                                   (string-length _%str55784%_))))
                             (declare (not safe))
                             (##string->symbol __tmp99660))
                           _%rest55778%_)
                     _%type55701%_
                     _%object55702%_
                     _%checked-method?55703%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type55701%_))
                      (let* ((_%g5578955804%_
                              (lambda (_%g5579055800%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5579055800%_)))
                             (_%g5578855873%_
                              (lambda (_%g5579055808%_)
                                (if (gx#stx-pair? _%g5579055808%_)
                                    (let ((_%e5579355811%_
                                           (gx#syntax-e _%g5579055808%_)))
                                      (let ((_%hd5579455815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5579355811%_)))
                                            (_%tl5579555818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5579355811%_))))
                                        (if (gx#stx-pair? _%tl5579555818%_)
                                            (let ((_%e5579655821%_
                                                   (gx#syntax-e
                                                    _%tl5579555818%_)))
                                              (let ((_%hd5579755825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5579655821%_)))
                                                    (_%tl5579855828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5579655821%_))))
                                                (if (gx#stx-null?
                                                     _%tl5579855828%_)
                                                    ((lambda (_%g5579155831%_
                                                              _%g5579255833%_)
                                                       (if (null? _%rest55778%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5579155831%_
                                     (cons _%g5579255833%_ '()))
                               (foldr (lambda (_%g5585255855%_ _%g5585355858%_)
                                        (cons _%g5585255855%_ _%g5585355858%_))
                                      '()
                                      _%g5546155646%_)))
                   (let ((_%$e55861%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type55701%_
                           _%part55780%_)))
                     (if _%$e55861%_
                         ((lambda (_%slot-type55865%_)
                            (let ((_%slot-type55868%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx55437%_
                                      _%slot-type55865%_))))
                              (_%loop55696%_
                               _%rest55778%_
                               _%slot-type55868%_
                               (cons _%g5579155831%_
                                     (cons _%g5579255833%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type55701%_
                                _%part55780%_)
                               '#f)))
                          _%$e55861%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx55437%_
                          _%g5546255648%_
                          _%part55780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5579755825%_
                                                     _%hd5579455815%_)
                                                    (_%g5578955804%_
                                                     _%g5579055808%_))))
                                            (_%g5578955804%_
                                             _%g5579055808%_))))
                                    (_%g5578955804%_ _%g5579055808%_)))))
                        (_%g5578855873%_
                         (list (if _%nil-check?55704%_
                                   (cons 'check-nil!
                                         (cons _%object55702%_ '()))
                                   _%object55702%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx55437%_
                                _%type55701%_
                                _%part55780%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type55701%_))
                          (if (null? _%rest55778%_)
                              (let* ((_%g5587955894%_
                                      (lambda (_%g5588055890%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5588055890%_)))
                                     (_%g5587855947%_
                                      (lambda (_%g5588055898%_)
                                        (if (gx#stx-pair? _%g5588055898%_)
                                            (let ((_%e5588355901%_
                                                   (gx#syntax-e
                                                    _%g5588055898%_)))
                                              (let ((_%hd5588455905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5588355901%_)))
                                                    (_%tl5588555908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5588355901%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5588555908%_)
                                                    (let ((_%e5588655911%_
                                                           (gx#syntax-e
                                                            _%tl5588555908%_)))
                                                      (let ((_%hd5588755915%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5588655911%_)))
                    (_%tl5588855918%_
                     (let () (declare (not safe)) (##cdr _%e5588655911%_))))
                (if (gx#stx-null? _%tl5588855918%_)
                    ((lambda (_%g5588155921%_ _%g5588255923%_)
                       (cons _%g5588155921%_
                             (cons _%g5588255923%_
                                   (foldr (lambda (_%g5593855941%_
                                                   _%g5593955944%_)
                                            (cons _%g5593855941%_
                                                  _%g5593955944%_))
                                          '()
                                          _%g5546155646%_))))
                     _%hd5588755915%_
                     _%hd5588455905%_)
                    (_%g5587955894%_ _%g5588055898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5587955894%_
                                                     _%g5588055898%_))))
                                            (_%g5587955894%_
                                             _%g5588055898%_)))))
                                (_%g5587855947%_
                                 (list (if _%nil-check?55704%_
                                           (cons 'check-nil!
                                                 (cons _%object55702%_ '()))
                                           _%object55702%_)
                                       (gx#stx-identifier
                                        _%g5546255648%_
                                        (if _%checked-method?55703%_ '"" '"&")
                                        (let ((__obj99455 _%type55701%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj99455
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj99455
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj99455
                                               'name)))
                                        '"-"
                                        _%part55780%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx55437%_
                               _%g5546255648%_
                               _%part55780%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx55437%_
                           _%type55701%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5570555713%_)
                                                  (let ((_%hd5571055957%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5570555713%_)))
                                                        (_%tl5571155960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5570555713%_))))
                                                    (let* ((_%part55963%_
                                                            _%hd5571055957%_)
                                                           (_%rest55966%_
                                                            _%tl5571155960%_))
                                                      (_%K5570955953%_
                                                       _%rest55966%_
                                                       _%part55963%_)))
                                                  (_%else5570755774%_)))))
                                        _%$e55689%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5546255648%_
                                                   (foldr (lambda (_%g5597055973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5597155976%_)
                    (cons _%g5597055973%_ _%g5597155976%_))
                  '()
                  _%g5546155646%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5566855675%_)
                             (let ((_%hd5567255983%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5566855675%_)))
                                   (_%tl5567355986%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5566855675%_))))
                               (let* ((_%var55989%_ _%hd5567255983%_)
                                      (_%parts55992%_ _%tl5567355986%_))
                                 (_%K5567155979%_
                                  _%parts55992%_
                                  _%var55989%_)))
                             (_%E5567055681%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5546255648%_
                                   (foldr (lambda (_%g5599455997%_
                                                   _%g5599556000%_)
                                            (cons _%g5599455997%_
                                                  _%g5599556000%_))
                                          '()
                                          _%g5546155646%_))))))
                (_%__kont9395593956%_
                 (lambda (_%g5548455547%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5556255565%_ _%g5556355568%_)
                                  (cons _%g5556255565%_ _%g5556355568%_))
                                '()
                                _%g5548455547%_)))))
            (let* ((_%__match9403194032%_
                    (lambda (_%e5548555509%_
                             _%hd5548655513%_
                             _%tl5548755516%_
                             _%__splice9395793958%_
                             _%target5548855519%_
                             _%tl5549055522%_)
                      (letrec ((_%loop5549155525%_
                                (lambda (_%hd5548955529%_ _%arg5549555532%_)
                                  (if (gx#stx-pair? _%hd5548955529%_)
                                      (let ((_%e5549255534%_
                                             (gx#syntax-e _%hd5548955529%_)))
                                        (let ((_%lp-tl5549455541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5549255534%_)))
                                              (_%lp-hd5549355538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5549255534%_))))
                                          (_%loop5549155525%_
                                           _%lp-tl5549455541%_
                                           (cons _%lp-hd5549355538%_
                                                 _%arg5549555532%_))))
                                      (let ((_%arg5549655544%_
                                             (reverse _%arg5549555532%_)))
                                        (_%__kont9395593956%_
                                         _%arg5549655544%_))))))
                        (_%loop5549155525%_ _%target5548855519%_ '()))))
                   (_%__match9401794018%_
                    (lambda (_%e5546355578%_
                             _%hd5546455582%_
                             _%tl5546555585%_
                             _%e5546655588%_
                             _%hd5546755592%_
                             _%tl5546855595%_
                             _%e5546955598%_
                             _%hd5547055602%_
                             _%tl5547155605%_
                             _%e5547255608%_
                             _%hd5547355612%_
                             _%tl5547455615%_
                             _%__splice9395393954%_
                             _%target5547555618%_
                             _%tl5547755621%_)
                      (letrec ((_%loop5547855624%_
                                (lambda (_%hd5547655628%_ _%rand5548255631%_)
                                  (if (gx#stx-pair? _%hd5547655628%_)
                                      (let ((_%e5547955633%_
                                             (gx#syntax-e _%hd5547655628%_)))
                                        (let ((_%lp-tl5548155640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5547955633%_)))
                                              (_%lp-hd5548055637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5547955633%_))))
                                          (_%loop5547855624%_
                                           _%lp-tl5548155640%_
                                           (cons _%lp-hd5548055637%_
                                                 _%rand5548255631%_))))
                                      (let ((_%rand5548355643%_
                                             (reverse _%rand5548255631%_)))
                                        (_%__kont9395193952%_
                                         _%rand5548355643%_
                                         _%hd5547355612%_))))))
                        (_%loop5547855624%_ _%target5547555618%_ '()))))
                   (_%__match9399193992%_
                    (lambda (_%e5546355578%_
                             _%hd5546455582%_
                             _%tl5546555585%_
                             _%e5546655588%_
                             _%hd5546755592%_
                             _%tl5546855595%_)
                      (if (gx#stx-pair? _%hd5546755592%_)
                          (let ((_%e5546955598%_
                                 (gx#syntax-e _%hd5546755592%_)))
                            (let ((_%tl5547155605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5546955598%_)))
                                  (_%hd5547055602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5546955598%_))))
                              (if (gx#identifier? _%hd5547055602%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g99661_|
                                       _%hd5547055602%_)
                                      (if (gx#stx-pair? _%tl5547155605%_)
                                          (let ((_%e5547255608%_
                                                 (gx#syntax-e
                                                  _%tl5547155605%_)))
                                            (let ((_%tl5547455615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5547255608%_)))
                                                  (_%hd5547355612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5547255608%_))))
                                              (if (gx#stx-null?
                                                   _%tl5547455615%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5546855595%_)
                                                      (let ((_%__splice9395393954%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5546855595%_
                                                              '0)))
                                                        (let ((_%tl5547755621%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9395393954%_ '1)))
                      (_%target5547555618%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9395393954%_ '0))))
                  (if (gx#stx-null? _%tl5547755621%_)
                      (_%__match9401794018%_
                       _%e5546355578%_
                       _%hd5546455582%_
                       _%tl5546555585%_
                       _%e5546655588%_
                       _%hd5546755592%_
                       _%tl5546855595%_
                       _%e5546955598%_
                       _%hd5547055602%_
                       _%tl5547155605%_
                       _%e5547255608%_
                       _%hd5547355612%_
                       _%tl5547455615%_
                       _%__splice9395393954%_
                       _%target5547555618%_
                       _%tl5547755621%_)
                      (if (gx#stx-pair/null? _%tl5546555585%_)
                          (let ((_%__splice9395793958%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5546555585%_
                                  '0)))
                            (let ((_%tl5549055522%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9395793958%_ '1)))
                                  (_%target5548855519%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9395793958%_
                                      '0))))
                              (if (gx#stx-null? _%tl5549055522%_)
                                  (_%__match9403194032%_
                                   _%e5546355578%_
                                   _%hd5546455582%_
                                   _%tl5546555585%_
                                   _%__splice9395793958%_
                                   _%target5548855519%_
                                   _%tl5549055522%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5544255502%_)))))
                          (let () (declare (not safe)) (_%g5544255502%_))))))
              (if (gx#stx-pair/null? _%tl5546555585%_)
                  (let ((_%__splice9395793958%_
                         (gx#syntax-split-splice->vector _%tl5546555585%_ '0)))
                    (let ((_%tl5549055522%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '1)))
                          (_%target5548855519%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '0))))
                      (if (gx#stx-null? _%tl5549055522%_)
                          (_%__match9403194032%_
                           _%e5546355578%_
                           _%hd5546455582%_
                           _%tl5546555585%_
                           _%__splice9395793958%_
                           _%target5548855519%_
                           _%tl5549055522%_)
                          (let () (declare (not safe)) (_%g5544255502%_)))))
                  (let () (declare (not safe)) (_%g5544255502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5546555585%_)
                                                      (let ((_%__splice9395793958%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5546555585%_
                                                              '0)))
                                                        (let ((_%tl5549055522%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9395793958%_ '1)))
                      (_%target5548855519%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9395793958%_ '0))))
                  (if (gx#stx-null? _%tl5549055522%_)
                      (_%__match9403194032%_
                       _%e5546355578%_
                       _%hd5546455582%_
                       _%tl5546555585%_
                       _%__splice9395793958%_
                       _%target5548855519%_
                       _%tl5549055522%_)
                      (let () (declare (not safe)) (_%g5544255502%_)))))
              (let () (declare (not safe)) (_%g5544255502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5546555585%_)
                                              (let ((_%__splice9395793958%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5546555585%_
                                                      '0)))
                                                (let ((_%tl5549055522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9395793958%_
                                                          '1)))
                                                      (_%target5548855519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9395793958%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5549055522%_)
                                                      (_%__match9403194032%_
                                                       _%e5546355578%_
                                                       _%hd5546455582%_
                                                       _%tl5546555585%_
                                                       _%__splice9395793958%_
                                                       _%target5548855519%_
                                                       _%tl5549055522%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5544255502%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5544255502%_))))
                                      (if (gx#stx-pair/null? _%tl5546555585%_)
                                          (let ((_%__splice9395793958%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5546555585%_
                                                  '0)))
                                            (let ((_%tl5549055522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9395793958%_
                                                      '1)))
                                                  (_%target5548855519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9395793958%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5549055522%_)
                                                  (_%__match9403194032%_
                                                   _%e5546355578%_
                                                   _%hd5546455582%_
                                                   _%tl5546555585%_
                                                   _%__splice9395793958%_
                                                   _%target5548855519%_
                                                   _%tl5549055522%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5544255502%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5544255502%_))))
                                  (if (gx#stx-pair/null? _%tl5546555585%_)
                                      (let ((_%__splice9395793958%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5546555585%_
                                              '0)))
                                        (let ((_%tl5549055522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9395793958%_
                                                  '1)))
                                              (_%target5548855519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9395793958%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5549055522%_)
                                              (_%__match9403194032%_
                                               _%e5546355578%_
                                               _%hd5546455582%_
                                               _%tl5546555585%_
                                               _%__splice9395793958%_
                                               _%target5548855519%_
                                               _%tl5549055522%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5544255502%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5544255502%_))))))
                          (if (gx#stx-pair/null? _%tl5546555585%_)
                              (let ((_%__splice9395793958%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5546555585%_
                                      '0)))
                                (let ((_%tl5549055522%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '1)))
                                      (_%target5548855519%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5549055522%_)
                                      (_%__match9403194032%_
                                       _%e5546355578%_
                                       _%hd5546455582%_
                                       _%tl5546555585%_
                                       _%__splice9395793958%_
                                       _%target5548855519%_
                                       _%tl5549055522%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5544255502%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5544255502%_))))))
                   (_%__match9397993980%_
                    (lambda (_%e5544656010%_
                             _%hd5544756014%_
                             _%tl5544856017%_
                             _%e5544956020%_
                             _%hd5545056024%_
                             _%tl5545156027%_
                             _%__splice9394993950%_
                             _%target5545256030%_
                             _%tl5545456033%_)
                      (letrec ((_%loop5545556036%_
                                (lambda (_%hd5545356040%_ _%rand5545956043%_)
                                  (if (gx#stx-pair? _%hd5545356040%_)
                                      (let ((_%e5545656045%_
                                             (gx#syntax-e _%hd5545356040%_)))
                                        (let ((_%lp-tl5545856052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5545656045%_)))
                                              (_%lp-hd5545756049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5545656045%_))))
                                          (_%loop5545556036%_
                                           _%lp-tl5545856052%_
                                           (cons _%lp-hd5545756049%_
                                                 _%rand5545956043%_))))
                                      (let ((_%rand5546056055%_
                                             (reverse _%rand5545956043%_)))
                                        (let ((_%g5544456058%_
                                               _%rand5546056055%_)
                                              (_%g5544556060%_
                                               _%hd5545056024%_))
                                          (if (gx#identifier? _%g5544556060%_)
                                              (_%__kont9394793948%_
                                               _%g5544456058%_
                                               _%g5544556060%_)
                                              (_%__match9399193992%_
                                               _%e5544656010%_
                                               _%hd5544756014%_
                                               _%tl5544856017%_
                                               _%e5544956020%_
                                               _%hd5545056024%_
                                               _%tl5545156027%_))))))))
                        (_%loop5545556036%_ _%target5545256030%_ '())))))
              (if (gx#stx-pair? _%__stx9394493945%_)
                  (let ((_%e5544656010%_ (gx#syntax-e _%__stx9394493945%_)))
                    (let ((_%tl5544856017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5544656010%_)))
                          (_%hd5544756014%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5544656010%_))))
                      (if (gx#stx-pair? _%tl5544856017%_)
                          (let ((_%e5544956020%_
                                 (gx#syntax-e _%tl5544856017%_)))
                            (let ((_%tl5545156027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5544956020%_)))
                                  (_%hd5545056024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5544956020%_))))
                              (if (gx#stx-pair/null? _%tl5545156027%_)
                                  (let ((_%__splice9394993950%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5545156027%_
                                          '0)))
                                    (let ((_%tl5545456033%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9394993950%_
                                              '1)))
                                          (_%target5545256030%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9394993950%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5545456033%_)
                                          (_%__match9397993980%_
                                           _%e5544656010%_
                                           _%hd5544756014%_
                                           _%tl5544856017%_
                                           _%e5544956020%_
                                           _%hd5545056024%_
                                           _%tl5545156027%_
                                           _%__splice9394993950%_
                                           _%target5545256030%_
                                           _%tl5545456033%_)
                                          (if (gx#stx-pair? _%hd5545056024%_)
                                              (let ((_%e5546955598%_
                                                     (gx#syntax-e
                                                      _%hd5545056024%_)))
                                                (let ((_%tl5547155605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5546955598%_)))
                                                      (_%hd5547055602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5546955598%_))))
                                                  (if (gx#identifier?
                                                       _%hd5547055602%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g99661_|
                                                           _%hd5547055602%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5547155605%_)
                                                              (let ((_%e5547255608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5547155605%_)))
                        (let ((_%tl5547455615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5547255608%_)))
                              (_%hd5547355612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5547255608%_))))
                          (if (gx#stx-pair/null? _%tl5544856017%_)
                              (let ((_%__splice9395793958%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5544856017%_
                                      '0)))
                                (let ((_%tl5549055522%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '1)))
                                      (_%target5548855519%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5549055522%_)
                                      (_%__match9403194032%_
                                       _%e5544656010%_
                                       _%hd5544756014%_
                                       _%tl5544856017%_
                                       _%__splice9395793958%_
                                       _%target5548855519%_
                                       _%tl5549055522%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5544255502%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5544255502%_)))))
                      (if (gx#stx-pair/null? _%tl5544856017%_)
                          (let ((_%__splice9395793958%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5544856017%_
                                  '0)))
                            (let ((_%tl5549055522%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9395793958%_ '1)))
                                  (_%target5548855519%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9395793958%_
                                      '0))))
                              (if (gx#stx-null? _%tl5549055522%_)
                                  (_%__match9403194032%_
                                   _%e5544656010%_
                                   _%hd5544756014%_
                                   _%tl5544856017%_
                                   _%__splice9395793958%_
                                   _%target5548855519%_
                                   _%tl5549055522%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5544255502%_)))))
                          (let () (declare (not safe)) (_%g5544255502%_))))
                  (if (gx#stx-pair/null? _%tl5544856017%_)
                      (let ((_%__splice9395793958%_
                             (gx#syntax-split-splice->vector
                              _%tl5544856017%_
                              '0)))
                        (let ((_%tl5549055522%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9395793958%_ '1)))
                              (_%target5548855519%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9395793958%_ '0))))
                          (if (gx#stx-null? _%tl5549055522%_)
                              (_%__match9403194032%_
                               _%e5544656010%_
                               _%hd5544756014%_
                               _%tl5544856017%_
                               _%__splice9395793958%_
                               _%target5548855519%_
                               _%tl5549055522%_)
                              (let ()
                                (declare (not safe))
                                (_%g5544255502%_)))))
                      (let () (declare (not safe)) (_%g5544255502%_))))
              (if (gx#stx-pair/null? _%tl5544856017%_)
                  (let ((_%__splice9395793958%_
                         (gx#syntax-split-splice->vector _%tl5544856017%_ '0)))
                    (let ((_%tl5549055522%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '1)))
                          (_%target5548855519%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '0))))
                      (if (gx#stx-null? _%tl5549055522%_)
                          (_%__match9403194032%_
                           _%e5544656010%_
                           _%hd5544756014%_
                           _%tl5544856017%_
                           _%__splice9395793958%_
                           _%target5548855519%_
                           _%tl5549055522%_)
                          (let () (declare (not safe)) (_%g5544255502%_)))))
                  (let () (declare (not safe)) (_%g5544255502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5544856017%_)
                                                  (let ((_%__splice9395793958%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5544856017%_
                                                          '0)))
                                                    (let ((_%tl5549055522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9395793958%_
                                                              '1)))
                                                          (_%target5548855519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9395793958%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5549055522%_)
                                                          (_%__match9403194032%_
                                                           _%e5544656010%_
                                                           _%hd5544756014%_
                                                           _%tl5544856017%_
                                                           _%__splice9395793958%_
                                                           _%target5548855519%_
                                                           _%tl5549055522%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5544255502%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5544255502%_)))))))
                                  (if (gx#stx-pair? _%hd5545056024%_)
                                      (let ((_%e5546955598%_
                                             (gx#syntax-e _%hd5545056024%_)))
                                        (let ((_%tl5547155605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5546955598%_)))
                                              (_%hd5547055602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5546955598%_))))
                                          (if (gx#identifier? _%hd5547055602%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g99661_|
                                                   _%hd5547055602%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5547155605%_)
                                                      (let ((_%e5547255608%_
                                                             (gx#syntax-e
                                                              _%tl5547155605%_)))
                                                        (let ((_%tl5547455615%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5547255608%_)))
                      (_%hd5547355612%_
                       (let () (declare (not safe)) (##car _%e5547255608%_))))
                  (if (gx#stx-pair/null? _%tl5544856017%_)
                      (let ((_%__splice9395793958%_
                             (gx#syntax-split-splice->vector
                              _%tl5544856017%_
                              '0)))
                        (let ((_%tl5549055522%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9395793958%_ '1)))
                              (_%target5548855519%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9395793958%_ '0))))
                          (if (gx#stx-null? _%tl5549055522%_)
                              (_%__match9403194032%_
                               _%e5544656010%_
                               _%hd5544756014%_
                               _%tl5544856017%_
                               _%__splice9395793958%_
                               _%target5548855519%_
                               _%tl5549055522%_)
                              (let ()
                                (declare (not safe))
                                (_%g5544255502%_)))))
                      (let () (declare (not safe)) (_%g5544255502%_)))))
              (if (gx#stx-pair/null? _%tl5544856017%_)
                  (let ((_%__splice9395793958%_
                         (gx#syntax-split-splice->vector _%tl5544856017%_ '0)))
                    (let ((_%tl5549055522%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '1)))
                          (_%target5548855519%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9395793958%_ '0))))
                      (if (gx#stx-null? _%tl5549055522%_)
                          (_%__match9403194032%_
                           _%e5544656010%_
                           _%hd5544756014%_
                           _%tl5544856017%_
                           _%__splice9395793958%_
                           _%target5548855519%_
                           _%tl5549055522%_)
                          (let () (declare (not safe)) (_%g5544255502%_)))))
                  (let () (declare (not safe)) (_%g5544255502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5544856017%_)
                                                      (let ((_%__splice9395793958%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5544856017%_
                                                              '0)))
                                                        (let ((_%tl5549055522%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9395793958%_ '1)))
                      (_%target5548855519%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9395793958%_ '0))))
                  (if (gx#stx-null? _%tl5549055522%_)
                      (_%__match9403194032%_
                       _%e5544656010%_
                       _%hd5544756014%_
                       _%tl5544856017%_
                       _%__splice9395793958%_
                       _%target5548855519%_
                       _%tl5549055522%_)
                      (let () (declare (not safe)) (_%g5544255502%_)))))
              (let () (declare (not safe)) (_%g5544255502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5544856017%_)
                                                  (let ((_%__splice9395793958%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5544856017%_
                                                          '0)))
                                                    (let ((_%tl5549055522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9395793958%_
                                                              '1)))
                                                          (_%target5548855519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9395793958%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5549055522%_)
                                                          (_%__match9403194032%_
                                                           _%e5544656010%_
                                                           _%hd5544756014%_
                                                           _%tl5544856017%_
                                                           _%__splice9395793958%_
                                                           _%target5548855519%_
                                                           _%tl5549055522%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5544255502%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5544255502%_))))))
                                      (if (gx#stx-pair/null? _%tl5544856017%_)
                                          (let ((_%__splice9395793958%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5544856017%_
                                                  '0)))
                                            (let ((_%tl5549055522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9395793958%_
                                                      '1)))
                                                  (_%target5548855519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9395793958%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5549055522%_)
                                                  (_%__match9403194032%_
                                                   _%e5544656010%_
                                                   _%hd5544756014%_
                                                   _%tl5544856017%_
                                                   _%__splice9395793958%_
                                                   _%target5548855519%_
                                                   _%tl5549055522%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5544255502%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5544255502%_)))))))
                          (if (gx#stx-pair/null? _%tl5544856017%_)
                              (let ((_%__splice9395793958%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5544856017%_
                                      '0)))
                                (let ((_%tl5549055522%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '1)))
                                      (_%target5548855519%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9395793958%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5549055522%_)
                                      (_%__match9403194032%_
                                       _%e5544656010%_
                                       _%hd5544756014%_
                                       _%tl5544856017%_
                                       _%__splice9395793958%_
                                       _%target5548855519%_
                                       _%tl5549055522%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5544255502%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5544255502%_))))))
                  (let () (declare (not safe)) (_%g5544255502%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56092%_)
        (let* ((_%__stx9403494035%_ _%stx56092%_)
               (_%g5609656117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9403494035%_))))
          (let ((_%__kont9403794038%_
                 (lambda (_%g5609856185%_)
                   (let* ((_%g5619756204%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56092%_
                            _%g5609856185%_))
                          (_%E5619956210%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5619756204%_
                                    '([var . parts]))
                             (void)))
                          (_%K5620056426%_
                           (lambda (_%parts56214%_ _%var56216%_)
                             (let ((_%$e56218%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56216%_))))
                               (if _%$e56218%_
                                   ((lambda (_%te56222%_)
                                      (let _%loop56225%_ ((_%parts56228%_
                                                           _%parts56214%_)
                                                          (_%type56230%_
                                                           (##direct-structure-ref
                                                            _%te56222%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56231%_
                                                           _%var56216%_)
                                                          (_%nil-check?56232%_
                                                           '#f))
                                        (let* ((_%parts5623356241%_
                                                _%parts56228%_)
                                               (_%else5623556253%_
                                                (lambda () _%object56231%_))
                                               (_%K5623756408%_
                                                (lambda (_%rest56257%_
                                                         _%part56259%_)
                                                  (if (and (not _%nil-check?56232%_)
                                                           (let ((__tmp99662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56259%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp99662)))
              (let ((_%str56263%_ (symbol->string _%part56259%_)))
                (_%loop56225%_
                 (cons (let ((__tmp99663
                              (substring
                               _%str56263%_
                               '1
                               (string-length _%str56263%_))))
                         (declare (not safe))
                         (##string->symbol __tmp99663))
                       _%rest56257%_)
                 _%type56230%_
                 _%object56231%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56230%_))
                  (let* ((_%g5626856283%_
                          (lambda (_%g5626956279%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5626956279%_)))
                         (_%g5626756400%_
                          (lambda (_%g5626956287%_)
                            (if (gx#stx-pair? _%g5626956287%_)
                                (let ((_%e5627256290%_
                                       (gx#syntax-e _%g5626956287%_)))
                                  (let ((_%hd5627356294%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5627256290%_)))
                                        (_%tl5627456297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5627256290%_))))
                                    (if (gx#stx-pair? _%tl5627456297%_)
                                        (let ((_%e5627556300%_
                                               (gx#syntax-e _%tl5627456297%_)))
                                          (let ((_%hd5627656304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5627556300%_)))
                                                (_%tl5627756307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5627556300%_))))
                                            (if (gx#stx-null? _%tl5627756307%_)
                                                ((lambda (_%g5627056310%_
                                                          _%g5627156312%_)
                                                   (if (null? _%rest56257%_)
                                                       (let ((_%$e56342%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56230%_
                                                               _%part56259%_)))
                                                         (if _%$e56342%_
                                                             ((lambda (_%slot-type56346%_)
                                                                (let* ((_%g5634956357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5635056353%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5635056353%_)))
                               (_%g5634856380%_
                                (lambda (_%g5635056361%_)
                                  ((lambda (_%g5635156364%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5635156364%_
                                                             '()))
                                                 (cons (cons _%g5627056310%_
                                                             (cons _%g5627156312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5635056361%_))))
                          (_%g5634856380%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56092%_
                              _%slot-type56346%_)))))
                      _%$e56342%_)
                     (if _%nil-check?56232%_
                         (cons _%g5627056310%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5627156312%_ '()))
                                     '()))
                         (cons _%g5627056310%_ (cons _%g5627156312%_ '())))))
               (let ((_%$e56388%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56230%_
                       _%part56259%_)))
                 (if _%$e56388%_
                     ((lambda (_%type56392%_)
                        (let ((_%type56395%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56092%_
                                  _%type56392%_))))
                          (if _%nil-check?56232%_
                              (_%loop56225%_
                               _%rest56257%_
                               _%type56395%_
                               (cons _%g5627056310%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5627156312%_ '()))
                                           '()))
                               '#f)
                              (_%loop56225%_
                               _%rest56257%_
                               _%type56395%_
                               (cons _%g5627056310%_
                                     (cons _%g5627156312%_ '()))
                               '#f))))
                      _%$e56388%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56092%_
                      _%g5609856185%_
                      _%part56259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5627656304%_
                                                 _%hd5627356294%_)
                                                (_%g5626856283%_
                                                 _%g5626956287%_))))
                                        (_%g5626856283%_ _%g5626956287%_))))
                                (_%g5626856283%_ _%g5626956287%_)))))
                    (_%g5626756400%_
                     (list (if _%nil-check?56232%_
                               (cons 'check-nil! (cons _%object56231%_ '()))
                               _%object56231%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56092%_
                            _%type56230%_
                            _%part56259%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56230%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56092%_
                       _%type56230%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5623356241%_)
                                              (let ((_%hd5623856412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5623356241%_)))
                                                    (_%tl5623956415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5623356241%_))))
                                                (let* ((_%part56418%_
                                                        _%hd5623856412%_)
                                                       (_%rest56421%_
                                                        _%tl5623956415%_))
                                                  (_%K5623756408%_
                                                   _%rest56421%_
                                                   _%part56418%_)))
                                              (_%else5623556253%_)))))
                                    _%$e56218%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5609856185%_ '())))))))
                     (if (pair? _%g5619756204%_)
                         (let ((_%hd5620156430%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5619756204%_)))
                               (_%tl5620256433%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5619756204%_))))
                           (let* ((_%var56436%_ _%hd5620156430%_)
                                  (_%parts56439%_ _%tl5620256433%_))
                             (_%K5620056426%_ _%parts56439%_ _%var56436%_)))
                         (_%E5619956210%_)))))
                (_%__kont9403994040%_
                 (lambda (_%g5610556144%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5610556144%_ '())))))
            (let ((_%__match9405594056%_
                   (lambda (_%e5609956165%_
                            _%hd5610056169%_
                            _%tl5610156172%_
                            _%e5610256175%_
                            _%hd5610356179%_
                            _%tl5610456182%_)
                     (let ((_%g5609856185%_ _%hd5610356179%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5609856185%_)
                           (_%__kont9403794038%_ _%g5609856185%_)
                           (_%__kont9403994040%_ _%hd5610356179%_))))))
              (if (gx#stx-pair? _%__stx9403494035%_)
                  (let ((_%e5609956165%_ (gx#syntax-e _%__stx9403494035%_)))
                    (let ((_%tl5610156172%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5609956165%_)))
                          (_%hd5610056169%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5609956165%_))))
                      (if (gx#stx-pair? _%tl5610156172%_)
                          (let ((_%e5610256175%_
                                 (gx#syntax-e _%tl5610156172%_)))
                            (let ((_%tl5610456182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5610256175%_)))
                                  (_%hd5610356179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5610256175%_))))
                              (if (gx#stx-null? _%tl5610456182%_)
                                  (_%__match9405594056%_
                                   _%e5609956165%_
                                   _%hd5610056169%_
                                   _%tl5610156172%_
                                   _%e5610256175%_
                                   _%hd5610356179%_
                                   _%tl5610456182%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5609656117%_)))))
                          (let () (declare (not safe)) (_%g5609656117%_)))))
                  (let () (declare (not safe)) (_%g5609656117%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx56446%_)
        (let* ((_%__stx9407294073%_ _%stx56446%_)
               (_%g5645056479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9407294073%_))))
          (let ((_%__kont9407594076%_
                 (lambda (_%g5645256571%_ _%g5645356573%_)
                   (let* ((_%g5658756594%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56446%_
                            _%g5645356573%_))
                          (_%E5658956600%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5658756594%_
                                    '([var . parts]))
                             (void)))
                          (_%K5659056830%_
                           (lambda (_%parts56604%_ _%var56606%_)
                             (let ((_%$e56608%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56606%_))))
                               (if _%$e56608%_
                                   ((lambda (_%te56612%_)
                                      (let _%loop56615%_ ((_%parts56618%_
                                                           _%parts56604%_)
                                                          (_%type56620%_
                                                           (##direct-structure-ref
                                                            _%te56612%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56621%_
                                                           _%var56606%_)
                                                          (_%checked-mutator?56622%_
                                                           (##direct-structure-ref
                                                            _%te56612%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?56623%_
                                                           '#f))
                                        (let* ((_%parts5662456631%_
                                                _%parts56618%_)
                                               (_%E5662656637%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5662456631%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5662756812%_
                                                (lambda (_%rest56641%_
                                                         _%part56643%_)
                                                  (if (and (not _%nil-check?56623%_)
                                                           (let ((__tmp99664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56643%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp99664)))
              (let ((_%str56647%_ (symbol->string _%part56643%_)))
                (_%loop56615%_
                 (cons (let ((__tmp99665
                              (substring
                               _%str56647%_
                               '1
                               (string-length _%str56647%_))))
                         (declare (not safe))
                         (##string->symbol __tmp99665))
                       _%rest56641%_)
                 _%type56620%_
                 _%object56621%_
                 _%checked-mutator?56622%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56620%_))
                  (if (null? _%rest56641%_)
                      (let* ((_%g5665456669%_
                              (lambda (_%g5665556665%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5665556665%_)))
                             (_%g5665356726%_
                              (lambda (_%g5665556673%_)
                                (if (gx#stx-pair? _%g5665556673%_)
                                    (let ((_%e5665856676%_
                                           (gx#syntax-e _%g5665556673%_)))
                                      (let ((_%hd5665956680%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5665856676%_)))
                                            (_%tl5666056683%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5665856676%_))))
                                        (if (gx#stx-pair? _%tl5666056683%_)
                                            (let ((_%e5666156686%_
                                                   (gx#syntax-e
                                                    _%tl5666056683%_)))
                                              (let ((_%hd5666256690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5666156686%_)))
                                                    (_%tl5666356693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5666156686%_))))
                                                (if (gx#stx-null?
                                                     _%tl5666356693%_)
                                                    ((lambda (_%g5665656696%_
                                                              _%g5665756698%_)
                                                       (if _%nil-check?56623%_
                                                           (cons _%g5665656696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5665756698%_ '()))
                               (cons _%g5645256571%_ '())))
                   (cons _%g5665656696%_
                         (cons _%g5665756698%_ (cons _%g5645256571%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5666256690%_
                                                     _%hd5665956680%_)
                                                    (_%g5665456669%_
                                                     _%g5665556673%_))))
                                            (_%g5665456669%_
                                             _%g5665556673%_))))
                                    (_%g5665456669%_ _%g5665556673%_)))))
                        (_%g5665356726%_
                         (list _%object56621%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx56446%_
                                _%type56620%_
                                _%part56643%_
                                (if _%checked-mutator?56622%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type56620%_
                                     _%part56643%_)
                                    '#f)))))
                      (let ((_%$e56730%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type56620%_
                              _%part56643%_)))
                        (if _%$e56730%_
                            ((lambda (_%type56734%_)
                               (let* ((_%type56737%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx56446%_
                                          _%type56734%_)))
                                      (_%g5674056755%_
                                       (lambda (_%g5674156751%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5674156751%_)))
                                      (_%g5673956802%_
                                       (lambda (_%g5674156759%_)
                                         (if (gx#stx-pair? _%g5674156759%_)
                                             (let ((_%e5674456762%_
                                                    (gx#syntax-e
                                                     _%g5674156759%_)))
                                               (let ((_%hd5674556766%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5674456762%_)))
                                                     (_%tl5674656769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5674456762%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5674656769%_)
                                                     (let ((_%e5674756772%_
                                                            (gx#syntax-e
                                                             _%tl5674656769%_)))
                                                       (let ((_%hd5674856776%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5674756772%_)))
                     (_%tl5674956779%_
                      (let () (declare (not safe)) (##cdr _%e5674756772%_))))
                 (if (gx#stx-null? _%tl5674956779%_)
                     ((lambda (_%g5674256782%_ _%g5674356784%_)
                        (_%loop56615%_
                         _%rest56641%_
                         _%type56737%_
                         (cons _%g5674256782%_ (cons _%g5674356784%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type56737%_
                          _%part56643%_)
                         '#f))
                      _%hd5674856776%_
                      _%hd5674556766%_)
                     (_%g5674056755%_ _%g5674156759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5674056755%_
                                                      _%g5674156759%_))))
                                             (_%g5674056755%_
                                              _%g5674156759%_)))))
                                 (_%g5673956802%_
                                  (list (if _%nil-check?56623%_
                                            (cons 'check-nil!
                                                  (cons _%object56621%_ '()))
                                            _%object56621%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx56446%_
                                         _%type56737%_
                                         _%part56643%_)))))
                             _%$e56730%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx56446%_
                             _%g5645356573%_
                             _%part56643%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56620%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56446%_
                       _%type56620%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5662456631%_)
                                              (let ((_%hd5662856816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5662456631%_)))
                                                    (_%tl5662956819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5662456631%_))))
                                                (let* ((_%part56822%_
                                                        _%hd5662856816%_)
                                                       (_%rest56825%_
                                                        _%tl5662956819%_))
                                                  (_%K5662756812%_
                                                   _%rest56825%_
                                                   _%part56822%_)))
                                              (_%E5662656637%_)))))
                                    _%$e56608%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx56446%_)))))))
                     (if (pair? _%g5658756594%_)
                         (let ((_%hd5659156834%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5658756594%_)))
                               (_%tl5659256837%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5658756594%_))))
                           (let* ((_%var56840%_ _%hd5659156834%_)
                                  (_%parts56843%_ _%tl5659256837%_))
                             (_%K5659056830%_ _%parts56843%_ _%var56840%_)))
                         (_%E5658956600%_)))))
                (_%__kont9407794078%_
                 (lambda (_%g5646356516%_ _%g5646456518%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx56446%_)))))
            (let ((_%__match9409994100%_
                   (lambda (_%e5645456541%_
                            _%hd5645556545%_
                            _%tl5645656548%_
                            _%e5645756551%_
                            _%hd5645856555%_
                            _%tl5645956558%_
                            _%e5646056561%_
                            _%hd5646156565%_
                            _%tl5646256568%_)
                     (let ((_%g5645256571%_ _%hd5646156565%_)
                           (_%g5645356573%_ _%hd5645856555%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5645356573%_)
                           (_%__kont9407594076%_
                            _%g5645256571%_
                            _%g5645356573%_)
                           (_%__kont9407794078%_
                            _%hd5646156565%_
                            _%hd5645856555%_))))))
              (if (gx#stx-pair? _%__stx9407294073%_)
                  (let ((_%e5645456541%_ (gx#syntax-e _%__stx9407294073%_)))
                    (let ((_%tl5645656548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5645456541%_)))
                          (_%hd5645556545%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5645456541%_))))
                      (if (gx#stx-pair? _%tl5645656548%_)
                          (let ((_%e5645756551%_
                                 (gx#syntax-e _%tl5645656548%_)))
                            (let ((_%tl5645956558%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5645756551%_)))
                                  (_%hd5645856555%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5645756551%_))))
                              (if (gx#stx-pair? _%tl5645956558%_)
                                  (let ((_%e5646056561%_
                                         (gx#syntax-e _%tl5645956558%_)))
                                    (let ((_%tl5646256568%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5646056561%_)))
                                          (_%hd5646156565%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5646056561%_))))
                                      (if (gx#stx-null? _%tl5646256568%_)
                                          (_%__match9409994100%_
                                           _%e5645456541%_
                                           _%hd5645556545%_
                                           _%tl5645656548%_
                                           _%e5645756551%_
                                           _%hd5645856555%_
                                           _%tl5645956558%_
                                           _%e5646056561%_
                                           _%hd5646156565%_
                                           _%tl5646256568%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5645056479%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5645056479%_)))))
                          (let () (declare (not safe)) (_%g5645056479%_)))))
                  (let () (declare (not safe)) (_%g5645056479%_))))))))))

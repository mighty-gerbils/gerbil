(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g91462_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91463_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91464_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91467_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91468_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91471_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91472_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91473_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91474_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91478_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91479_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91480_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91481_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91485_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx49477%_)
        (let* ((_%__stx8547285473%_ _%stx49477%_)
               (_%g4948649695%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8547285473%_))))
          (let ((_%__kont8547585476%_
                 (lambda (_%L50601%_
                          _%L50603%_
                          _%L50604%_
                          _%L50605%_
                          _%L50606%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50606%_ (cons _%L50605%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50606%_
                                                       (cons _%L50604%_
                                                             (cons _%L50603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5064950652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5065050655%_)
                  (cons _%g5064950652%_ _%g5065050655%_))
                '()
                _%L50601%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8547985480%_
                 (lambda (_%L50445%_
                          _%L50447%_
                          _%L50448%_
                          _%L50449%_
                          _%L50450%_
                          _%L50451%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50451%_ (cons _%L50450%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50451%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L50449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L50451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L50448%_ (cons _%L50447%_ '())))
                           (foldr (lambda (_%g5049550498%_ _%g5049650501%_)
                                    (cons _%g5049550498%_ _%g5049650501%_))
                                  '()
                                  _%L50445%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8548385484%_
                 (lambda (_%L50262%_ _%L50264%_ _%L50265%_ _%L50266%_)
                   (let ((_%meta50303%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx49477%_
                             _%L50264%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta50303%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L50266%_
                                           (cons _%L50265%_
                                                 (cons _%L50264%_ '())))
                                     (foldr (lambda (_%g5030750310%_
                                                     _%g5030850313%_)
                                              (cons _%g5030750310%_
                                                    _%g5030850313%_))
                                            '()
                                            _%L50262%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta50303%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L50266%_
                                               (cons _%L50265%_
                                                     (cons _%L50264%_ '())))
                                         (foldr (lambda (_%g5031750320%_
                                                         _%g5031850323%_)
                                                  (cons _%g5031750320%_
                                                        _%g5031850323%_))
                                                '()
                                                _%L50262%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx49477%_
                              _%L50264%_
                              _%meta50303%_))))))
                (_%__kont8548785488%_
                 (lambda (_%L50140%_ _%L50142%_ _%L50143%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L50143%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50142%_ '())))
                               (foldr (lambda (_%g5016650169%_ _%g5016750172%_)
                                        (cons _%g5016650169%_ _%g5016750172%_))
                                      '()
                                      _%L50140%_)))))
                (_%__kont8549185492%_
                 (lambda (_%L49998%_
                          _%L50000%_
                          _%L50001%_
                          _%L50002%_
                          _%L50003%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50003%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50002%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50003%_
                                                       (cons _%L50001%_
                                                             (cons _%L50000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5004450047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5004550050%_)
                  (cons _%g5004450047%_ _%g5004550050%_))
                '()
                _%L49998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8549585496%_
                 (lambda (_%L49856%_ _%L49858%_ _%L49859%_ _%L49860%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L49860%_ _%L49859%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L49858%_
                                                 (foldr (lambda (_%g4988249885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4988349888%_)
                  (cons _%g4988249885%_ _%g4988349888%_))
                '()
                _%L49856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8549985500%_
                 (lambda (_%L49752%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4977049773%_ _%g4977149776%_)
                                        (cons _%g4977049773%_ _%g4977149776%_))
                                      '()
                                      _%L49752%_))))))
            (let* ((_%__match8580585806%_
                    (lambda (_%e4967549702%_
                             _%hd4967649706%_
                             _%tl4967749709%_
                             _%e4967849712%_
                             _%hd4967949716%_
                             _%tl4968049719%_
                             _%__splice8550185502%_
                             _%target4968149722%_
                             _%tl4968349725%_)
                      (letrec ((_%loop4968449728%_
                                (lambda (_%hd4968249732%_ _%body4968849735%_)
                                  (if (gx#stx-pair? _%hd4968249732%_)
                                      (let ((_%e4968549738%_
                                             (gx#syntax-e _%hd4968249732%_)))
                                        (let ((_%lp-tl4968749745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4968549738%_)))
                                              (_%lp-hd4968649742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4968549738%_))))
                                          (_%loop4968449728%_
                                           _%lp-tl4968749745%_
                                           (cons _%lp-hd4968649742%_
                                                 _%body4968849735%_))))
                                      (let ((_%body4968949748%_
                                             (reverse _%body4968849735%_)))
                                        (_%__kont8549985500%_
                                         _%body4968949748%_))))))
                        (_%loop4968449728%_ _%target4968149722%_ '()))))
                   (_%__match8578385784%_
                    (lambda (_%e4965349786%_
                             _%hd4965449790%_
                             _%tl4965549793%_
                             _%e4965649796%_
                             _%hd4965749800%_
                             _%tl4965849803%_
                             _%e4965949806%_
                             _%hd4966049810%_
                             _%tl4966149813%_
                             _%e4966249816%_
                             _%hd4966349820%_
                             _%tl4966449823%_
                             _%__splice8549785498%_
                             _%target4966549826%_
                             _%tl4966749829%_)
                      (letrec ((_%loop4966849832%_
                                (lambda (_%hd4966649836%_ _%body4967249839%_)
                                  (if (gx#stx-pair? _%hd4966649836%_)
                                      (let ((_%e4966949842%_
                                             (gx#syntax-e _%hd4966649836%_)))
                                        (let ((_%lp-tl4967149849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966949842%_)))
                                              (_%lp-hd4967049846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966949842%_))))
                                          (_%loop4966849832%_
                                           _%lp-tl4967149849%_
                                           (cons _%lp-hd4967049846%_
                                                 _%body4967249839%_))))
                                      (let ((_%body4967349852%_
                                             (reverse _%body4967249839%_)))
                                        (let ((_%L49856%_ _%body4967349852%_)
                                              (_%L49858%_ _%tl4966149813%_)
                                              (_%L49859%_ _%tl4966449823%_)
                                              (_%L49860%_ _%hd4966349820%_))
                                          (if (gx#identifier? _%L49860%_)
                                              (_%__kont8549585496%_
                                               _%L49856%_
                                               _%L49858%_
                                               _%L49859%_
                                               _%L49860%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_)))))))))
                        (_%loop4966849832%_ _%target4966549826%_ '()))))
                   (_%__match8576985770%_
                    (lambda (_%e4965349786%_
                             _%hd4965449790%_
                             _%tl4965549793%_
                             _%e4965649796%_
                             _%hd4965749800%_
                             _%tl4965849803%_
                             _%e4965949806%_
                             _%hd4966049810%_
                             _%tl4966149813%_)
                      (if (gx#stx-pair? _%hd4966049810%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4966049810%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (if (gx#stx-pair/null? _%tl4965849803%_)
                                  (let ((_%__splice8549785498%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4965849803%_
                                          '0)))
                                    (let ((_%tl4966749829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '1)))
                                          (_%target4966549826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4966749829%_)
                                          (_%__match8578385784%_
                                           _%e4965349786%_
                                           _%hd4965449790%_
                                           _%tl4965549793%_
                                           _%e4965649796%_
                                           _%hd4965749800%_
                                           _%tl4965849803%_
                                           _%e4965949806%_
                                           _%hd4966049810%_
                                           _%tl4966149813%_
                                           _%e4966249816%_
                                           _%hd4966349820%_
                                           _%tl4966449823%_
                                           _%__splice8549785498%_
                                           _%target4966549826%_
                                           _%tl4966749829%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                   (_%__match8575185752%_
                    (lambda (_%e4961949898%_
                             _%hd4962049902%_
                             _%tl4962149905%_
                             _%e4962249908%_
                             _%hd4962349912%_
                             _%tl4962449915%_
                             _%e4962549918%_
                             _%hd4962649922%_
                             _%tl4962749925%_
                             _%e4962849928%_
                             _%hd4962949932%_
                             _%tl4963049935%_
                             _%e4963149938%_
                             _%hd4963249942%_
                             _%tl4963349945%_
                             _%e4963449948%_
                             _%hd4963549952%_
                             _%tl4963649955%_
                             _%e4963749958%_
                             _%hd4963849962%_
                             _%tl4963949965%_
                             _%__splice8549385494%_
                             _%target4964049968%_
                             _%tl4964249971%_)
                      (letrec ((_%loop4964349974%_
                                (lambda (_%hd4964149978%_ _%body4964749981%_)
                                  (if (gx#stx-pair? _%hd4964149978%_)
                                      (let ((_%e4964449984%_
                                             (gx#syntax-e _%hd4964149978%_)))
                                        (let ((_%lp-tl4964649991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4964449984%_)))
                                              (_%lp-hd4964549988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4964449984%_))))
                                          (_%loop4964349974%_
                                           _%lp-tl4964649991%_
                                           (cons _%lp-hd4964549988%_
                                                 _%body4964749981%_))))
                                      (let ((_%body4964849994%_
                                             (reverse _%body4964749981%_)))
                                        (let ((_%L49998%_ _%body4964849994%_)
                                              (_%L50000%_ _%hd4963849962%_)
                                              (_%L50001%_ _%hd4963549952%_)
                                              (_%L50002%_ _%hd4963249942%_)
                                              (_%L50003%_ _%hd4962649922%_))
                                          (if (and (gx#identifier? _%L50003%_)
                                                   (gx#identifier? _%L50000%_)
                                                   (gx#identifier? _%L50001%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50001%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50001%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50001%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50001%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8549185492%_
                                               _%L49998%_
                                               _%L50000%_
                                               _%L50001%_
                                               _%L50002%_
                                               _%L50003%_)
                                              (_%__match8576985770%_
                                               _%e4961949898%_
                                               _%hd4962049902%_
                                               _%tl4962149905%_
                                               _%e4962249908%_
                                               _%hd4962349912%_
                                               _%tl4962449915%_
                                               _%e4962549918%_
                                               _%hd4962649922%_
                                               _%tl4962749925%_))))))))
                        (_%loop4964349974%_ _%target4964049968%_ '()))))
                   (_%__match8569585696%_
                    (lambda (_%e4959050060%_
                             _%hd4959150064%_
                             _%tl4959250067%_
                             _%e4959350070%_
                             _%hd4959450074%_
                             _%tl4959550077%_
                             _%e4959650080%_
                             _%hd4959750084%_
                             _%tl4959850087%_
                             _%e4959950090%_
                             _%hd4960050094%_
                             _%tl4960150097%_
                             _%e4960250100%_
                             _%hd4960350104%_
                             _%tl4960450107%_
                             _%__splice8548985490%_
                             _%target4960550110%_
                             _%tl4960750113%_)
                      (letrec ((_%loop4960850116%_
                                (lambda (_%hd4960650120%_ _%body4961250123%_)
                                  (if (gx#stx-pair? _%hd4960650120%_)
                                      (let ((_%e4960950126%_
                                             (gx#syntax-e _%hd4960650120%_)))
                                        (let ((_%lp-tl4961150133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4960950126%_)))
                                              (_%lp-hd4961050130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4960950126%_))))
                                          (_%loop4960850116%_
                                           _%lp-tl4961150133%_
                                           (cons _%lp-hd4961050130%_
                                                 _%body4961250123%_))))
                                      (let ((_%body4961350136%_
                                             (reverse _%body4961250123%_)))
                                        (let ((_%L50140%_ _%body4961350136%_)
                                              (_%L50142%_ _%hd4960350104%_)
                                              (_%L50143%_ _%hd4959750084%_))
                                          (if (gx#identifier? _%L50143%_)
                                              (_%__kont8548785488%_
                                               _%L50140%_
                                               _%L50142%_
                                               _%L50143%_)
                                              (_%__match8576985770%_
                                               _%e4959050060%_
                                               _%hd4959150064%_
                                               _%tl4959250067%_
                                               _%e4959350070%_
                                               _%hd4959450074%_
                                               _%tl4959550077%_
                                               _%e4959650080%_
                                               _%hd4959750084%_
                                               _%tl4959850087%_))))))))
                        (_%loop4960850116%_ _%target4960550110%_ '()))))
                   (_%__match8567585676%_
                    (lambda (_%e4959050060%_
                             _%hd4959150064%_
                             _%tl4959250067%_
                             _%e4959350070%_
                             _%hd4959450074%_
                             _%tl4959550077%_
                             _%e4959650080%_
                             _%hd4959750084%_
                             _%tl4959850087%_
                             _%e4959950090%_
                             _%hd4960050094%_
                             _%tl4960150097%_)
                      (if (gx#identifier? _%hd4960050094%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g91462_|
                               _%hd4960050094%_)
                              (if (gx#stx-pair? _%tl4960150097%_)
                                  (let ((_%e4960250100%_
                                         (gx#syntax-e _%tl4960150097%_)))
                                    (let ((_%tl4960450107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4960250100%_)))
                                          (_%hd4960350104%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4960250100%_))))
                                      (if (gx#stx-null? _%tl4960450107%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4959550077%_)
                                              (let ((_%__splice8548985490%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4959550077%_
                                                      '0)))
                                                (let ((_%tl4960750113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8548985490%_
                                                          '1)))
                                                      (_%target4960550110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8548985490%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4960750113%_)
                                                      (_%__match8569585696%_
                                                       _%e4959050060%_
                                                       _%hd4959150064%_
                                                       _%tl4959250067%_
                                                       _%e4959350070%_
                                                       _%hd4959450074%_
                                                       _%tl4959550077%_
                                                       _%e4959650080%_
                                                       _%hd4959750084%_
                                                       _%tl4959850087%_
                                                       _%e4959950090%_
                                                       _%hd4960050094%_
                                                       _%tl4960150097%_
                                                       _%e4960250100%_
                                                       _%hd4960350104%_
                                                       _%tl4960450107%_
                                                       _%__splice8548985490%_
                                                       _%target4960550110%_
                                                       _%tl4960750113%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4959750084%_)
                                                          (let ((_%e4966249816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4959750084%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4959750084%_)
                                                  (let ((_%e4966249816%_
                                                         (gx#syntax-e
                                                          _%hd4959750084%_)))
                                                    (let ((_%tl4966449823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4966249816%_)))
                                                          (_%hd4966349820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4966249816%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4948649695%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))
                                          (if (gx#stx-pair? _%tl4960450107%_)
                                              (let ((_%e4963449948%_
                                                     (gx#syntax-e
                                                      _%tl4960450107%_)))
                                                (let ((_%tl4963649955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4963449948%_)))
                                                      (_%hd4963549952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4963449948%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4963649955%_)
                                                      (let ((_%e4963749958%_
                                                             (gx#syntax-e
                                                              _%tl4963649955%_)))
                                                        (let ((_%tl4963949965%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4963749958%_)))
                      (_%hd4963849962%_
                       (let () (declare (not safe)) (##car _%e4963749958%_))))
                  (if (gx#stx-null? _%tl4963949965%_)
                      (if (gx#stx-pair/null? _%tl4959550077%_)
                          (let ((_%__splice8549385494%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4959550077%_
                                  '0)))
                            (let ((_%tl4964249971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549385494%_ '1)))
                                  (_%target4964049968%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549385494%_
                                      '0))))
                              (if (gx#stx-null? _%tl4964249971%_)
                                  (_%__match8575185752%_
                                   _%e4959050060%_
                                   _%hd4959150064%_
                                   _%tl4959250067%_
                                   _%e4959350070%_
                                   _%hd4959450074%_
                                   _%tl4959550077%_
                                   _%e4959650080%_
                                   _%hd4959750084%_
                                   _%tl4959850087%_
                                   _%e4959950090%_
                                   _%hd4960050094%_
                                   _%tl4960150097%_
                                   _%e4960250100%_
                                   _%hd4960350104%_
                                   _%tl4960450107%_
                                   _%e4963449948%_
                                   _%hd4963549952%_
                                   _%tl4963649955%_
                                   _%e4963749958%_
                                   _%hd4963849962%_
                                   _%tl4963949965%_
                                   _%__splice8549385494%_
                                   _%target4964049968%_
                                   _%tl4964249971%_)
                                  (if (gx#stx-pair? _%hd4959750084%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4959750084%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))
                          (if (gx#stx-pair? _%hd4959750084%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4959750084%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                      (if (gx#stx-pair? _%hd4959750084%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4959750084%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (if (gx#stx-pair/null? _%tl4959550077%_)
                                  (let ((_%__splice8549785498%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4959550077%_
                                          '0)))
                                    (let ((_%tl4966749829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '1)))
                                          (_%target4966549826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4966749829%_)
                                          (_%__match8578385784%_
                                           _%e4959050060%_
                                           _%hd4959150064%_
                                           _%tl4959250067%_
                                           _%e4959350070%_
                                           _%hd4959450074%_
                                           _%tl4959550077%_
                                           _%e4959650080%_
                                           _%hd4959750084%_
                                           _%tl4959850087%_
                                           _%e4966249816%_
                                           _%hd4966349820%_
                                           _%tl4966449823%_
                                           _%__splice8549785498%_
                                           _%target4966549826%_
                                           _%tl4966749829%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_))))))
              (if (gx#stx-pair? _%hd4959750084%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4959750084%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4959550077%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4959550077%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4959050060%_
                                   _%hd4959150064%_
                                   _%tl4959250067%_
                                   _%e4959350070%_
                                   _%hd4959450074%_
                                   _%tl4959550077%_
                                   _%e4959650080%_
                                   _%hd4959750084%_
                                   _%tl4959850087%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4959750084%_)
                                                  (let ((_%e4966249816%_
                                                         (gx#syntax-e
                                                          _%hd4959750084%_)))
                                                    (let ((_%tl4966449823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4966249816%_)))
                                                          (_%hd4966349820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4966249816%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4959550077%_)
                                                          (let ((_%__splice8549785498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4959550077%_ '0)))
                    (let ((_%tl4966749829%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '1)))
                          (_%target4966549826%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '0))))
                      (if (gx#stx-null? _%tl4966749829%_)
                          (_%__match8578385784%_
                           _%e4959050060%_
                           _%hd4959150064%_
                           _%tl4959250067%_
                           _%e4959350070%_
                           _%hd4959450074%_
                           _%tl4959550077%_
                           _%e4959650080%_
                           _%hd4959750084%_
                           _%tl4959850087%_
                           _%e4966249816%_
                           _%hd4966349820%_
                           _%tl4966449823%_
                           _%__splice8549785498%_
                           _%target4966549826%_
                           _%tl4966749829%_)
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))))
                                  (if (gx#stx-pair? _%hd4959750084%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4959750084%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4959550077%_)
                                              (let ((_%__splice8549785498%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4959550077%_
                                                      '0)))
                                                (let ((_%tl4966749829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '1)))
                                                      (_%target4966549826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4966749829%_)
                                                      (_%__match8578385784%_
                                                       _%e4959050060%_
                                                       _%hd4959150064%_
                                                       _%tl4959250067%_
                                                       _%e4959350070%_
                                                       _%hd4959450074%_
                                                       _%tl4959550077%_
                                                       _%e4959650080%_
                                                       _%hd4959750084%_
                                                       _%tl4959850087%_
                                                       _%e4966249816%_
                                                       _%hd4966349820%_
                                                       _%tl4966449823%_
                                                       _%__splice8549785498%_
                                                       _%target4966549826%_
                                                       _%tl4966749829%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4948649695%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                              (if (gx#stx-pair? _%hd4959750084%_)
                                  (let ((_%e4966249816%_
                                         (gx#syntax-e _%hd4959750084%_)))
                                    (let ((_%tl4966449823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966249816%_)))
                                          (_%hd4966349820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966249816%_))))
                                      (if (gx#stx-pair/null? _%tl4959550077%_)
                                          (let ((_%__splice8549785498%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4959550077%_
                                                  '0)))
                                            (let ((_%tl4966749829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8549785498%_
                                                      '1)))
                                                  (_%target4966549826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8549785498%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4966749829%_)
                                                  (_%__match8578385784%_
                                                   _%e4959050060%_
                                                   _%hd4959150064%_
                                                   _%tl4959250067%_
                                                   _%e4959350070%_
                                                   _%hd4959450074%_
                                                   _%tl4959550077%_
                                                   _%e4959650080%_
                                                   _%hd4959750084%_
                                                   _%tl4959850087%_
                                                   _%e4966249816%_
                                                   _%hd4966349820%_
                                                   _%tl4966449823%_
                                                   _%__splice8549785498%_
                                                   _%target4966549826%_
                                                   _%tl4966749829%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                          (if (gx#stx-pair? _%hd4959750084%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4959750084%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (if (gx#stx-pair/null? _%tl4959550077%_)
                                      (let ((_%__splice8549785498%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4959550077%_
                                              '0)))
                                        (let ((_%tl4966749829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8549785498%_
                                                  '1)))
                                              (_%target4966549826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8549785498%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4966749829%_)
                                              (_%__match8578385784%_
                                               _%e4959050060%_
                                               _%hd4959150064%_
                                               _%tl4959250067%_
                                               _%e4959350070%_
                                               _%hd4959450074%_
                                               _%tl4959550077%_
                                               _%e4959650080%_
                                               _%hd4959750084%_
                                               _%tl4959850087%_
                                               _%e4966249816%_
                                               _%hd4966349820%_
                                               _%tl4966449823%_
                                               _%__splice8549785498%_
                                               _%target4966549826%_
                                               _%tl4966749829%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_))))))
                   (_%__match8565185652%_
                    (lambda (_%e4956350182%_
                             _%hd4956450186%_
                             _%tl4956550189%_
                             _%e4956650192%_
                             _%hd4956750196%_
                             _%tl4956850199%_
                             _%e4956950202%_
                             _%hd4957050206%_
                             _%tl4957150209%_
                             _%e4957250212%_
                             _%hd4957350216%_
                             _%tl4957450219%_
                             _%e4957550222%_
                             _%hd4957650226%_
                             _%tl4957750229%_
                             _%__splice8548585486%_
                             _%target4957850232%_
                             _%tl4958050235%_)
                      (letrec ((_%loop4958150238%_
                                (lambda (_%hd4957950242%_ _%body4958550245%_)
                                  (if (gx#stx-pair? _%hd4957950242%_)
                                      (let ((_%e4958250248%_
                                             (gx#syntax-e _%hd4957950242%_)))
                                        (let ((_%lp-tl4958450255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4958250248%_)))
                                              (_%lp-hd4958350252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4958250248%_))))
                                          (_%loop4958150238%_
                                           _%lp-tl4958450255%_
                                           (cons _%lp-hd4958350252%_
                                                 _%body4958550245%_))))
                                      (let ((_%body4958650258%_
                                             (reverse _%body4958550245%_)))
                                        (let ((_%L50262%_ _%body4958650258%_)
                                              (_%L50264%_ _%hd4957650226%_)
                                              (_%L50265%_ _%hd4957350216%_)
                                              (_%L50266%_ _%hd4957050206%_))
                                          (if (and (gx#identifier? _%L50266%_)
                                                   (gx#identifier? _%L50264%_)
                                                   (gx#identifier? _%L50265%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50265%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50265%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50265%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50265%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8548385484%_
                                               _%L50262%_
                                               _%L50264%_
                                               _%L50265%_
                                               _%L50266%_)
                                              (_%__match8567585676%_
                                               _%e4956350182%_
                                               _%hd4956450186%_
                                               _%tl4956550189%_
                                               _%e4956650192%_
                                               _%hd4956750196%_
                                               _%tl4956850199%_
                                               _%e4956950202%_
                                               _%hd4957050206%_
                                               _%tl4957150209%_
                                               _%e4957250212%_
                                               _%hd4957350216%_
                                               _%tl4957450219%_))))))))
                        (_%loop4958150238%_ _%target4957850232%_ '()))))
                   (_%__match8561185612%_
                    (lambda (_%e4952650335%_
                             _%hd4952750339%_
                             _%tl4952850342%_
                             _%e4952950345%_
                             _%hd4953050349%_
                             _%tl4953150352%_
                             _%e4953250355%_
                             _%hd4953350359%_
                             _%tl4953450362%_
                             _%e4953550365%_
                             _%hd4953650369%_
                             _%tl4953750372%_
                             _%e4953850375%_
                             _%hd4953950379%_
                             _%tl4954050382%_
                             _%e4954150385%_
                             _%hd4954250389%_
                             _%tl4954350392%_
                             _%e4954450395%_
                             _%hd4954550399%_
                             _%tl4954650402%_
                             _%e4954750405%_
                             _%hd4954850409%_
                             _%tl4954950412%_
                             _%__splice8548185482%_
                             _%target4955050415%_
                             _%tl4955250418%_)
                      (letrec ((_%loop4955350421%_
                                (lambda (_%hd4955150425%_ _%body4955750428%_)
                                  (if (gx#stx-pair? _%hd4955150425%_)
                                      (let ((_%e4955450431%_
                                             (gx#syntax-e _%hd4955150425%_)))
                                        (let ((_%lp-tl4955650438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4955450431%_)))
                                              (_%lp-hd4955550435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4955450431%_))))
                                          (_%loop4955350421%_
                                           _%lp-tl4955650438%_
                                           (cons _%lp-hd4955550435%_
                                                 _%body4955750428%_))))
                                      (let ((_%body4955850441%_
                                             (reverse _%body4955750428%_)))
                                        (let ((_%L50445%_ _%body4955850441%_)
                                              (_%L50447%_ _%hd4954850409%_)
                                              (_%L50448%_ _%hd4954550399%_)
                                              (_%L50449%_ _%hd4954250389%_)
                                              (_%L50450%_ _%hd4953650369%_)
                                              (_%L50451%_ _%hd4953350359%_))
                                          (if (and (gx#identifier? _%L50451%_)
                                                   (gx#identifier? _%L50447%_)
                                                   (gx#identifier? _%L50448%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50448%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50448%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50448%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50448%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8547985480%_
                                               _%L50445%_
                                               _%L50447%_
                                               _%L50448%_
                                               _%L50449%_
                                               _%L50450%_
                                               _%L50451%_)
                                              (_%__match8567585676%_
                                               _%e4952650335%_
                                               _%hd4952750339%_
                                               _%tl4952850342%_
                                               _%e4952950345%_
                                               _%hd4953050349%_
                                               _%tl4953150352%_
                                               _%e4953250355%_
                                               _%hd4953350359%_
                                               _%tl4953450362%_
                                               _%e4953550365%_
                                               _%hd4953650369%_
                                               _%tl4953750372%_))))))))
                        (_%loop4955350421%_ _%target4955050415%_ '()))))
                   (_%__match8557985580%_
                    (lambda (_%e4952650335%_
                             _%hd4952750339%_
                             _%tl4952850342%_
                             _%e4952950345%_
                             _%hd4953050349%_
                             _%tl4953150352%_
                             _%e4953250355%_
                             _%hd4953350359%_
                             _%tl4953450362%_
                             _%e4953550365%_
                             _%hd4953650369%_
                             _%tl4953750372%_
                             _%e4953850375%_
                             _%hd4953950379%_
                             _%tl4954050382%_)
                      (if (gx#identifier? _%hd4953950379%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g91463_|
                               _%hd4953950379%_)
                              (if (gx#stx-pair? _%tl4954050382%_)
                                  (let ((_%e4954150385%_
                                         (gx#syntax-e _%tl4954050382%_)))
                                    (let ((_%tl4954350392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4954150385%_)))
                                          (_%hd4954250389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4954150385%_))))
                                      (if (gx#stx-pair? _%tl4954350392%_)
                                          (let ((_%e4954450395%_
                                                 (gx#syntax-e
                                                  _%tl4954350392%_)))
                                            (let ((_%tl4954650402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4954450395%_)))
                                                  (_%hd4954550399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4954450395%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4954650402%_)
                                                  (let ((_%e4954750405%_
                                                         (gx#syntax-e
                                                          _%tl4954650402%_)))
                                                    (let ((_%tl4954950412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4954750405%_)))
                                                          (_%hd4954850409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4954750405%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4954950412%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4953150352%_)
                                                              (let ((_%__splice8548185482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4953150352%_
                              '0)))
                        (let ((_%tl4955250418%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8548185482%_ '1)))
                              (_%target4955050415%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8548185482%_ '0))))
                          (if (gx#stx-null? _%tl4955250418%_)
                              (_%__match8561185612%_
                               _%e4952650335%_
                               _%hd4952750339%_
                               _%tl4952850342%_
                               _%e4952950345%_
                               _%hd4953050349%_
                               _%tl4953150352%_
                               _%e4953250355%_
                               _%hd4953350359%_
                               _%tl4953450362%_
                               _%e4953550365%_
                               _%hd4953650369%_
                               _%tl4953750372%_
                               _%e4953850375%_
                               _%hd4953950379%_
                               _%tl4954050382%_
                               _%e4954150385%_
                               _%hd4954250389%_
                               _%tl4954350392%_
                               _%e4954450395%_
                               _%hd4954550399%_
                               _%tl4954650402%_
                               _%e4954750405%_
                               _%hd4954850409%_
                               _%tl4954950412%_
                               _%__splice8548185482%_
                               _%target4955050415%_
                               _%tl4955250418%_)
                              (if (gx#stx-pair? _%hd4953350359%_)
                                  (let ((_%e4966249816%_
                                         (gx#syntax-e _%hd4953350359%_)))
                                    (let ((_%tl4966449823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966249816%_)))
                                          (_%hd4966349820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966249816%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))))
                      (if (gx#stx-pair? _%hd4953350359%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4953350359%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                  (if (gx#stx-pair? _%hd4953350359%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4953350359%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (if (gx#stx-pair/null? _%tl4953150352%_)
                              (let ((_%__splice8549785498%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4953150352%_
                                      '0)))
                                (let ((_%tl4966749829%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '1)))
                                      (_%target4966549826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4966749829%_)
                                      (_%__match8578385784%_
                                       _%e4952650335%_
                                       _%hd4952750339%_
                                       _%tl4952850342%_
                                       _%e4952950345%_
                                       _%hd4953050349%_
                                       _%tl4953150352%_
                                       _%e4953250355%_
                                       _%hd4953350359%_
                                       _%tl4953450362%_
                                       _%e4966249816%_
                                       _%hd4966349820%_
                                       _%tl4966449823%_
                                       _%__splice8549785498%_
                                       _%target4966549826%_
                                       _%tl4966749829%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4953650369%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91462_|
                                                           _%hd4953650369%_)
                                                          (if (gx#stx-null?
                                                               _%tl4954650402%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4953150352%_)
                          (let ((_%__splice8549385494%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4953150352%_
                                  '0)))
                            (let ((_%tl4964249971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549385494%_ '1)))
                                  (_%target4964049968%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549385494%_
                                      '0))))
                              (if (gx#stx-null? _%tl4964249971%_)
                                  (_%__match8575185752%_
                                   _%e4952650335%_
                                   _%hd4952750339%_
                                   _%tl4952850342%_
                                   _%e4952950345%_
                                   _%hd4953050349%_
                                   _%tl4953150352%_
                                   _%e4953250355%_
                                   _%hd4953350359%_
                                   _%tl4953450362%_
                                   _%e4953550365%_
                                   _%hd4953650369%_
                                   _%tl4953750372%_
                                   _%e4953850375%_
                                   _%hd4953950379%_
                                   _%tl4954050382%_
                                   _%e4954150385%_
                                   _%hd4954250389%_
                                   _%tl4954350392%_
                                   _%e4954450395%_
                                   _%hd4954550399%_
                                   _%tl4954650402%_
                                   _%__splice8549385494%_
                                   _%target4964049968%_
                                   _%tl4964249971%_)
                                  (if (gx#stx-pair? _%hd4953350359%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4953350359%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))
                          (if (gx#stx-pair? _%hd4953350359%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4953350359%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                      (if (gx#stx-pair? _%hd4953350359%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4953350359%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (if (gx#stx-pair/null? _%tl4953150352%_)
                                  (let ((_%__splice8549785498%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4953150352%_
                                          '0)))
                                    (let ((_%tl4966749829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '1)))
                                          (_%target4966549826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4966749829%_)
                                          (_%__match8578385784%_
                                           _%e4952650335%_
                                           _%hd4952750339%_
                                           _%tl4952850342%_
                                           _%e4952950345%_
                                           _%hd4953050349%_
                                           _%tl4953150352%_
                                           _%e4953250355%_
                                           _%hd4953350359%_
                                           _%tl4953450362%_
                                           _%e4966249816%_
                                           _%hd4966349820%_
                                           _%tl4966449823%_
                                           _%__splice8549785498%_
                                           _%target4966549826%_
                                           _%tl4966749829%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                  (if (gx#stx-pair? _%hd4953350359%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4953350359%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (if (gx#stx-pair/null? _%tl4953150352%_)
                              (let ((_%__splice8549785498%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4953150352%_
                                      '0)))
                                (let ((_%tl4966749829%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '1)))
                                      (_%target4966549826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4966749829%_)
                                      (_%__match8578385784%_
                                       _%e4952650335%_
                                       _%hd4952750339%_
                                       _%tl4952850342%_
                                       _%e4952950345%_
                                       _%hd4953050349%_
                                       _%tl4953150352%_
                                       _%e4953250355%_
                                       _%hd4953350359%_
                                       _%tl4953450362%_
                                       _%e4966249816%_
                                       _%hd4966349820%_
                                       _%tl4966449823%_
                                       _%__splice8549785498%_
                                       _%target4966549826%_
                                       _%tl4966749829%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
              (if (gx#stx-pair? _%hd4953350359%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4953350359%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4953150352%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4953150352%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4952650335%_
                                   _%hd4952750339%_
                                   _%tl4952850342%_
                                   _%e4952950345%_
                                   _%hd4953050349%_
                                   _%tl4953150352%_
                                   _%e4953250355%_
                                   _%hd4953350359%_
                                   _%tl4953450362%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4953350359%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4953350359%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4953150352%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4953150352%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4952650335%_
                       _%hd4952750339%_
                       _%tl4952850342%_
                       _%e4952950345%_
                       _%hd4953050349%_
                       _%tl4953150352%_
                       _%e4953250355%_
                       _%hd4953350359%_
                       _%tl4953450362%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))))
                                  (if (gx#stx-null? _%tl4954050382%_)
                                      (if (gx#stx-pair/null? _%tl4953150352%_)
                                          (let ((_%__splice8548585486%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4953150352%_
                                                  '0)))
                                            (let ((_%tl4958050235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8548585486%_
                                                      '1)))
                                                  (_%target4957850232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8548585486%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4958050235%_)
                                                  (_%__match8565185652%_
                                                   _%e4952650335%_
                                                   _%hd4952750339%_
                                                   _%tl4952850342%_
                                                   _%e4952950345%_
                                                   _%hd4953050349%_
                                                   _%tl4953150352%_
                                                   _%e4953250355%_
                                                   _%hd4953350359%_
                                                   _%tl4953450362%_
                                                   _%e4953550365%_
                                                   _%hd4953650369%_
                                                   _%tl4953750372%_
                                                   _%e4953850375%_
                                                   _%hd4953950379%_
                                                   _%tl4954050382%_
                                                   _%__splice8548585486%_
                                                   _%target4957850232%_
                                                   _%tl4958050235%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4953350359%_)
                                                      (let ((_%e4966249816%_
                                                             (gx#syntax-e
                                                              _%hd4953350359%_)))
                                                        (let ((_%tl4966449823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4966249816%_)))
                      (_%hd4966349820%_
                       (let () (declare (not safe)) (##car _%e4966249816%_))))
                  (let () (declare (not safe)) (_%g4948649695%_))))
              (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4953350359%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4953350359%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                      (if (gx#stx-pair? _%hd4953350359%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4953350359%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4953150352%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4953150352%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4952650335%_
                                                           _%hd4952750339%_
                                                           _%tl4952850342%_
                                                           _%e4952950345%_
                                                           _%hd4953050349%_
                                                           _%tl4953150352%_
                                                           _%e4953250355%_
                                                           _%hd4953350359%_
                                                           _%tl4953450362%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                              (if (gx#stx-null? _%tl4954050382%_)
                                  (if (gx#stx-pair/null? _%tl4953150352%_)
                                      (let ((_%__splice8548585486%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4953150352%_
                                              '0)))
                                        (let ((_%tl4958050235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8548585486%_
                                                  '1)))
                                              (_%target4957850232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8548585486%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4958050235%_)
                                              (_%__match8565185652%_
                                               _%e4952650335%_
                                               _%hd4952750339%_
                                               _%tl4952850342%_
                                               _%e4952950345%_
                                               _%hd4953050349%_
                                               _%tl4953150352%_
                                               _%e4953250355%_
                                               _%hd4953350359%_
                                               _%tl4953450362%_
                                               _%e4953550365%_
                                               _%hd4953650369%_
                                               _%tl4953750372%_
                                               _%e4953850375%_
                                               _%hd4953950379%_
                                               _%tl4954050382%_
                                               _%__splice8548585486%_
                                               _%target4957850232%_
                                               _%tl4958050235%_)
                                              (if (gx#stx-pair?
                                                   _%hd4953350359%_)
                                                  (let ((_%e4966249816%_
                                                         (gx#syntax-e
                                                          _%hd4953350359%_)))
                                                    (let ((_%tl4966449823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4966249816%_)))
                                                          (_%hd4966349820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4966249816%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4948649695%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))))
                                      (if (gx#stx-pair? _%hd4953350359%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4953350359%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                  (if (gx#identifier? _%hd4953650369%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91462_|
                                           _%hd4953650369%_)
                                          (if (gx#stx-pair? _%tl4954050382%_)
                                              (let ((_%e4963449948%_
                                                     (gx#syntax-e
                                                      _%tl4954050382%_)))
                                                (let ((_%tl4963649955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4963449948%_)))
                                                      (_%hd4963549952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4963449948%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4963649955%_)
                                                      (let ((_%e4963749958%_
                                                             (gx#syntax-e
                                                              _%tl4963649955%_)))
                                                        (let ((_%tl4963949965%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4963749958%_)))
                      (_%hd4963849962%_
                       (let () (declare (not safe)) (##car _%e4963749958%_))))
                  (if (gx#stx-null? _%tl4963949965%_)
                      (if (gx#stx-pair/null? _%tl4953150352%_)
                          (let ((_%__splice8549385494%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4953150352%_
                                  '0)))
                            (let ((_%tl4964249971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549385494%_ '1)))
                                  (_%target4964049968%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549385494%_
                                      '0))))
                              (if (gx#stx-null? _%tl4964249971%_)
                                  (_%__match8575185752%_
                                   _%e4952650335%_
                                   _%hd4952750339%_
                                   _%tl4952850342%_
                                   _%e4952950345%_
                                   _%hd4953050349%_
                                   _%tl4953150352%_
                                   _%e4953250355%_
                                   _%hd4953350359%_
                                   _%tl4953450362%_
                                   _%e4953550365%_
                                   _%hd4953650369%_
                                   _%tl4953750372%_
                                   _%e4953850375%_
                                   _%hd4953950379%_
                                   _%tl4954050382%_
                                   _%e4963449948%_
                                   _%hd4963549952%_
                                   _%tl4963649955%_
                                   _%e4963749958%_
                                   _%hd4963849962%_
                                   _%tl4963949965%_
                                   _%__splice8549385494%_
                                   _%target4964049968%_
                                   _%tl4964249971%_)
                                  (if (gx#stx-pair? _%hd4953350359%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4953350359%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))
                          (if (gx#stx-pair? _%hd4953350359%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4953350359%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                      (if (gx#stx-pair? _%hd4953350359%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4953350359%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (if (gx#stx-pair/null? _%tl4953150352%_)
                                  (let ((_%__splice8549785498%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4953150352%_
                                          '0)))
                                    (let ((_%tl4966749829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '1)))
                                          (_%target4966549826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4966749829%_)
                                          (_%__match8578385784%_
                                           _%e4952650335%_
                                           _%hd4952750339%_
                                           _%tl4952850342%_
                                           _%e4952950345%_
                                           _%hd4953050349%_
                                           _%tl4953150352%_
                                           _%e4953250355%_
                                           _%hd4953350359%_
                                           _%tl4953450362%_
                                           _%e4966249816%_
                                           _%hd4966349820%_
                                           _%tl4966449823%_
                                           _%__splice8549785498%_
                                           _%target4966549826%_
                                           _%tl4966749829%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_))))))
              (if (gx#stx-pair? _%hd4953350359%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4953350359%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4953150352%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4953150352%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4952650335%_
                                   _%hd4952750339%_
                                   _%tl4952850342%_
                                   _%e4952950345%_
                                   _%hd4953050349%_
                                   _%tl4953150352%_
                                   _%e4953250355%_
                                   _%hd4953350359%_
                                   _%tl4953450362%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4953350359%_)
                                                  (let ((_%e4966249816%_
                                                         (gx#syntax-e
                                                          _%hd4953350359%_)))
                                                    (let ((_%tl4966449823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4966249816%_)))
                                                          (_%hd4966349820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4966249816%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4953150352%_)
                                                          (let ((_%__splice8549785498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4953150352%_ '0)))
                    (let ((_%tl4966749829%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '1)))
                          (_%target4966549826%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '0))))
                      (if (gx#stx-null? _%tl4966749829%_)
                          (_%__match8578385784%_
                           _%e4952650335%_
                           _%hd4952750339%_
                           _%tl4952850342%_
                           _%e4952950345%_
                           _%hd4953050349%_
                           _%tl4953150352%_
                           _%e4953250355%_
                           _%hd4953350359%_
                           _%tl4953450362%_
                           _%e4966249816%_
                           _%hd4966349820%_
                           _%tl4966449823%_
                           _%__splice8549785498%_
                           _%target4966549826%_
                           _%tl4966749829%_)
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))
                                          (if (gx#stx-pair? _%hd4953350359%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4953350359%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4953150352%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4953150352%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4952650335%_
                       _%hd4952750339%_
                       _%tl4952850342%_
                       _%e4952950345%_
                       _%hd4953050349%_
                       _%tl4953150352%_
                       _%e4953250355%_
                       _%hd4953350359%_
                       _%tl4953450362%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                      (if (gx#stx-pair? _%hd4953350359%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4953350359%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4953150352%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4953150352%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4952650335%_
                                                           _%hd4952750339%_
                                                           _%tl4952850342%_
                                                           _%e4952950345%_
                                                           _%hd4953050349%_
                                                           _%tl4953150352%_
                                                           _%e4953250355%_
                                                           _%hd4953350359%_
                                                           _%tl4953450362%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))))
                          (if (gx#stx-null? _%tl4954050382%_)
                              (if (gx#stx-pair/null? _%tl4953150352%_)
                                  (let ((_%__splice8548585486%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4953150352%_
                                          '0)))
                                    (let ((_%tl4958050235%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8548585486%_
                                              '1)))
                                          (_%target4957850232%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8548585486%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4958050235%_)
                                          (_%__match8565185652%_
                                           _%e4952650335%_
                                           _%hd4952750339%_
                                           _%tl4952850342%_
                                           _%e4952950345%_
                                           _%hd4953050349%_
                                           _%tl4953150352%_
                                           _%e4953250355%_
                                           _%hd4953350359%_
                                           _%tl4953450362%_
                                           _%e4953550365%_
                                           _%hd4953650369%_
                                           _%tl4953750372%_
                                           _%e4953850375%_
                                           _%hd4953950379%_
                                           _%tl4954050382%_
                                           _%__splice8548585486%_
                                           _%target4957850232%_
                                           _%tl4958050235%_)
                                          (if (gx#stx-pair? _%hd4953350359%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4953350359%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))))
                                  (if (gx#stx-pair? _%hd4953350359%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4953350359%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                              (if (gx#identifier? _%hd4953650369%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91462_|
                                       _%hd4953650369%_)
                                      (if (gx#stx-pair? _%tl4954050382%_)
                                          (let ((_%e4963449948%_
                                                 (gx#syntax-e
                                                  _%tl4954050382%_)))
                                            (let ((_%tl4963649955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4963449948%_)))
                                                  (_%hd4963549952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4963449948%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4963649955%_)
                                                  (let ((_%e4963749958%_
                                                         (gx#syntax-e
                                                          _%tl4963649955%_)))
                                                    (let ((_%tl4963949965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4963749958%_)))
                                                          (_%hd4963849962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4963749958%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4963949965%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4953150352%_)
                                                              (let ((_%__splice8549385494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4953150352%_
                              '0)))
                        (let ((_%tl4964249971%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549385494%_ '1)))
                              (_%target4964049968%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549385494%_ '0))))
                          (if (gx#stx-null? _%tl4964249971%_)
                              (_%__match8575185752%_
                               _%e4952650335%_
                               _%hd4952750339%_
                               _%tl4952850342%_
                               _%e4952950345%_
                               _%hd4953050349%_
                               _%tl4953150352%_
                               _%e4953250355%_
                               _%hd4953350359%_
                               _%tl4953450362%_
                               _%e4953550365%_
                               _%hd4953650369%_
                               _%tl4953750372%_
                               _%e4953850375%_
                               _%hd4953950379%_
                               _%tl4954050382%_
                               _%e4963449948%_
                               _%hd4963549952%_
                               _%tl4963649955%_
                               _%e4963749958%_
                               _%hd4963849962%_
                               _%tl4963949965%_
                               _%__splice8549385494%_
                               _%target4964049968%_
                               _%tl4964249971%_)
                              (if (gx#stx-pair? _%hd4953350359%_)
                                  (let ((_%e4966249816%_
                                         (gx#syntax-e _%hd4953350359%_)))
                                    (let ((_%tl4966449823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966249816%_)))
                                          (_%hd4966349820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966249816%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))))
                      (if (gx#stx-pair? _%hd4953350359%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4953350359%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                  (if (gx#stx-pair? _%hd4953350359%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4953350359%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (if (gx#stx-pair/null? _%tl4953150352%_)
                              (let ((_%__splice8549785498%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4953150352%_
                                      '0)))
                                (let ((_%tl4966749829%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '1)))
                                      (_%target4966549826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4966749829%_)
                                      (_%__match8578385784%_
                                       _%e4952650335%_
                                       _%hd4952750339%_
                                       _%tl4952850342%_
                                       _%e4952950345%_
                                       _%hd4953050349%_
                                       _%tl4953150352%_
                                       _%e4953250355%_
                                       _%hd4953350359%_
                                       _%tl4953450362%_
                                       _%e4966249816%_
                                       _%hd4966349820%_
                                       _%tl4966449823%_
                                       _%__splice8549785498%_
                                       _%target4966549826%_
                                       _%tl4966749829%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4953350359%_)
                                                      (let ((_%e4966249816%_
                                                             (gx#syntax-e
                                                              _%hd4953350359%_)))
                                                        (let ((_%tl4966449823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4966249816%_)))
                      (_%hd4966349820%_
                       (let () (declare (not safe)) (##car _%e4966249816%_))))
                  (if (gx#stx-pair/null? _%tl4953150352%_)
                      (let ((_%__splice8549785498%_
                             (gx#syntax-split-splice->vector
                              _%tl4953150352%_
                              '0)))
                        (let ((_%tl4966749829%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '1)))
                              (_%target4966549826%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '0))))
                          (if (gx#stx-null? _%tl4966749829%_)
                              (_%__match8578385784%_
                               _%e4952650335%_
                               _%hd4952750339%_
                               _%tl4952850342%_
                               _%e4952950345%_
                               _%hd4953050349%_
                               _%tl4953150352%_
                               _%e4953250355%_
                               _%hd4953350359%_
                               _%tl4953450362%_
                               _%e4966249816%_
                               _%hd4966349820%_
                               _%tl4966449823%_
                               _%__splice8549785498%_
                               _%target4966549826%_
                               _%tl4966749829%_)
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4953350359%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4953350359%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4953150352%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4953150352%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4952650335%_
                       _%hd4952750339%_
                       _%tl4952850342%_
                       _%e4952950345%_
                       _%hd4953050349%_
                       _%tl4953150352%_
                       _%e4953250355%_
                       _%hd4953350359%_
                       _%tl4953450362%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                      (if (gx#stx-pair? _%hd4953350359%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4953350359%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4953150352%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4953150352%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4952650335%_
                                                           _%hd4952750339%_
                                                           _%tl4952850342%_
                                                           _%e4952950345%_
                                                           _%hd4953050349%_
                                                           _%tl4953150352%_
                                                           _%e4953250355%_
                                                           _%hd4953350359%_
                                                           _%tl4953450362%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                  (if (gx#stx-pair? _%hd4953350359%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4953350359%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4953150352%_)
                                              (let ((_%__splice8549785498%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4953150352%_
                                                      '0)))
                                                (let ((_%tl4966749829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '1)))
                                                      (_%target4966549826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4966749829%_)
                                                      (_%__match8578385784%_
                                                       _%e4952650335%_
                                                       _%hd4952750339%_
                                                       _%tl4952850342%_
                                                       _%e4952950345%_
                                                       _%hd4953050349%_
                                                       _%tl4953150352%_
                                                       _%e4953250355%_
                                                       _%hd4953350359%_
                                                       _%tl4953450362%_
                                                       _%e4966249816%_
                                                       _%hd4966349820%_
                                                       _%tl4966449823%_
                                                       _%__splice8549785498%_
                                                       _%target4966549826%_
                                                       _%tl4966749829%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4948649695%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))))
                   (_%__match8554985550%_
                    (lambda (_%e4949350511%_
                             _%hd4949450515%_
                             _%tl4949550518%_
                             _%e4949650521%_
                             _%hd4949750525%_
                             _%tl4949850528%_
                             _%e4949950531%_
                             _%hd4950050535%_
                             _%tl4950150538%_
                             _%e4950250541%_
                             _%hd4950350545%_
                             _%tl4950450548%_
                             _%e4950550551%_
                             _%hd4950650555%_
                             _%tl4950750558%_
                             _%e4950850561%_
                             _%hd4950950565%_
                             _%tl4951050568%_
                             _%__splice8547785478%_
                             _%target4951150571%_
                             _%tl4951350574%_)
                      (letrec ((_%loop4951450577%_
                                (lambda (_%hd4951250581%_ _%body4951850584%_)
                                  (if (gx#stx-pair? _%hd4951250581%_)
                                      (let ((_%e4951550587%_
                                             (gx#syntax-e _%hd4951250581%_)))
                                        (let ((_%lp-tl4951750594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4951550587%_)))
                                              (_%lp-hd4951650591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4951550587%_))))
                                          (_%loop4951450577%_
                                           _%lp-tl4951750594%_
                                           (cons _%lp-hd4951650591%_
                                                 _%body4951850584%_))))
                                      (let ((_%body4951950597%_
                                             (reverse _%body4951850584%_)))
                                        (let ((_%L50601%_ _%body4951950597%_)
                                              (_%L50603%_ _%hd4950950565%_)
                                              (_%L50604%_ _%hd4950650555%_)
                                              (_%L50605%_ _%hd4950350545%_)
                                              (_%L50606%_ _%hd4950050535%_))
                                          (if (and (gx#identifier? _%L50606%_)
                                                   (gx#identifier? _%L50604%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50604%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50604%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50604%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50604%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L50604%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8547585476%_
                                               _%L50601%_
                                               _%L50603%_
                                               _%L50604%_
                                               _%L50605%_
                                               _%L50606%_)
                                              (_%__match8557985580%_
                                               _%e4949350511%_
                                               _%hd4949450515%_
                                               _%tl4949550518%_
                                               _%e4949650521%_
                                               _%hd4949750525%_
                                               _%tl4949850528%_
                                               _%e4949950531%_
                                               _%hd4950050535%_
                                               _%tl4950150538%_
                                               _%e4950250541%_
                                               _%hd4950350545%_
                                               _%tl4950450548%_
                                               _%e4950550551%_
                                               _%hd4950650555%_
                                               _%tl4950750558%_))))))))
                        (_%loop4951450577%_ _%target4951150571%_ '())))))
              (if (gx#stx-pair? _%__stx8547285473%_)
                  (let ((_%e4949350511%_ (gx#syntax-e _%__stx8547285473%_)))
                    (let ((_%tl4949550518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4949350511%_)))
                          (_%hd4949450515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4949350511%_))))
                      (if (gx#stx-pair? _%tl4949550518%_)
                          (let ((_%e4949650521%_
                                 (gx#syntax-e _%tl4949550518%_)))
                            (let ((_%tl4949850528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4949650521%_)))
                                  (_%hd4949750525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4949650521%_))))
                              (if (gx#stx-pair? _%hd4949750525%_)
                                  (let ((_%e4949950531%_
                                         (gx#syntax-e _%hd4949750525%_)))
                                    (let ((_%tl4950150538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4949950531%_)))
                                          (_%hd4950050535%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4949950531%_))))
                                      (if (gx#stx-pair? _%tl4950150538%_)
                                          (let ((_%e4950250541%_
                                                 (gx#syntax-e
                                                  _%tl4950150538%_)))
                                            (let ((_%tl4950450548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4950250541%_)))
                                                  (_%hd4950350545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4950250541%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4950450548%_)
                                                  (let ((_%e4950550551%_
                                                         (gx#syntax-e
                                                          _%tl4950450548%_)))
                                                    (let ((_%tl4950750558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4950550551%_)))
                                                          (_%hd4950650555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4950550551%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4950750558%_)
                                                          (let ((_%e4950850561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4950750558%_)))
                    (let ((_%tl4951050568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4950850561%_)))
                          (_%hd4950950565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4950850561%_))))
                      (if (gx#stx-null? _%tl4951050568%_)
                          (if (gx#stx-pair/null? _%tl4949850528%_)
                              (let ((_%__splice8547785478%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4949850528%_
                                      '0)))
                                (let ((_%tl4951350574%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8547785478%_
                                          '1)))
                                      (_%target4951150571%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8547785478%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4951350574%_)
                                      (_%__match8554985550%_
                                       _%e4949350511%_
                                       _%hd4949450515%_
                                       _%tl4949550518%_
                                       _%e4949650521%_
                                       _%hd4949750525%_
                                       _%tl4949850528%_
                                       _%e4949950531%_
                                       _%hd4950050535%_
                                       _%tl4950150538%_
                                       _%e4950250541%_
                                       _%hd4950350545%_
                                       _%tl4950450548%_
                                       _%e4950550551%_
                                       _%hd4950650555%_
                                       _%tl4950750558%_
                                       _%e4950850561%_
                                       _%hd4950950565%_
                                       _%tl4951050568%_
                                       _%__splice8547785478%_
                                       _%target4951150571%_
                                       _%tl4951350574%_)
                                      (if (gx#stx-pair? _%hd4950050535%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4950050535%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))))
                              (if (gx#stx-pair? _%hd4950050535%_)
                                  (let ((_%e4966249816%_
                                         (gx#syntax-e _%hd4950050535%_)))
                                    (let ((_%tl4966449823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966249816%_)))
                                          (_%hd4966349820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966249816%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                          (if (gx#identifier? _%hd4950650555%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g91463_|
                                   _%hd4950650555%_)
                                  (if (gx#stx-pair? _%tl4951050568%_)
                                      (let ((_%e4954450395%_
                                             (gx#syntax-e _%tl4951050568%_)))
                                        (let ((_%tl4954650402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4954450395%_)))
                                              (_%hd4954550399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4954450395%_))))
                                          (if (gx#stx-pair? _%tl4954650402%_)
                                              (let ((_%e4954750405%_
                                                     (gx#syntax-e
                                                      _%tl4954650402%_)))
                                                (let ((_%tl4954950412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4954750405%_)))
                                                      (_%hd4954850409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4954750405%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4954950412%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4949850528%_)
                                                          (let ((_%__splice8548185482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4949850528%_ '0)))
                    (let ((_%tl4955250418%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8548185482%_ '1)))
                          (_%target4955050415%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8548185482%_ '0))))
                      (if (gx#stx-null? _%tl4955250418%_)
                          (_%__match8561185612%_
                           _%e4949350511%_
                           _%hd4949450515%_
                           _%tl4949550518%_
                           _%e4949650521%_
                           _%hd4949750525%_
                           _%tl4949850528%_
                           _%e4949950531%_
                           _%hd4950050535%_
                           _%tl4950150538%_
                           _%e4950250541%_
                           _%hd4950350545%_
                           _%tl4950450548%_
                           _%e4950550551%_
                           _%hd4950650555%_
                           _%tl4950750558%_
                           _%e4950850561%_
                           _%hd4950950565%_
                           _%tl4951050568%_
                           _%e4954450395%_
                           _%hd4954550399%_
                           _%tl4954650402%_
                           _%e4954750405%_
                           _%hd4954850409%_
                           _%tl4954950412%_
                           _%__splice8548185482%_
                           _%target4955050415%_
                           _%tl4955250418%_)
                          (if (gx#stx-pair? _%hd4950050535%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4950050535%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_))))))
                  (if (gx#stx-pair? _%hd4950050535%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
              (if (gx#stx-pair? _%hd4950050535%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4949850528%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4949850528%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4949350511%_
                                   _%hd4949450515%_
                                   _%tl4949550518%_
                                   _%e4949650521%_
                                   _%hd4949750525%_
                                   _%tl4949850528%_
                                   _%e4949950531%_
                                   _%hd4950050535%_
                                   _%tl4950150538%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4950350545%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g91462_|
                                                       _%hd4950350545%_)
                                                      (if (gx#stx-null?
                                                           _%tl4954650402%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4949850528%_)
                                                              (let ((_%__splice8549385494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4949850528%_
                              '0)))
                        (let ((_%tl4964249971%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549385494%_ '1)))
                              (_%target4964049968%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549385494%_ '0))))
                          (if (gx#stx-null? _%tl4964249971%_)
                              (_%__match8575185752%_
                               _%e4949350511%_
                               _%hd4949450515%_
                               _%tl4949550518%_
                               _%e4949650521%_
                               _%hd4949750525%_
                               _%tl4949850528%_
                               _%e4949950531%_
                               _%hd4950050535%_
                               _%tl4950150538%_
                               _%e4950250541%_
                               _%hd4950350545%_
                               _%tl4950450548%_
                               _%e4950550551%_
                               _%hd4950650555%_
                               _%tl4950750558%_
                               _%e4950850561%_
                               _%hd4950950565%_
                               _%tl4951050568%_
                               _%e4954450395%_
                               _%hd4954550399%_
                               _%tl4954650402%_
                               _%__splice8549385494%_
                               _%target4964049968%_
                               _%tl4964249971%_)
                              (if (gx#stx-pair? _%hd4950050535%_)
                                  (let ((_%e4966249816%_
                                         (gx#syntax-e _%hd4950050535%_)))
                                    (let ((_%tl4966449823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966249816%_)))
                                          (_%hd4966349820%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966249816%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))))
                      (if (gx#stx-pair? _%hd4950050535%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4950050535%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                  (if (gx#stx-pair? _%hd4950050535%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (if (gx#stx-pair/null? _%tl4949850528%_)
                              (let ((_%__splice8549785498%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4949850528%_
                                      '0)))
                                (let ((_%tl4966749829%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '1)))
                                      (_%target4966549826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8549785498%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4966749829%_)
                                      (_%__match8578385784%_
                                       _%e4949350511%_
                                       _%hd4949450515%_
                                       _%tl4949550518%_
                                       _%e4949650521%_
                                       _%hd4949750525%_
                                       _%tl4949850528%_
                                       _%e4949950531%_
                                       _%hd4950050535%_
                                       _%tl4950150538%_
                                       _%e4966249816%_
                                       _%hd4966349820%_
                                       _%tl4966449823%_
                                       _%__splice8549785498%_
                                       _%target4966549826%_
                                       _%tl4966749829%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
              (if (gx#stx-pair? _%hd4950050535%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4949850528%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4949850528%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4949350511%_
                                   _%hd4949450515%_
                                   _%tl4949550518%_
                                   _%e4949650521%_
                                   _%hd4949750525%_
                                   _%tl4949850528%_
                                   _%e4949950531%_
                                   _%hd4950050535%_
                                   _%tl4950150538%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4950050535%_)
                                                      (let ((_%e4966249816%_
                                                             (gx#syntax-e
                                                              _%hd4950050535%_)))
                                                        (let ((_%tl4966449823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4966249816%_)))
                      (_%hd4966349820%_
                       (let () (declare (not safe)) (##car _%e4966249816%_))))
                  (if (gx#stx-pair/null? _%tl4949850528%_)
                      (let ((_%__splice8549785498%_
                             (gx#syntax-split-splice->vector
                              _%tl4949850528%_
                              '0)))
                        (let ((_%tl4966749829%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '1)))
                              (_%target4966549826%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '0))))
                          (if (gx#stx-null? _%tl4966749829%_)
                              (_%__match8578385784%_
                               _%e4949350511%_
                               _%hd4949450515%_
                               _%tl4949550518%_
                               _%e4949650521%_
                               _%hd4949750525%_
                               _%tl4949850528%_
                               _%e4949950531%_
                               _%hd4950050535%_
                               _%tl4950150538%_
                               _%e4966249816%_
                               _%hd4966349820%_
                               _%tl4966449823%_
                               _%__splice8549785498%_
                               _%target4966549826%_
                               _%tl4966749829%_)
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4950050535%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4950050535%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4949850528%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4949850528%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4949350511%_
                                                           _%hd4949450515%_
                                                           _%tl4949550518%_
                                                           _%e4949650521%_
                                                           _%hd4949750525%_
                                                           _%tl4949850528%_
                                                           _%e4949950531%_
                                                           _%hd4950050535%_
                                                           _%tl4950150538%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                  (if (gx#identifier? _%hd4950350545%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91462_|
                                           _%hd4950350545%_)
                                          (if (gx#stx-pair? _%tl4951050568%_)
                                              (let ((_%e4963749958%_
                                                     (gx#syntax-e
                                                      _%tl4951050568%_)))
                                                (let ((_%tl4963949965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4963749958%_)))
                                                      (_%hd4963849962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4963749958%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4963949965%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4949850528%_)
                                                          (let ((_%__splice8549385494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4949850528%_ '0)))
                    (let ((_%tl4964249971%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549385494%_ '1)))
                          (_%target4964049968%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549385494%_ '0))))
                      (if (gx#stx-null? _%tl4964249971%_)
                          (_%__match8575185752%_
                           _%e4949350511%_
                           _%hd4949450515%_
                           _%tl4949550518%_
                           _%e4949650521%_
                           _%hd4949750525%_
                           _%tl4949850528%_
                           _%e4949950531%_
                           _%hd4950050535%_
                           _%tl4950150538%_
                           _%e4950250541%_
                           _%hd4950350545%_
                           _%tl4950450548%_
                           _%e4950550551%_
                           _%hd4950650555%_
                           _%tl4950750558%_
                           _%e4950850561%_
                           _%hd4950950565%_
                           _%tl4951050568%_
                           _%e4963749958%_
                           _%hd4963849962%_
                           _%tl4963949965%_
                           _%__splice8549385494%_
                           _%target4964049968%_
                           _%tl4964249971%_)
                          (if (gx#stx-pair? _%hd4950050535%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4950050535%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_))))))
                  (if (gx#stx-pair? _%hd4950050535%_)
                      (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                        (let ((_%tl4966449823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4966249816%_)))
                              (_%hd4966349820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4966249816%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
              (if (gx#stx-pair? _%hd4950050535%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (if (gx#stx-pair/null? _%tl4949850528%_)
                          (let ((_%__splice8549785498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4949850528%_
                                  '0)))
                            (let ((_%tl4966749829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8549785498%_ '1)))
                                  (_%target4966549826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8549785498%_
                                      '0))))
                              (if (gx#stx-null? _%tl4966749829%_)
                                  (_%__match8578385784%_
                                   _%e4949350511%_
                                   _%hd4949450515%_
                                   _%tl4949550518%_
                                   _%e4949650521%_
                                   _%hd4949750525%_
                                   _%tl4949850528%_
                                   _%e4949950531%_
                                   _%hd4950050535%_
                                   _%tl4950150538%_
                                   _%e4966249816%_
                                   _%hd4966349820%_
                                   _%tl4966449823%_
                                   _%__splice8549785498%_
                                   _%target4966549826%_
                                   _%tl4966749829%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4950050535%_)
                                                  (let ((_%e4966249816%_
                                                         (gx#syntax-e
                                                          _%hd4950050535%_)))
                                                    (let ((_%tl4966449823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4966249816%_)))
                                                          (_%hd4966349820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4966249816%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4949850528%_)
                                                          (let ((_%__splice8549785498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4949850528%_ '0)))
                    (let ((_%tl4966749829%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '1)))
                          (_%target4966549826%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8549785498%_ '0))))
                      (if (gx#stx-null? _%tl4966749829%_)
                          (_%__match8578385784%_
                           _%e4949350511%_
                           _%hd4949450515%_
                           _%tl4949550518%_
                           _%e4949650521%_
                           _%hd4949750525%_
                           _%tl4949850528%_
                           _%e4949950531%_
                           _%hd4950050535%_
                           _%tl4950150538%_
                           _%e4966249816%_
                           _%hd4966349820%_
                           _%tl4966449823%_
                           _%__splice8549785498%_
                           _%target4966549826%_
                           _%tl4966749829%_)
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_))))
                                          (if (gx#stx-pair? _%hd4950050535%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4950050535%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4949850528%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4949850528%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4949350511%_
                       _%hd4949450515%_
                       _%tl4949550518%_
                       _%e4949650521%_
                       _%hd4949750525%_
                       _%tl4949850528%_
                       _%e4949950531%_
                       _%hd4950050535%_
                       _%tl4950150538%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                      (if (gx#stx-pair? _%hd4950050535%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4950050535%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4949850528%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4949850528%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4949350511%_
                                                           _%hd4949450515%_
                                                           _%tl4949550518%_
                                                           _%e4949650521%_
                                                           _%hd4949750525%_
                                                           _%tl4949850528%_
                                                           _%e4949950531%_
                                                           _%hd4950050535%_
                                                           _%tl4950150538%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                              (if (gx#identifier? _%hd4950350545%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91462_|
                                       _%hd4950350545%_)
                                      (if (gx#stx-pair? _%tl4951050568%_)
                                          (let ((_%e4963749958%_
                                                 (gx#syntax-e
                                                  _%tl4951050568%_)))
                                            (let ((_%tl4963949965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4963749958%_)))
                                                  (_%hd4963849962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4963749958%_))))
                                              (if (gx#stx-null?
                                                   _%tl4963949965%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4949850528%_)
                                                      (let ((_%__splice8549385494%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4949850528%_
                                                              '0)))
                                                        (let ((_%tl4964249971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549385494%_ '1)))
                      (_%target4964049968%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549385494%_ '0))))
                  (if (gx#stx-null? _%tl4964249971%_)
                      (_%__match8575185752%_
                       _%e4949350511%_
                       _%hd4949450515%_
                       _%tl4949550518%_
                       _%e4949650521%_
                       _%hd4949750525%_
                       _%tl4949850528%_
                       _%e4949950531%_
                       _%hd4950050535%_
                       _%tl4950150538%_
                       _%e4950250541%_
                       _%hd4950350545%_
                       _%tl4950450548%_
                       _%e4950550551%_
                       _%hd4950650555%_
                       _%tl4950750558%_
                       _%e4950850561%_
                       _%hd4950950565%_
                       _%tl4951050568%_
                       _%e4963749958%_
                       _%hd4963849962%_
                       _%tl4963949965%_
                       _%__splice8549385494%_
                       _%target4964049968%_
                       _%tl4964249971%_)
                      (if (gx#stx-pair? _%hd4950050535%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4950050535%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                          (let () (declare (not safe)) (_%g4948649695%_))))))
              (if (gx#stx-pair? _%hd4950050535%_)
                  (let ((_%e4966249816%_ (gx#syntax-e _%hd4950050535%_)))
                    (let ((_%tl4966449823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966249816%_)))
                          (_%hd4966349820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966249816%_))))
                      (let () (declare (not safe)) (_%g4948649695%_))))
                  (let () (declare (not safe)) (_%g4948649695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4950050535%_)
                                                      (let ((_%e4966249816%_
                                                             (gx#syntax-e
                                                              _%hd4950050535%_)))
                                                        (let ((_%tl4966449823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4966249816%_)))
                      (_%hd4966349820%_
                       (let () (declare (not safe)) (##car _%e4966249816%_))))
                  (if (gx#stx-pair/null? _%tl4949850528%_)
                      (let ((_%__splice8549785498%_
                             (gx#syntax-split-splice->vector
                              _%tl4949850528%_
                              '0)))
                        (let ((_%tl4966749829%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '1)))
                              (_%target4966549826%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '0))))
                          (if (gx#stx-null? _%tl4966749829%_)
                              (_%__match8578385784%_
                               _%e4949350511%_
                               _%hd4949450515%_
                               _%tl4949550518%_
                               _%e4949650521%_
                               _%hd4949750525%_
                               _%tl4949850528%_
                               _%e4949950531%_
                               _%hd4950050535%_
                               _%tl4950150538%_
                               _%e4966249816%_
                               _%hd4966349820%_
                               _%tl4966449823%_
                               _%__splice8549785498%_
                               _%target4966549826%_
                               _%tl4966749829%_)
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4950050535%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4950050535%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4949850528%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4949850528%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4949350511%_
                       _%hd4949450515%_
                       _%tl4949550518%_
                       _%e4949650521%_
                       _%hd4949750525%_
                       _%tl4949850528%_
                       _%e4949950531%_
                       _%hd4950050535%_
                       _%tl4950150538%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))
                                      (if (gx#stx-pair? _%hd4950050535%_)
                                          (let ((_%e4966249816%_
                                                 (gx#syntax-e
                                                  _%hd4950050535%_)))
                                            (let ((_%tl4966449823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966249816%_)))
                                                  (_%hd4966349820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966249816%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4949850528%_)
                                                  (let ((_%__splice8549785498%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4949850528%_
                                                          '0)))
                                                    (let ((_%tl4966749829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '1)))
                                                          (_%target4966549826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8549785498%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4966749829%_)
                                                          (_%__match8578385784%_
                                                           _%e4949350511%_
                                                           _%hd4949450515%_
                                                           _%tl4949550518%_
                                                           _%e4949650521%_
                                                           _%hd4949750525%_
                                                           _%tl4949850528%_
                                                           _%e4949950531%_
                                                           _%hd4950050535%_
                                                           _%tl4950150538%_
                                                           _%e4966249816%_
                                                           _%hd4966349820%_
                                                           _%tl4966449823%_
                                                           _%__splice8549785498%_
                                                           _%target4966549826%_
                                                           _%tl4966749829%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4948649695%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                  (if (gx#stx-pair? _%hd4950050535%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4950050535%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4949850528%_)
                                              (let ((_%__splice8549785498%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4949850528%_
                                                      '0)))
                                                (let ((_%tl4966749829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '1)))
                                                      (_%target4966549826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8549785498%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4966749829%_)
                                                      (_%__match8578385784%_
                                                       _%e4949350511%_
                                                       _%hd4949450515%_
                                                       _%tl4949550518%_
                                                       _%e4949650521%_
                                                       _%hd4949750525%_
                                                       _%tl4949850528%_
                                                       _%e4949950531%_
                                                       _%hd4950050535%_
                                                       _%tl4950150538%_
                                                       _%e4966249816%_
                                                       _%hd4966349820%_
                                                       _%tl4966449823%_
                                                       _%__splice8549785498%_
                                                       _%target4966549826%_
                                                       _%tl4966749829%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4948649695%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))))
                  (if (gx#stx-null? _%tl4950750558%_)
                      (if (gx#stx-pair/null? _%tl4949850528%_)
                          (let ((_%__splice8548585486%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4949850528%_
                                  '0)))
                            (let ((_%tl4958050235%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8548585486%_ '1)))
                                  (_%target4957850232%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8548585486%_
                                      '0))))
                              (if (gx#stx-null? _%tl4958050235%_)
                                  (_%__match8565185652%_
                                   _%e4949350511%_
                                   _%hd4949450515%_
                                   _%tl4949550518%_
                                   _%e4949650521%_
                                   _%hd4949750525%_
                                   _%tl4949850528%_
                                   _%e4949950531%_
                                   _%hd4950050535%_
                                   _%tl4950150538%_
                                   _%e4950250541%_
                                   _%hd4950350545%_
                                   _%tl4950450548%_
                                   _%e4950550551%_
                                   _%hd4950650555%_
                                   _%tl4950750558%_
                                   _%__splice8548585486%_
                                   _%target4957850232%_
                                   _%tl4958050235%_)
                                  (if (gx#stx-pair? _%hd4950050535%_)
                                      (let ((_%e4966249816%_
                                             (gx#syntax-e _%hd4950050535%_)))
                                        (let ((_%tl4966449823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4966249816%_)))
                                              (_%hd4966349820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4966249816%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))
                          (if (gx#stx-pair? _%hd4950050535%_)
                              (let ((_%e4966249816%_
                                     (gx#syntax-e _%hd4950050535%_)))
                                (let ((_%tl4966449823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4966249816%_)))
                                      (_%hd4966349820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4966249816%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_))))
                              (let () (declare (not safe)) (_%g4948649695%_))))
                      (if (gx#stx-pair? _%hd4950050535%_)
                          (let ((_%e4966249816%_
                                 (gx#syntax-e _%hd4950050535%_)))
                            (let ((_%tl4966449823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966249816%_)))
                                  (_%hd4966349820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966249816%_))))
                              (if (gx#stx-pair/null? _%tl4949850528%_)
                                  (let ((_%__splice8549785498%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4949850528%_
                                          '0)))
                                    (let ((_%tl4966749829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '1)))
                                          (_%target4966549826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8549785498%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4966749829%_)
                                          (_%__match8578385784%_
                                           _%e4949350511%_
                                           _%hd4949450515%_
                                           _%tl4949550518%_
                                           _%e4949650521%_
                                           _%hd4949750525%_
                                           _%tl4949850528%_
                                           _%e4949950531%_
                                           _%hd4950050535%_
                                           _%tl4950150538%_
                                           _%e4966249816%_
                                           _%hd4966349820%_
                                           _%tl4966449823%_
                                           _%__splice8549785498%_
                                           _%target4966549826%_
                                           _%tl4966749829%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4948649695%_)))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4950050535%_)
                                                      (let ((_%e4966249816%_
                                                             (gx#syntax-e
                                                              _%hd4950050535%_)))
                                                        (let ((_%tl4966449823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4966249816%_)))
                      (_%hd4966349820%_
                       (let () (declare (not safe)) (##car _%e4966249816%_))))
                  (if (gx#stx-pair/null? _%tl4949850528%_)
                      (let ((_%__splice8549785498%_
                             (gx#syntax-split-splice->vector
                              _%tl4949850528%_
                              '0)))
                        (let ((_%tl4966749829%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '1)))
                              (_%target4966549826%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8549785498%_ '0))))
                          (if (gx#stx-null? _%tl4966749829%_)
                              (_%__match8578385784%_
                               _%e4949350511%_
                               _%hd4949450515%_
                               _%tl4949550518%_
                               _%e4949650521%_
                               _%hd4949750525%_
                               _%tl4949850528%_
                               _%e4949950531%_
                               _%hd4950050535%_
                               _%tl4950150538%_
                               _%e4966249816%_
                               _%hd4966349820%_
                               _%tl4966449823%_
                               _%__splice8549785498%_
                               _%target4966549826%_
                               _%tl4966749829%_)
                              (let ()
                                (declare (not safe))
                                (_%g4948649695%_)))))
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4950050535%_)
                                              (let ((_%e4966249816%_
                                                     (gx#syntax-e
                                                      _%hd4950050535%_)))
                                                (let ((_%tl4966449823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4966249816%_)))
                                                      (_%hd4966349820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4966249816%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4949850528%_)
                                                      (let ((_%__splice8549785498%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4949850528%_
                                                              '0)))
                                                        (let ((_%tl4966749829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '1)))
                      (_%target4966549826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8549785498%_ '0))))
                  (if (gx#stx-null? _%tl4966749829%_)
                      (_%__match8578385784%_
                       _%e4949350511%_
                       _%hd4949450515%_
                       _%tl4949550518%_
                       _%e4949650521%_
                       _%hd4949750525%_
                       _%tl4949850528%_
                       _%e4949950531%_
                       _%hd4950050535%_
                       _%tl4950150538%_
                       _%e4966249816%_
                       _%hd4966349820%_
                       _%tl4966449823%_
                       _%__splice8549785498%_
                       _%target4966549826%_
                       _%tl4966749829%_)
                      (let () (declare (not safe)) (_%g4948649695%_)))))
              (let () (declare (not safe)) (_%g4948649695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4948649695%_))))))
                                  (if (gx#stx-null? _%hd4949750525%_)
                                      (if (gx#stx-pair/null? _%tl4949850528%_)
                                          (let ((_%__splice8550185502%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4949850528%_
                                                  '0)))
                                            (let ((_%tl4968349725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8550185502%_
                                                      '1)))
                                                  (_%target4968149722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8550185502%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4968349725%_)
                                                  (_%__match8580585806%_
                                                   _%e4949350511%_
                                                   _%hd4949450515%_
                                                   _%tl4949550518%_
                                                   _%e4949650521%_
                                                   _%hd4949750525%_
                                                   _%tl4949850528%_
                                                   _%__splice8550185502%_
                                                   _%target4968149722%_
                                                   _%tl4968349725%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4948649695%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4948649695%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4948649695%_))))))
                          (let () (declare (not safe)) (_%g4948649695%_)))))
                  (let () (declare (not safe)) (_%g4948649695%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx50669%_)
        (let* ((_%g5067350707%_
                (lambda (_%g5067450703%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5067450703%_)))
               (_%g5067250830%_
                (lambda (_%g5067450711%_)
                  (if (gx#stx-pair? _%g5067450711%_)
                      (let ((_%e5067850714%_ (gx#syntax-e _%g5067450711%_)))
                        (let ((_%hd5067950718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5067850714%_)))
                              (_%tl5068050721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5067850714%_))))
                          (if (gx#stx-pair? _%tl5068050721%_)
                              (let ((_%e5068150724%_
                                     (gx#syntax-e _%tl5068050721%_)))
                                (let ((_%hd5068250728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5068150724%_)))
                                      (_%tl5068350731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5068150724%_))))
                                  (if (gx#stx-pair? _%hd5068250728%_)
                                      (let ((_%e5068450734%_
                                             (gx#syntax-e _%hd5068250728%_)))
                                        (let ((_%hd5068550738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5068450734%_)))
                                              (_%tl5068650741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5068450734%_))))
                                          (if (gx#stx-pair? _%tl5068650741%_)
                                              (let ((_%e5068750744%_
                                                     (gx#syntax-e
                                                      _%tl5068650741%_)))
                                                (let ((_%hd5068850748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5068750744%_)))
                                                      (_%tl5068950751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5068750744%_))))
                                                  (if (gx#identifier?
                                                       _%hd5068850748%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91464_|
                                                           _%hd5068850748%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5068950751%_)
                                                              (let ((_%e5069050754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5068950751%_)))
                        (let ((_%hd5069150758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5069050754%_)))
                              (_%tl5069250761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5069050754%_))))
                          (if (gx#stx-null? _%tl5069250761%_)
                              (if (gx#stx-pair/null? _%tl5068350731%_)
                                  (let ((_g91465_
                                         (gx#syntax-split-splice
                                          _%tl5068350731%_
                                          '0)))
                                    (begin
                                      (let ((_g91466_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g91465_)
                                                   (##values-length _g91465_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g91466_ 2)))
                                            (error "Context expects 2 values"
                                                   _g91466_)))
                                      (let ((_%target5069350764%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g91465_ 0)))
                                            (_%tl5069550767%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g91465_ 1))))
                                        (if (gx#stx-null? _%tl5069550767%_)
                                            (letrec ((_%loop5069650770%_
                                                      (lambda (_%hd5069450774%_
                                                               _%body5070050777%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5069450774%_)
                                                            (let ((_%e5069750780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5069450774%_)))
                      (let ((_%lp-hd5069850784%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5069750780%_)))
                            (_%lp-tl5069950787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5069750780%_))))
                        (_%loop5069650770%_
                         _%lp-tl5069950787%_
                         (cons _%lp-hd5069850784%_ _%body5070050777%_))))
                    (let ((_%body5070150790%_ (reverse _%body5070050777%_)))
                      ((lambda (_%L50794%_ _%L50796%_ _%L50797%_)
                         (if (gx#identifier? _%L50797%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L50796%_
                                               (cons _%L50797%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5082150824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5082250827%_)
                            (cons _%g5082150824%_ _%g5082250827%_))
                          '()
                          _%L50794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L50797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L50796%_ (cons _%L50797%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5067350707%_ _%g5067450711%_)))
                       _%body5070150790%_
                       _%hd5069150758%_
                       _%hd5068550738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5069650770%_
                                               _%target5069350764%_
                                               '()))
                                            (_%g5067350707%_
                                             _%g5067450711%_)))))
                                  (_%g5067350707%_ _%g5067450711%_))
                              (_%g5067350707%_ _%g5067450711%_))))
                      (_%g5067350707%_ _%g5067450711%_))
                  (_%g5067350707%_ _%g5067450711%_))
              (_%g5067350707%_ _%g5067450711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5067350707%_
                                               _%g5067450711%_))))
                                      (_%g5067350707%_ _%g5067450711%_))))
                              (_%g5067350707%_ _%g5067450711%_))))
                      (_%g5067350707%_ _%g5067450711%_)))))
          (_%g5067250830%_ _%$stx50669%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass51397%_ _%slot51399%_)
        (let ((_%$e51401%_
               (let ((__obj91286 _%klass51397%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91286
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91286 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91286
                      'slot-types)))))
          (if _%$e51401%_
              ((lambda (_%slot-types51405%_)
                 (agetq _%slot51399%_ _%slot-types51405%_))
               _%$e51401%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass51378%_ _%slot51380%_)
        (let ((_%$e51382%_
               (let ((__obj91287 _%klass51378%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91287
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91287 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91287
                      'slot-defaults)))))
          (if _%$e51382%_
              ((lambda (_%slot-defaults51386%_)
                 (let ((_%$e51389%_
                        (agetq _%slot51380%_ _%slot-defaults51386%_)))
                   (if _%$e51389%_
                       (gx#syntax-local-introduce _%$e51389%_)
                       '#f)))
               _%$e51382%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass51359%_ _%slot51361%_)
        (let ((_%$e51363%_
               (let ((__obj91288 _%klass51359%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91288
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91288 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91288
                      'slot-defaults)))))
          (if _%$e51363%_
              ((lambda (_%slot-defaults51367%_)
                 (let ((_%$e51370%_
                        (agetq _%slot51361%_ _%slot-defaults51367%_)))
                   (if _%$e51370%_
                       (gx#syntax-local-introduce _%$e51370%_)
                       '#f)))
               _%$e51363%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass51127%_ _%slot51129%_)
        (let ((_%contract5113051132%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51127%_
                _%slot51129%_)))
          (if _%contract5113051132%_
              (let* ((_%contract51136%_ _%contract5113051132%_)
                     (_%__stx8580885809%_ _%contract51136%_)
                     (_%g5114151178%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8580885809%_))))
                (let ((_%__kont8581185812%_
                       (lambda (_%L51328%_ _%L51330%_)
                         (not (gx#free-identifier=?
                               _%L51330%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8581385814%_
                       (lambda (_%L51268%_ _%L51270%_ _%L51271%_)
                         (not (gx#free-identifier=?
                               _%L51270%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8581585816%_ (lambda (_%L51205%_) '#f)))
                  (let* ((_%__match8586185862%_
                          (lambda (_%e5115451228%_
                                   _%hd5115551232%_
                                   _%tl5115651235%_
                                   _%e5115751238%_
                                   _%hd5115851242%_
                                   _%tl5115951245%_
                                   _%e5116051248%_
                                   _%hd5116151252%_
                                   _%tl5116251255%_
                                   _%e5116351258%_
                                   _%hd5116451262%_
                                   _%tl5116551265%_)
                            (let ((_%L51268%_ _%hd5116451262%_)
                                  (_%L51270%_ _%hd5116151252%_)
                                  (_%L51271%_ _%hd5115851242%_))
                              (if (and (gx#identifier? _%L51270%_)
                                       (or (gx#free-identifier=?
                                            _%L51270%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51270%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51270%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51270%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8581385814%_
                                   _%L51268%_
                                   _%L51270%_
                                   _%L51271%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5114151178%_))))))
                         (_%__match8583185832%_
                          (lambda (_%e5114551308%_
                                   _%hd5114651312%_
                                   _%tl5114751315%_
                                   _%e5114851318%_
                                   _%hd5114951322%_
                                   _%tl5115051325%_)
                            (let ((_%L51328%_ _%hd5114951322%_)
                                  (_%L51330%_ _%hd5114651312%_))
                              (if (and (gx#identifier? _%L51330%_)
                                       (or (gx#free-identifier=?
                                            _%L51330%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51330%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51330%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51330%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8581185812%_ _%L51328%_ _%L51330%_)
                                  (if (gx#identifier? _%hd5114651312%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91467_|
                                           _%hd5114651312%_)
                                          (_%__kont8581585816%_
                                           _%hd5114951322%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5114151178%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5114151178%_))))))))
                    (if (gx#stx-pair? _%__stx8580885809%_)
                        (let ((_%e5114551308%_
                               (gx#syntax-e _%__stx8580885809%_)))
                          (let ((_%tl5114751315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5114551308%_)))
                                (_%hd5114651312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5114551308%_))))
                            (if (gx#stx-pair? _%tl5114751315%_)
                                (let ((_%e5114851318%_
                                       (gx#syntax-e _%tl5114751315%_)))
                                  (let ((_%tl5115051325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5114851318%_)))
                                        (_%hd5114951322%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5114851318%_))))
                                    (if (gx#stx-null? _%tl5115051325%_)
                                        (_%__match8583185832%_
                                         _%e5114551308%_
                                         _%hd5114651312%_
                                         _%tl5114751315%_
                                         _%e5114851318%_
                                         _%hd5114951322%_
                                         _%tl5115051325%_)
                                        (if (gx#identifier? _%hd5114651312%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g91467_|
                                                 _%hd5114651312%_)
                                                (if (gx#stx-pair?
                                                     _%tl5115051325%_)
                                                    (let ((_%e5116051248%_
                                                           (gx#syntax-e
                                                            _%tl5115051325%_)))
                                                      (let ((_%tl5116251255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5116051248%_)))
                    (_%hd5116151252%_
                     (let () (declare (not safe)) (##car _%e5116051248%_))))
                (if (gx#stx-pair? _%tl5116251255%_)
                    (let ((_%e5116351258%_ (gx#syntax-e _%tl5116251255%_)))
                      (let ((_%tl5116551265%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5116351258%_)))
                            (_%hd5116451262%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5116351258%_))))
                        (if (gx#stx-null? _%tl5116551265%_)
                            (_%__match8586185862%_
                             _%e5114551308%_
                             _%hd5114651312%_
                             _%tl5114751315%_
                             _%e5114851318%_
                             _%hd5114951322%_
                             _%tl5115051325%_
                             _%e5116051248%_
                             _%hd5116151252%_
                             _%tl5116251255%_
                             _%e5116351258%_
                             _%hd5116451262%_
                             _%tl5116551265%_)
                            (let () (declare (not safe)) (_%g5114151178%_)))))
                    (let () (declare (not safe)) (_%g5114151178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5114151178%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5114151178%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5114151178%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5114151178%_)))))
                        (let () (declare (not safe)) (_%g5114151178%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass50895%_ _%slot50897%_)
        (let ((_%contract5089850900%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass50895%_
                _%slot50897%_)))
          (if _%contract5089850900%_
              (let* ((_%contract50904%_ _%contract5089850900%_)
                     (_%__stx8588285883%_ _%contract50904%_)
                     (_%g5090950946%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8588285883%_))))
                (let ((_%__kont8588585886%_
                       (lambda (_%L51096%_ _%L51098%_)
                         (not (gx#free-identifier=?
                               _%L51098%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8588785888%_
                       (lambda (_%L51036%_ _%L51038%_ _%L51039%_) '#t))
                      (_%__kont8588985890%_ (lambda (_%L50973%_) '#t)))
                  (let* ((_%__match8593585936%_
                          (lambda (_%e5092250996%_
                                   _%hd5092351000%_
                                   _%tl5092451003%_
                                   _%e5092551006%_
                                   _%hd5092651010%_
                                   _%tl5092751013%_
                                   _%e5092851016%_
                                   _%hd5092951020%_
                                   _%tl5093051023%_
                                   _%e5093151026%_
                                   _%hd5093251030%_
                                   _%tl5093351033%_)
                            (let ((_%L51036%_ _%hd5093251030%_)
                                  (_%L51038%_ _%hd5092951020%_)
                                  (_%L51039%_ _%hd5092651010%_))
                              (if (and (gx#identifier? _%L51038%_)
                                       (or (gx#free-identifier=?
                                            _%L51038%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51038%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51038%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51038%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8588785888%_
                                   _%L51036%_
                                   _%L51038%_
                                   _%L51039%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5090950946%_))))))
                         (_%__match8590585906%_
                          (lambda (_%e5091351076%_
                                   _%hd5091451080%_
                                   _%tl5091551083%_
                                   _%e5091651086%_
                                   _%hd5091751090%_
                                   _%tl5091851093%_)
                            (let ((_%L51096%_ _%hd5091751090%_)
                                  (_%L51098%_ _%hd5091451080%_))
                              (if (and (gx#identifier? _%L51098%_)
                                       (or (gx#free-identifier=?
                                            _%L51098%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51098%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51098%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51098%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8588585886%_ _%L51096%_ _%L51098%_)
                                  (if (gx#identifier? _%hd5091451080%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91468_|
                                           _%hd5091451080%_)
                                          (_%__kont8588985890%_
                                           _%hd5091751090%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5090950946%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5090950946%_))))))))
                    (if (gx#stx-pair? _%__stx8588285883%_)
                        (let ((_%e5091351076%_
                               (gx#syntax-e _%__stx8588285883%_)))
                          (let ((_%tl5091551083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5091351076%_)))
                                (_%hd5091451080%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5091351076%_))))
                            (if (gx#stx-pair? _%tl5091551083%_)
                                (let ((_%e5091651086%_
                                       (gx#syntax-e _%tl5091551083%_)))
                                  (let ((_%tl5091851093%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5091651086%_)))
                                        (_%hd5091751090%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5091651086%_))))
                                    (if (gx#stx-null? _%tl5091851093%_)
                                        (_%__match8590585906%_
                                         _%e5091351076%_
                                         _%hd5091451080%_
                                         _%tl5091551083%_
                                         _%e5091651086%_
                                         _%hd5091751090%_
                                         _%tl5091851093%_)
                                        (if (gx#identifier? _%hd5091451080%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g91468_|
                                                 _%hd5091451080%_)
                                                (if (gx#stx-pair?
                                                     _%tl5091851093%_)
                                                    (let ((_%e5092851016%_
                                                           (gx#syntax-e
                                                            _%tl5091851093%_)))
                                                      (let ((_%tl5093051023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5092851016%_)))
                    (_%hd5092951020%_
                     (let () (declare (not safe)) (##car _%e5092851016%_))))
                (if (gx#stx-pair? _%tl5093051023%_)
                    (let ((_%e5093151026%_ (gx#syntax-e _%tl5093051023%_)))
                      (let ((_%tl5093351033%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5093151026%_)))
                            (_%hd5093251030%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5093151026%_))))
                        (if (gx#stx-null? _%tl5093351033%_)
                            (_%__match8593585936%_
                             _%e5091351076%_
                             _%hd5091451080%_
                             _%tl5091551083%_
                             _%e5091651086%_
                             _%hd5091751090%_
                             _%tl5091851093%_
                             _%e5092851016%_
                             _%hd5092951020%_
                             _%tl5093051023%_
                             _%e5093151026%_
                             _%hd5093251030%_
                             _%tl5093351033%_)
                            (let () (declare (not safe)) (_%g5090950946%_)))))
                    (let () (declare (not safe)) (_%g5090950946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5090950946%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5090950946%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5090950946%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5090950946%_)))))
                        (let () (declare (not safe)) (_%g5090950946%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id50881%_)
        (if (gx#identifier? _%id50881%_)
            (let* ((_%str50884%_ (symbol->string (gx#stx-e _%id50881%_)))
                   (_%index5088650888%_ (string-index _%str50884%_ '#\.)))
              (if _%index5088650888%_
                  (let ((_%index50892%_ _%index5088650888%_))
                    (if (let () (declare (not safe)) (##fx> _%index50892%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str50884%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx50874%_ _%id50876%_)
        (let ((_%parts50878%_
               (string-split (symbol->string (gx#stx-e _%id50876%_)) '#\.)))
          (if (find string-empty? _%parts50878%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx50874%_
               _%id50876%_)
              (cons (gx#stx-identifier _%id50876%_ (car _%parts50878%_))
                    (map string->symbol (cdr _%parts50878%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx50855%_ _%klass-or-id50857%_ _%slot50858%_)
        (let* ((_%klass50860%_
                (if (gx#identifier? _%klass-or-id50857%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx50855%_
                       _%klass-or-id50857%_))
                    _%klass-or-id50857%_))
               (_%accessors50863%_
                (let ((__obj91289 _%klass50860%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj91289
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj91289 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj91289
                       'unchecked-accessors))))
               (_%$e50868%_ (agetq _%slot50858%_ _%accessors50863%_)))
          (if _%$e50868%_
              _%$e50868%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx50855%_
               _%klass50860%_
               _%slot50858%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx50835%_
               _%klass-or-id50837%_
               _%slot50838%_
               _%checked?50839%_)
        (let* ((_%klass50841%_
                (if (gx#identifier? _%klass-or-id50837%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx50835%_
                       _%klass-or-id50837%_))
                    _%klass-or-id50837%_))
               (_%mutators50844%_
                (if _%checked?50839%_
                    (let ((__obj91290 _%klass50841%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91290
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91290 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91290
                           'mutators)))
                    (let ((__obj91291 _%klass50841%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91291
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91291 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91291
                           'unchecked-mutators)))))
               (_%$e50849%_ (agetq _%slot50838%_ _%mutators50844%_)))
          (if _%$e50849%_
              _%$e50849%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx50835%_
               _%klass50841%_
               _%slot50838%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx51410%_)
        (letrec ((_%expand-body51413%_
                  (lambda (_%klass52321%_
                           _%var52323%_
                           _%Type52324%_
                           _%body52325%_
                           _%checked?52326%_)
                    (let* ((_%g5232852372%_
                            (lambda (_%g5232952368%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5232952368%_)))
                           (_%g5232752529%_
                            (lambda (_%g5232952376%_)
                              (if (gx#stx-pair? _%g5232952376%_)
                                  (let ((_%e5233752379%_
                                         (gx#syntax-e _%g5232952376%_)))
                                    (let ((_%hd5233852383%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5233752379%_)))
                                          (_%tl5233952386%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5233752379%_))))
                                      (if (gx#stx-pair? _%tl5233952386%_)
                                          (let ((_%e5234052389%_
                                                 (gx#syntax-e
                                                  _%tl5233952386%_)))
                                            (let ((_%hd5234152393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5234052389%_)))
                                                  (_%tl5234252396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5234052389%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5234252396%_)
                                                  (let ((_%e5234352399%_
                                                         (gx#syntax-e
                                                          _%tl5234252396%_)))
                                                    (let ((_%hd5234452403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5234352399%_)))
                                                          (_%tl5234552406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5234352399%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5234552406%_)
                                                          (let ((_%e5234652409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5234552406%_)))
                    (let ((_%hd5234752413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5234652409%_)))
                          (_%tl5234852416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5234652409%_))))
                      (if (gx#stx-pair? _%tl5234852416%_)
                          (let ((_%e5234952419%_
                                 (gx#syntax-e _%tl5234852416%_)))
                            (let ((_%hd5235052423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5234952419%_)))
                                  (_%tl5235152426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5234952419%_))))
                              (if (gx#stx-pair? _%tl5235152426%_)
                                  (let ((_%e5235252429%_
                                         (gx#syntax-e _%tl5235152426%_)))
                                    (let ((_%hd5235352433%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5235252429%_)))
                                          (_%tl5235452436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5235252429%_))))
                                      (if (gx#stx-pair? _%tl5235452436%_)
                                          (let ((_%e5235552439%_
                                                 (gx#syntax-e
                                                  _%tl5235452436%_)))
                                            (let ((_%hd5235652443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5235552439%_)))
                                                  (_%tl5235752446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5235552439%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5235652443%_)
                                                  (let ((_g91469_
                                                         (gx#syntax-split-splice
                                                          _%hd5235652443%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g91470_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g91469_)
                           (##values-length _g91469_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g91470_ 2)))
                    (error "Context expects 2 values" _g91470_)))
              (let ((_%target5235852449%_
                     (let () (declare (not safe)) (##values-ref _g91469_ 0)))
                    (_%tl5236052452%_
                     (let () (declare (not safe)) (##values-ref _g91469_ 1))))
                (if (gx#stx-null? _%tl5236052452%_)
                    (letrec ((_%loop5236152455%_
                              (lambda (_%hd5235952459%_ _%body5236552462%_)
                                (if (gx#stx-pair? _%hd5235952459%_)
                                    (let ((_%e5236252465%_
                                           (gx#syntax-e _%hd5235952459%_)))
                                      (let ((_%lp-hd5236352469%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5236252465%_)))
                                            (_%lp-tl5236452472%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5236252465%_))))
                                        (_%loop5236152455%_
                                         _%lp-tl5236452472%_
                                         (cons _%lp-hd5236352469%_
                                               _%body5236552462%_))))
                                    (let ((_%body5236652475%_
                                           (reverse _%body5236552462%_)))
                                      (if (gx#stx-null? _%tl5235752446%_)
                                          ((lambda (_%L52479%_
                                                    _%L52481%_
                                                    _%L52482%_
                                                    _%L52483%_
                                                    _%L52484%_
                                                    _%L52485%_
                                                    _%L52486%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L52484%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L52485%_ '()))
                                         (cons _%L52484%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L52486%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L52484%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L52483%_ '()))
                               (cons _%L52482%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L52481%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5252052523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5252152526%_)
                      (cons _%g5252052523%_ _%g5252152526%_))
                    '()
                    _%L52479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5236652475%_
                                           _%hd5235352433%_
                                           _%hd5235052423%_
                                           _%hd5234752413%_
                                           _%hd5234452403%_
                                           _%hd5234152393%_
                                           _%hd5233852383%_)
                                          (_%g5232852372%_
                                           _%g5232952376%_)))))))
                      (_%loop5236152455%_ _%target5235852449%_ '()))
                    (_%g5232852372%_ _%g5232952376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5232852372%_
                                                   _%g5232952376%_))))
                                          (_%g5232852372%_ _%g5232952376%_))))
                                  (_%g5232852372%_ _%g5232952376%_))))
                          (_%g5232852372%_ _%g5232952376%_))))
                  (_%g5232852372%_ _%g5232952376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5232852372%_
                                                   _%g5232952376%_))))
                                          (_%g5232852372%_ _%g5232952376%_))))
                                  (_%g5232852372%_ _%g5232952376%_)))))
                      (_%g5232752529%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj91292 _%klass52321%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj91292
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj91292
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj91292
                                    'type-descriptor)))
                             _%var52323%_
                             _%klass52321%_
                             _%checked?52326%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body52325%_)))))
                 (_%expand51415%_
                  (lambda (_%var52213%_
                           _%Type52215%_
                           _%body52216%_
                           _%checked?52217%_
                           _%checked-mutators?52218%_
                           _%maybe?52219%_)
                    (let* ((_%klass52221%_
                            (gx#syntax-local-value _%Type52215%_ false))
                           (_%expr-body52228%_
                            (_%expand-body51413%_
                             _%klass52221%_
                             _%var52213%_
                             _%Type52215%_
                             _%body52216%_
                             (let ((_%$e52224%_ _%checked?52217%_))
                               (if _%$e52224%_
                                   _%$e52224%_
                                   _%checked-mutators?52218%_)))))
                      (if _%checked?52217%_
                          (let* ((_%g5223352252%_
                                  (lambda (_%g5223452248%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5223452248%_)))
                                 (_%g5223252314%_
                                  (lambda (_%g5223452256%_)
                                    (if (gx#stx-pair? _%g5223452256%_)
                                        (let ((_%e5223852259%_
                                               (gx#syntax-e _%g5223452256%_)))
                                          (let ((_%hd5223952263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5223852259%_)))
                                                (_%tl5224052266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5223852259%_))))
                                            (if (gx#stx-pair? _%tl5224052266%_)
                                                (let ((_%e5224152269%_
                                                       (gx#syntax-e
                                                        _%tl5224052266%_)))
                                                  (let ((_%hd5224252273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5224152269%_)))
                                                        (_%tl5224352276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5224152269%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5224352276%_)
                                                        (let ((_%e5224452279%_
                                                               (gx#syntax-e
                                                                _%tl5224352276%_)))
                                                          (let ((_%hd5224552283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5224452279%_)))
                        (_%tl5224652286%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5224452279%_))))
                    (if (gx#stx-null? _%tl5224652286%_)
                        ((lambda (_%L52289%_ _%L52291%_ _%L52292%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L52291%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L52292%_ '())))
                                       (cons _%L52289%_ '()))))
                         _%hd5224552283%_
                         _%hd5224252273%_
                         _%hd5223952263%_)
                        (_%g5223352252%_ _%g5223452256%_))))
                (_%g5223352252%_ _%g5223452256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5223352252%_
                                                 _%g5223452256%_))))
                                        (_%g5223352252%_ _%g5223452256%_)))))
                            (_%g5223252314%_
                             (list (let ((_%instance?52318%_
                                          (let ((__obj91293 _%klass52221%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj91293
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj91293
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj91293
                                                 'predicate)))))
                                     (if _%maybe?52219%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?52318%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?52318%_))
                                   _%var52213%_
                                   _%expr-body52228%_)))
                          _%expr-body52228%_)))))
          (let* ((_%__stx8595685957%_ _%stx51410%_)
                 (_%g5142151564%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8595685957%_))))
            (let ((_%__kont8595985960%_
                   (lambda (_%L52141%_ _%L52143%_ _%L52144%_ _%L52145%_)
                     (let* ((_%g5217052178%_
                             (lambda (_%g5217152174%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5217152174%_)))
                            (_%g5216952205%_
                             (lambda (_%g5217152182%_)
                               ((lambda (_%L52185%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L52145%_
                                                    (cons _%L52144%_
                                                          (cons _%L52185%_
                                                                '())))
                                              (foldr (lambda (_%g5219652199%_
                                                              _%g5219752202%_)
                                                       (cons _%g5219652199%_
                                                             _%g5219752202%_))
                                                     '()
                                                     _%L52141%_))))
                                _%g5217152182%_))))
                       (_%g5216952205%_
                        (let ((__obj91294 (gx#syntax-local-value _%L52143%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj91294
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj91294
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj91294
                               'identifier)))))))
                  (_%__kont8596385964%_
                   (lambda (_%L52019%_ _%L52021%_ _%L52022%_)
                     (_%expand51415%_
                      _%L52022%_
                      _%L52021%_
                      (foldr (lambda (_%g5204552048%_ _%g5204652051%_)
                               (cons _%g5204552048%_ _%g5204652051%_))
                             '()
                             _%L52019%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8596785968%_
                   (lambda (_%L51897%_ _%L51899%_ _%L51900%_)
                     (_%expand51415%_
                      _%L51900%_
                      _%L51899%_
                      (foldr (lambda (_%g5192351926%_ _%g5192451929%_)
                               (cons _%g5192351926%_ _%g5192451929%_))
                             '()
                             _%L51897%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8597185972%_
                   (lambda (_%L51775%_ _%L51777%_ _%L51778%_)
                     (_%expand51415%_
                      _%L51778%_
                      _%L51777%_
                      (foldr (lambda (_%g5180151804%_ _%g5180251807%_)
                               (cons _%g5180151804%_ _%g5180251807%_))
                             '()
                             _%L51775%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8597585976%_
                   (lambda (_%L51651%_ _%L51653%_ _%L51654%_)
                     (_%expand51415%_
                      _%L51654%_
                      _%L51653%_
                      (foldr (lambda (_%g5167951682%_ _%g5168051685%_)
                               (cons _%g5167951682%_ _%g5168051685%_))
                             '()
                             _%L51651%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8619586196%_
                      (lambda (_%e5153551571%_
                               _%hd5153651575%_
                               _%tl5153751578%_
                               _%e5153851581%_
                               _%hd5153951585%_
                               _%tl5154051588%_
                               _%e5154151591%_
                               _%hd5154251595%_
                               _%tl5154351598%_
                               _%e5154451601%_
                               _%hd5154551605%_
                               _%tl5154651608%_
                               _%e5154751611%_
                               _%hd5154851615%_
                               _%tl5154951618%_
                               _%__splice8597785978%_
                               _%target5155051621%_
                               _%tl5155251624%_)
                        (letrec ((_%loop5155351627%_
                                  (lambda (_%hd5155151631%_ _%body5155751634%_)
                                    (if (gx#stx-pair? _%hd5155151631%_)
                                        (let ((_%e5155451637%_
                                               (gx#syntax-e _%hd5155151631%_)))
                                          (let ((_%lp-tl5155651644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5155451637%_)))
                                                (_%lp-hd5155551641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5155451637%_))))
                                            (_%loop5155351627%_
                                             _%lp-tl5155651644%_
                                             (cons _%lp-hd5155551641%_
                                                   _%body5155751634%_))))
                                        (let ((_%body5155851647%_
                                               (reverse _%body5155751634%_)))
                                          (let ((_%L51651%_ _%body5155851647%_)
                                                (_%L51653%_ _%hd5154851615%_)
                                                (_%L51654%_ _%hd5154251595%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51653%_))
                                                (_%__kont8597585976%_
                                                 _%L51651%_
                                                 _%L51653%_
                                                 _%L51654%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))))))))
                          (_%loop5155351627%_ _%target5155051621%_ '()))))
                     (_%__match8615186152%_
                      (lambda (_%e5150851695%_
                               _%hd5150951699%_
                               _%tl5151051702%_
                               _%e5151151705%_
                               _%hd5151251709%_
                               _%tl5151351712%_
                               _%e5151451715%_
                               _%hd5151551719%_
                               _%tl5151651722%_
                               _%e5151751725%_
                               _%hd5151851729%_
                               _%tl5151951732%_
                               _%e5152051735%_
                               _%hd5152151739%_
                               _%tl5152251742%_
                               _%__splice8597385974%_
                               _%target5152351745%_
                               _%tl5152551748%_)
                        (letrec ((_%loop5152651751%_
                                  (lambda (_%hd5152451755%_ _%body5153051758%_)
                                    (if (gx#stx-pair? _%hd5152451755%_)
                                        (let ((_%e5152751761%_
                                               (gx#syntax-e _%hd5152451755%_)))
                                          (let ((_%lp-tl5152951768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5152751761%_)))
                                                (_%lp-hd5152851765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5152751761%_))))
                                            (_%loop5152651751%_
                                             _%lp-tl5152951768%_
                                             (cons _%lp-hd5152851765%_
                                                   _%body5153051758%_))))
                                        (let ((_%body5153151771%_
                                               (reverse _%body5153051758%_)))
                                          (let ((_%L51775%_ _%body5153151771%_)
                                                (_%L51777%_ _%hd5152151739%_)
                                                (_%L51778%_ _%hd5151551719%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51777%_))
                                                (_%__kont8597185972%_
                                                 _%L51775%_
                                                 _%L51777%_
                                                 _%L51778%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))))))))
                          (_%loop5152651751%_ _%target5152351745%_ '()))))
                     (_%__match8610786108%_
                      (lambda (_%e5148151817%_
                               _%hd5148251821%_
                               _%tl5148351824%_
                               _%e5148451827%_
                               _%hd5148551831%_
                               _%tl5148651834%_
                               _%e5148751837%_
                               _%hd5148851841%_
                               _%tl5148951844%_
                               _%e5149051847%_
                               _%hd5149151851%_
                               _%tl5149251854%_
                               _%e5149351857%_
                               _%hd5149451861%_
                               _%tl5149551864%_
                               _%__splice8596985970%_
                               _%target5149651867%_
                               _%tl5149851870%_)
                        (letrec ((_%loop5149951873%_
                                  (lambda (_%hd5149751877%_ _%body5150351880%_)
                                    (if (gx#stx-pair? _%hd5149751877%_)
                                        (let ((_%e5150051883%_
                                               (gx#syntax-e _%hd5149751877%_)))
                                          (let ((_%lp-tl5150251890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5150051883%_)))
                                                (_%lp-hd5150151887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5150051883%_))))
                                            (_%loop5149951873%_
                                             _%lp-tl5150251890%_
                                             (cons _%lp-hd5150151887%_
                                                   _%body5150351880%_))))
                                        (let ((_%body5150451893%_
                                               (reverse _%body5150351880%_)))
                                          (let ((_%L51897%_ _%body5150451893%_)
                                                (_%L51899%_ _%hd5149451861%_)
                                                (_%L51900%_ _%hd5148851841%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51899%_))
                                                (_%__kont8596785968%_
                                                 _%L51897%_
                                                 _%L51899%_
                                                 _%L51900%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))))))))
                          (_%loop5149951873%_ _%target5149651867%_ '()))))
                     (_%__match8606386064%_
                      (lambda (_%e5145451939%_
                               _%hd5145551943%_
                               _%tl5145651946%_
                               _%e5145751949%_
                               _%hd5145851953%_
                               _%tl5145951956%_
                               _%e5146051959%_
                               _%hd5146151963%_
                               _%tl5146251966%_
                               _%e5146351969%_
                               _%hd5146451973%_
                               _%tl5146551976%_
                               _%e5146651979%_
                               _%hd5146751983%_
                               _%tl5146851986%_
                               _%__splice8596585966%_
                               _%target5146951989%_
                               _%tl5147151992%_)
                        (letrec ((_%loop5147251995%_
                                  (lambda (_%hd5147051999%_ _%body5147652002%_)
                                    (if (gx#stx-pair? _%hd5147051999%_)
                                        (let ((_%e5147352005%_
                                               (gx#syntax-e _%hd5147051999%_)))
                                          (let ((_%lp-tl5147552012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5147352005%_)))
                                                (_%lp-hd5147452009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5147352005%_))))
                                            (_%loop5147251995%_
                                             _%lp-tl5147552012%_
                                             (cons _%lp-hd5147452009%_
                                                   _%body5147652002%_))))
                                        (let ((_%body5147752015%_
                                               (reverse _%body5147652002%_)))
                                          (let ((_%L52019%_ _%body5147752015%_)
                                                (_%L52021%_ _%hd5146751983%_)
                                                (_%L52022%_ _%hd5146151963%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52021%_))
                                                (_%__kont8596385964%_
                                                 _%L52019%_
                                                 _%L52021%_
                                                 _%L52022%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))))))))
                          (_%loop5147251995%_ _%target5146951989%_ '()))))
                     (_%__match8604386044%_
                      (lambda (_%e5145451939%_
                               _%hd5145551943%_
                               _%tl5145651946%_
                               _%e5145751949%_
                               _%hd5145851953%_
                               _%tl5145951956%_
                               _%e5146051959%_
                               _%hd5146151963%_
                               _%tl5146251966%_
                               _%e5146351969%_
                               _%hd5146451973%_
                               _%tl5146551976%_)
                        (if (gx#identifier? _%hd5146451973%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g91471_|
                                 _%hd5146451973%_)
                                (if (gx#stx-pair? _%tl5146551976%_)
                                    (let ((_%e5146651979%_
                                           (gx#syntax-e _%tl5146551976%_)))
                                      (let ((_%tl5146851986%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5146651979%_)))
                                            (_%hd5146751983%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5146651979%_))))
                                        (if (gx#stx-null? _%tl5146851986%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5145951956%_)
                                                (let ((_%__splice8596585966%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5145951956%_
                                                        '0)))
                                                  (let ((_%tl5147151992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8596585966%_
                                                            '1)))
                                                        (_%target5146951989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8596585966%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5147151992%_)
                                                        (_%__match8606386064%_
                                                         _%e5145451939%_
                                                         _%hd5145551943%_
                                                         _%tl5145651946%_
                                                         _%e5145751949%_
                                                         _%hd5145851953%_
                                                         _%tl5145951956%_
                                                         _%e5146051959%_
                                                         _%hd5146151963%_
                                                         _%tl5146251966%_
                                                         _%e5146351969%_
                                                         _%hd5146451973%_
                                                         _%tl5146551976%_
                                                         _%e5146651979%_
                                                         _%hd5146751983%_
                                                         _%tl5146851986%_
                                                         _%__splice8596585966%_
                                                         _%target5146951989%_
                                                         _%tl5147151992%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5142151564%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5142151564%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5142151564%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g91472_|
                                     _%hd5146451973%_)
                                    (if (gx#stx-pair? _%tl5146551976%_)
                                        (let ((_%e5149351857%_
                                               (gx#syntax-e _%tl5146551976%_)))
                                          (let ((_%tl5149551864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5149351857%_)))
                                                (_%hd5149451861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5149351857%_))))
                                            (if (gx#stx-null? _%tl5149551864%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5145951956%_)
                                                    (let ((_%__splice8596985970%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5145951956%_
                                                            '0)))
                                                      (let ((_%tl5149851870%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8596985970%_ '1)))
                    (_%target5149651867%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8596985970%_ '0))))
                (if (gx#stx-null? _%tl5149851870%_)
                    (_%__match8610786108%_
                     _%e5145451939%_
                     _%hd5145551943%_
                     _%tl5145651946%_
                     _%e5145751949%_
                     _%hd5145851953%_
                     _%tl5145951956%_
                     _%e5146051959%_
                     _%hd5146151963%_
                     _%tl5146251966%_
                     _%e5146351969%_
                     _%hd5146451973%_
                     _%tl5146551976%_
                     _%e5149351857%_
                     _%hd5149451861%_
                     _%tl5149551864%_
                     _%__splice8596985970%_
                     _%target5149651867%_
                     _%tl5149851870%_)
                    (let () (declare (not safe)) (_%g5142151564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5142151564%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5142151564%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g91473_|
                                         _%hd5146451973%_)
                                        (if (gx#stx-pair? _%tl5146551976%_)
                                            (let ((_%e5152051735%_
                                                   (gx#syntax-e
                                                    _%tl5146551976%_)))
                                              (let ((_%tl5152251742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5152051735%_)))
                                                    (_%hd5152151739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5152051735%_))))
                                                (if (gx#stx-null?
                                                     _%tl5152251742%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5145951956%_)
                                                        (let ((_%__splice8597385974%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5145951956%_
                                                                '0)))
                                                          (let ((_%tl5152551748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8597385974%_ '1)))
                        (_%target5152351745%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8597385974%_ '0))))
                    (if (gx#stx-null? _%tl5152551748%_)
                        (_%__match8615186152%_
                         _%e5145451939%_
                         _%hd5145551943%_
                         _%tl5145651946%_
                         _%e5145751949%_
                         _%hd5145851953%_
                         _%tl5145951956%_
                         _%e5146051959%_
                         _%hd5146151963%_
                         _%tl5146251966%_
                         _%e5146351969%_
                         _%hd5146451973%_
                         _%tl5146551976%_
                         _%e5152051735%_
                         _%hd5152151739%_
                         _%tl5152251742%_
                         _%__splice8597385974%_
                         _%target5152351745%_
                         _%tl5152551748%_)
                        (let () (declare (not safe)) (_%g5142151564%_)))))
                (let () (declare (not safe)) (_%g5142151564%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5142151564%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5142151564%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g91474_|
                                             _%hd5146451973%_)
                                            (if (gx#stx-pair? _%tl5146551976%_)
                                                (let ((_%e5154751611%_
                                                       (gx#syntax-e
                                                        _%tl5146551976%_)))
                                                  (let ((_%tl5154951618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5154751611%_)))
                                                        (_%hd5154851615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5154751611%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5154951618%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5145951956%_)
                                                            (let ((_%__splice8597785978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5145951956%_
                            '0)))
                      (let ((_%tl5155251624%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8597785978%_ '1)))
                            (_%target5155051621%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8597785978%_ '0))))
                        (if (gx#stx-null? _%tl5155251624%_)
                            (_%__match8619586196%_
                             _%e5145451939%_
                             _%hd5145551943%_
                             _%tl5145651946%_
                             _%e5145751949%_
                             _%hd5145851953%_
                             _%tl5145951956%_
                             _%e5146051959%_
                             _%hd5146151963%_
                             _%tl5146251966%_
                             _%e5146351969%_
                             _%hd5146451973%_
                             _%tl5146551976%_
                             _%e5154751611%_
                             _%hd5154851615%_
                             _%tl5154951618%_
                             _%__splice8597785978%_
                             _%target5155051621%_
                             _%tl5155251624%_)
                            (let () (declare (not safe)) (_%g5142151564%_)))))
                    (let () (declare (not safe)) (_%g5142151564%_)))
                (let () (declare (not safe)) (_%g5142151564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5142151564%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5142151564%_))))))
                            (let () (declare (not safe)) (_%g5142151564%_)))))
                     (_%__match8601986020%_
                      (lambda (_%e5142752061%_
                               _%hd5142852065%_
                               _%tl5142952068%_
                               _%e5143052071%_
                               _%hd5143152075%_
                               _%tl5143252078%_
                               _%e5143352081%_
                               _%hd5143452085%_
                               _%tl5143552088%_
                               _%e5143652091%_
                               _%hd5143752095%_
                               _%tl5143852098%_
                               _%e5143952101%_
                               _%hd5144052105%_
                               _%tl5144152108%_
                               _%__splice8596185962%_
                               _%target5144252111%_
                               _%tl5144452114%_)
                        (letrec ((_%loop5144552117%_
                                  (lambda (_%hd5144352121%_ _%body5144952124%_)
                                    (if (gx#stx-pair? _%hd5144352121%_)
                                        (let ((_%e5144652127%_
                                               (gx#syntax-e _%hd5144352121%_)))
                                          (let ((_%lp-tl5144852134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5144652127%_)))
                                                (_%lp-hd5144752131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5144652127%_))))
                                            (_%loop5144552117%_
                                             _%lp-tl5144852134%_
                                             (cons _%lp-hd5144752131%_
                                                   _%body5144952124%_))))
                                        (let ((_%body5145052137%_
                                               (reverse _%body5144952124%_)))
                                          (let ((_%L52141%_ _%body5145052137%_)
                                                (_%L52143%_ _%hd5144052105%_)
                                                (_%L52144%_ _%hd5143752095%_)
                                                (_%L52145%_ _%hd5143452085%_))
                                            (if (let ((__tmp91475
                                                       (gx#syntax-local-value
                                                        _%L52143%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp91475))
                                                (_%__kont8595985960%_
                                                 _%L52141%_
                                                 _%L52143%_
                                                 _%L52144%_
                                                 _%L52145%_)
                                                (_%__match8604386044%_
                                                 _%e5142752061%_
                                                 _%hd5142852065%_
                                                 _%tl5142952068%_
                                                 _%e5143052071%_
                                                 _%hd5143152075%_
                                                 _%tl5143252078%_
                                                 _%e5143352081%_
                                                 _%hd5143452085%_
                                                 _%tl5143552088%_
                                                 _%e5143652091%_
                                                 _%hd5143752095%_
                                                 _%tl5143852098%_))))))))
                          (_%loop5144552117%_ _%target5144252111%_ '())))))
                (if (gx#stx-pair? _%__stx8595685957%_)
                    (let ((_%e5142752061%_ (gx#syntax-e _%__stx8595685957%_)))
                      (let ((_%tl5142952068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5142752061%_)))
                            (_%hd5142852065%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5142752061%_))))
                        (if (gx#stx-pair? _%tl5142952068%_)
                            (let ((_%e5143052071%_
                                   (gx#syntax-e _%tl5142952068%_)))
                              (let ((_%tl5143252078%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5143052071%_)))
                                    (_%hd5143152075%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5143052071%_))))
                                (if (gx#stx-pair? _%hd5143152075%_)
                                    (let ((_%e5143352081%_
                                           (gx#syntax-e _%hd5143152075%_)))
                                      (let ((_%tl5143552088%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5143352081%_)))
                                            (_%hd5143452085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5143352081%_))))
                                        (if (gx#stx-pair? _%tl5143552088%_)
                                            (let ((_%e5143652091%_
                                                   (gx#syntax-e
                                                    _%tl5143552088%_)))
                                              (let ((_%tl5143852098%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5143652091%_)))
                                                    (_%hd5143752095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5143652091%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5143852098%_)
                                                    (let ((_%e5143952101%_
                                                           (gx#syntax-e
                                                            _%tl5143852098%_)))
                                                      (let ((_%tl5144152108%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5143952101%_)))
                    (_%hd5144052105%_
                     (let () (declare (not safe)) (##car _%e5143952101%_))))
                (if (gx#stx-null? _%tl5144152108%_)
                    (if (gx#stx-pair/null? _%tl5143252078%_)
                        (let ((_%__splice8596185962%_
                               (gx#syntax-split-splice->vector
                                _%tl5143252078%_
                                '0)))
                          (let ((_%tl5144452114%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8596185962%_ '1)))
                                (_%target5144252111%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8596185962%_ '0))))
                            (if (gx#stx-null? _%tl5144452114%_)
                                (_%__match8601986020%_
                                 _%e5142752061%_
                                 _%hd5142852065%_
                                 _%tl5142952068%_
                                 _%e5143052071%_
                                 _%hd5143152075%_
                                 _%tl5143252078%_
                                 _%e5143352081%_
                                 _%hd5143452085%_
                                 _%tl5143552088%_
                                 _%e5143652091%_
                                 _%hd5143752095%_
                                 _%tl5143852098%_
                                 _%e5143952101%_
                                 _%hd5144052105%_
                                 _%tl5144152108%_
                                 _%__splice8596185962%_
                                 _%target5144252111%_
                                 _%tl5144452114%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5142151564%_)))))
                        (let () (declare (not safe)) (_%g5142151564%_)))
                    (let () (declare (not safe)) (_%g5142151564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5142151564%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5142151564%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5142151564%_)))))
                            (let () (declare (not safe)) (_%g5142151564%_)))))
                    (let () (declare (not safe)) (_%g5142151564%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx52539%_)
        (letrec ((_%expand-body52542%_
                  (lambda (_%var53543%_
                           _%Interface53545%_
                           _%body53546%_
                           _%checked?53547%_)
                    (let* ((_%type53549%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx52539%_
                               _%Interface53545%_)))
                           (_%g5355253596%_
                            (lambda (_%g5355353592%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5355353592%_)))
                           (_%g5355153754%_
                            (lambda (_%g5355353600%_)
                              (if (gx#stx-pair? _%g5355353600%_)
                                  (let ((_%e5356153603%_
                                         (gx#syntax-e _%g5355353600%_)))
                                    (let ((_%hd5356253607%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5356153603%_)))
                                          (_%tl5356353610%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5356153603%_))))
                                      (if (gx#stx-pair? _%tl5356353610%_)
                                          (let ((_%e5356453613%_
                                                 (gx#syntax-e
                                                  _%tl5356353610%_)))
                                            (let ((_%hd5356553617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5356453613%_)))
                                                  (_%tl5356653620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5356453613%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5356653620%_)
                                                  (let ((_%e5356753623%_
                                                         (gx#syntax-e
                                                          _%tl5356653620%_)))
                                                    (let ((_%hd5356853627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5356753623%_)))
                                                          (_%tl5356953630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5356753623%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5356953630%_)
                                                          (let ((_%e5357053633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5356953630%_)))
                    (let ((_%hd5357153637%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5357053633%_)))
                          (_%tl5357253640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5357053633%_))))
                      (if (gx#stx-pair? _%tl5357253640%_)
                          (let ((_%e5357353643%_
                                 (gx#syntax-e _%tl5357253640%_)))
                            (let ((_%hd5357453647%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5357353643%_)))
                                  (_%tl5357553650%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5357353643%_))))
                              (if (gx#stx-pair? _%tl5357553650%_)
                                  (let ((_%e5357653653%_
                                         (gx#syntax-e _%tl5357553650%_)))
                                    (let ((_%hd5357753657%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5357653653%_)))
                                          (_%tl5357853660%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5357653653%_))))
                                      (if (gx#stx-pair? _%tl5357853660%_)
                                          (let ((_%e5357953663%_
                                                 (gx#syntax-e
                                                  _%tl5357853660%_)))
                                            (let ((_%hd5358053667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5357953663%_)))
                                                  (_%tl5358153670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5357953663%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5358053667%_)
                                                  (let ((_g91476_
                                                         (gx#syntax-split-splice
                                                          _%hd5358053667%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g91477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g91476_)
                           (##values-length _g91476_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g91477_ 2)))
                    (error "Context expects 2 values" _g91477_)))
              (let ((_%target5358253673%_
                     (let () (declare (not safe)) (##values-ref _g91476_ 0)))
                    (_%tl5358453676%_
                     (let () (declare (not safe)) (##values-ref _g91476_ 1))))
                (if (gx#stx-null? _%tl5358453676%_)
                    (letrec ((_%loop5358553679%_
                              (lambda (_%hd5358353683%_ _%body5358953686%_)
                                (if (gx#stx-pair? _%hd5358353683%_)
                                    (let ((_%e5358653689%_
                                           (gx#syntax-e _%hd5358353683%_)))
                                      (let ((_%lp-hd5358753693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5358653689%_)))
                                            (_%lp-tl5358853696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5358653689%_))))
                                        (_%loop5358553679%_
                                         _%lp-tl5358853696%_
                                         (cons _%lp-hd5358753693%_
                                               _%body5358953686%_))))
                                    (let ((_%body5359053699%_
                                           (reverse _%body5358953686%_)))
                                      (if (gx#stx-null? _%tl5358153670%_)
                                          ((lambda (_%L53703%_
                                                    _%L53705%_
                                                    _%L53706%_
                                                    _%L53707%_
                                                    _%L53708%_
                                                    _%L53709%_
                                                    _%L53710%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L53707%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L53708%_ '()))
                                         (cons _%L53707%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L53710%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L53707%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L53709%_ '()))
                               (cons _%L53706%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L53705%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5374553748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5374653751%_)
                      (cons _%g5374553748%_ _%g5374653751%_))
                    '()
                    _%L53703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5359053699%_
                                           _%hd5357753657%_
                                           _%hd5357453647%_
                                           _%hd5357153637%_
                                           _%hd5356853627%_
                                           _%hd5356553617%_
                                           _%hd5356253607%_)
                                          (_%g5355253596%_
                                           _%g5355353600%_)))))))
                      (_%loop5358553679%_ _%target5358253673%_ '()))
                    (_%g5355253596%_ _%g5355353600%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5355253596%_
                                                   _%g5355353600%_))))
                                          (_%g5355253596%_ _%g5355353600%_))))
                                  (_%g5355253596%_ _%g5355353600%_))))
                          (_%g5355253596%_ _%g5355353600%_))))
                  (_%g5355253596%_ _%g5355353600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5355253596%_
                                                   _%g5355353600%_))))
                                          (_%g5355253596%_ _%g5355353600%_))))
                                  (_%g5355253596%_ _%g5355353600%_)))))
                      (_%g5355153754%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type53549%_
                             (let ((__obj91295 _%type53549%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj91295
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj91295
                                      '7
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj91295
                                    'instance-type)))
                             _%var53543%_
                             _%checked?53547%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53546%_)))))
                 (_%expand52544%_
                  (lambda (_%var53342%_
                           _%Interface53344%_
                           _%body53345%_
                           _%checked?53346%_
                           _%checked-methods?53347%_
                           _%maybe?53348%_)
                    (let* ((_%g5335053358%_
                            (lambda (_%g5335153354%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5335153354%_)))
                           (_%g5334953535%_
                            (lambda (_%g5335153362%_)
                              ((lambda (_%L53365%_)
                                 (if _%checked?53346%_
                                     (if _%maybe?53348%_
                                         (let* ((_%g5337753392%_
                                                 (lambda (_%g5337853388%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5337853388%_)))
                                                (_%g5337653438%_
                                                 (lambda (_%g5337853396%_)
                                                   (if (gx#stx-pair?
                                                        _%g5337853396%_)
                                                       (let ((_%e5338153399%_
                                                              (gx#syntax-e
                                                               _%g5337853396%_)))
                                                         (let ((_%hd5338253403%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5338153399%_)))
                       (_%tl5338353406%_
                        (let () (declare (not safe)) (##cdr _%e5338153399%_))))
                   (if (gx#stx-pair? _%tl5338353406%_)
                       (let ((_%e5338453409%_ (gx#syntax-e _%tl5338353406%_)))
                         (let ((_%hd5338553413%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5338453409%_)))
                               (_%tl5338653416%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5338453409%_))))
                           (if (gx#stx-null? _%tl5338653416%_)
                               ((lambda (_%L53419%_ _%L53421%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53421%_
                                                    (cons (cons _%L53419%_
                                                                (cons _%L53421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L53421%_
                                                                (cons _%L53365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L53421%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5338553413%_
                                _%hd5338253403%_)
                               (_%g5337753392%_ _%g5337853396%_))))
                       (_%g5337753392%_ _%g5337853396%_))))
               (_%g5337753392%_ _%g5337853396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5337653438%_
                                            (list _%var53342%_
                                                  _%Interface53344%_)))
                                         (let* ((_%g5344253457%_
                                                 (lambda (_%g5344353453%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5344353453%_)))
                                                (_%g5344153501%_
                                                 (lambda (_%g5344353461%_)
                                                   (if (gx#stx-pair?
                                                        _%g5344353461%_)
                                                       (let ((_%e5344653464%_
                                                              (gx#syntax-e
                                                               _%g5344353461%_)))
                                                         (let ((_%hd5344753468%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5344653464%_)))
                       (_%tl5344853471%_
                        (let () (declare (not safe)) (##cdr _%e5344653464%_))))
                   (if (gx#stx-pair? _%tl5344853471%_)
                       (let ((_%e5344953474%_ (gx#syntax-e _%tl5344853471%_)))
                         (let ((_%hd5345053478%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5344953474%_)))
                               (_%tl5345153481%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5344953474%_))))
                           (if (gx#stx-null? _%tl5345153481%_)
                               ((lambda (_%L53484%_ _%L53486%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53486%_
                                                    (cons (cons _%L53484%_
                                                                (cons _%L53486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L53365%_ '()))))
                                _%hd5345053478%_
                                _%hd5344753468%_)
                               (_%g5344253457%_ _%g5344353461%_))))
                       (_%g5344253457%_ _%g5344353461%_))))
               (_%g5344253457%_ _%g5344353461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5344153501%_
                                            (list _%var53342%_
                                                  _%Interface53344%_))))
                                     (if _%maybe?53348%_
                                         (let* ((_%g5350553513%_
                                                 (lambda (_%g5350653509%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5350653509%_)))
                                                (_%g5350453531%_
                                                 (lambda (_%g5350653517%_)
                                                   ((lambda (_%L53520%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L53520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L53365%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L53520%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5350653517%_))))
                                           (_%g5350453531%_ _%var53342%_))
                                         _%L53365%_)))
                               _%g5335153362%_))))
                      (_%g5334953535%_
                       (_%expand-body52542%_
                        _%var53342%_
                        _%Interface53344%_
                        _%body53345%_
                        (let ((_%$e53539%_ _%checked?53346%_))
                          (if _%$e53539%_
                              _%$e53539%_
                              _%checked-methods?53347%_))))))))
          (let* ((_%__stx8619886199%_ _%stx52539%_)
                 (_%g5255052693%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8619886199%_))))
            (let ((_%__kont8620186202%_
                   (lambda (_%L53270%_ _%L53272%_ _%L53273%_ _%L53274%_)
                     (let* ((_%g5329953307%_
                             (lambda (_%g5330053303%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5330053303%_)))
                            (_%g5329853334%_
                             (lambda (_%g5330053311%_)
                               ((lambda (_%L53314%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L53274%_
                                                    (cons _%L53273%_
                                                          (cons _%L53314%_
                                                                '())))
                                              (foldr (lambda (_%g5332553328%_
                                                              _%g5332653331%_)
                                                       (cons _%g5332553328%_
                                                             _%g5332653331%_))
                                                     '()
                                                     _%L53270%_))))
                                _%g5330053311%_))))
                       (_%g5329853334%_
                        (let ((__obj91296 (gx#syntax-local-value _%L53272%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj91296
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj91296
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj91296
                               'identifier)))))))
                  (_%__kont8620586206%_
                   (lambda (_%L53148%_ _%L53150%_ _%L53151%_)
                     (_%expand52544%_
                      _%L53151%_
                      _%L53150%_
                      (foldr (lambda (_%g5317453177%_ _%g5317553180%_)
                               (cons _%g5317453177%_ _%g5317553180%_))
                             '()
                             _%L53148%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8620986210%_
                   (lambda (_%L53026%_ _%L53028%_ _%L53029%_)
                     (_%expand52544%_
                      _%L53029%_
                      _%L53028%_
                      (foldr (lambda (_%g5305253055%_ _%g5305353058%_)
                               (cons _%g5305253055%_ _%g5305353058%_))
                             '()
                             _%L53026%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8621386214%_
                   (lambda (_%L52904%_ _%L52906%_ _%L52907%_)
                     (_%expand52544%_
                      _%L52907%_
                      _%L52906%_
                      (foldr (lambda (_%g5293052933%_ _%g5293152936%_)
                               (cons _%g5293052933%_ _%g5293152936%_))
                             '()
                             _%L52904%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8621786218%_
                   (lambda (_%L52780%_ _%L52782%_ _%L52783%_)
                     (_%expand52544%_
                      _%L52783%_
                      _%L52782%_
                      (foldr (lambda (_%g5280852811%_ _%g5280952814%_)
                               (cons _%g5280852811%_ _%g5280952814%_))
                             '()
                             _%L52780%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8643786438%_
                      (lambda (_%e5266452700%_
                               _%hd5266552704%_
                               _%tl5266652707%_
                               _%e5266752710%_
                               _%hd5266852714%_
                               _%tl5266952717%_
                               _%e5267052720%_
                               _%hd5267152724%_
                               _%tl5267252727%_
                               _%e5267352730%_
                               _%hd5267452734%_
                               _%tl5267552737%_
                               _%e5267652740%_
                               _%hd5267752744%_
                               _%tl5267852747%_
                               _%__splice8621986220%_
                               _%target5267952750%_
                               _%tl5268152753%_)
                        (letrec ((_%loop5268252756%_
                                  (lambda (_%hd5268052760%_ _%body5268652763%_)
                                    (if (gx#stx-pair? _%hd5268052760%_)
                                        (let ((_%e5268352766%_
                                               (gx#syntax-e _%hd5268052760%_)))
                                          (let ((_%lp-tl5268552773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5268352766%_)))
                                                (_%lp-hd5268452770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5268352766%_))))
                                            (_%loop5268252756%_
                                             _%lp-tl5268552773%_
                                             (cons _%lp-hd5268452770%_
                                                   _%body5268652763%_))))
                                        (let ((_%body5268752776%_
                                               (reverse _%body5268652763%_)))
                                          (let ((_%L52780%_ _%body5268752776%_)
                                                (_%L52782%_ _%hd5267752744%_)
                                                (_%L52783%_ _%hd5267152724%_))
                                            (if (and (gx#identifier?
                                                      _%L52783%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L52782%_)))
                                                (_%__kont8621786218%_
                                                 _%L52780%_
                                                 _%L52782%_
                                                 _%L52783%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))))))))
                          (_%loop5268252756%_ _%target5267952750%_ '()))))
                     (_%__match8639386394%_
                      (lambda (_%e5263752824%_
                               _%hd5263852828%_
                               _%tl5263952831%_
                               _%e5264052834%_
                               _%hd5264152838%_
                               _%tl5264252841%_
                               _%e5264352844%_
                               _%hd5264452848%_
                               _%tl5264552851%_
                               _%e5264652854%_
                               _%hd5264752858%_
                               _%tl5264852861%_
                               _%e5264952864%_
                               _%hd5265052868%_
                               _%tl5265152871%_
                               _%__splice8621586216%_
                               _%target5265252874%_
                               _%tl5265452877%_)
                        (letrec ((_%loop5265552880%_
                                  (lambda (_%hd5265352884%_ _%body5265952887%_)
                                    (if (gx#stx-pair? _%hd5265352884%_)
                                        (let ((_%e5265652890%_
                                               (gx#syntax-e _%hd5265352884%_)))
                                          (let ((_%lp-tl5265852897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5265652890%_)))
                                                (_%lp-hd5265752894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5265652890%_))))
                                            (_%loop5265552880%_
                                             _%lp-tl5265852897%_
                                             (cons _%lp-hd5265752894%_
                                                   _%body5265952887%_))))
                                        (let ((_%body5266052900%_
                                               (reverse _%body5265952887%_)))
                                          (let ((_%L52904%_ _%body5266052900%_)
                                                (_%L52906%_ _%hd5265052868%_)
                                                (_%L52907%_ _%hd5264452848%_))
                                            (if (and (gx#identifier?
                                                      _%L52907%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L52906%_)))
                                                (_%__kont8621386214%_
                                                 _%L52904%_
                                                 _%L52906%_
                                                 _%L52907%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))))))))
                          (_%loop5265552880%_ _%target5265252874%_ '()))))
                     (_%__match8634986350%_
                      (lambda (_%e5261052946%_
                               _%hd5261152950%_
                               _%tl5261252953%_
                               _%e5261352956%_
                               _%hd5261452960%_
                               _%tl5261552963%_
                               _%e5261652966%_
                               _%hd5261752970%_
                               _%tl5261852973%_
                               _%e5261952976%_
                               _%hd5262052980%_
                               _%tl5262152983%_
                               _%e5262252986%_
                               _%hd5262352990%_
                               _%tl5262452993%_
                               _%__splice8621186212%_
                               _%target5262552996%_
                               _%tl5262752999%_)
                        (letrec ((_%loop5262853002%_
                                  (lambda (_%hd5262653006%_ _%body5263253009%_)
                                    (if (gx#stx-pair? _%hd5262653006%_)
                                        (let ((_%e5262953012%_
                                               (gx#syntax-e _%hd5262653006%_)))
                                          (let ((_%lp-tl5263153019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5262953012%_)))
                                                (_%lp-hd5263053016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5262953012%_))))
                                            (_%loop5262853002%_
                                             _%lp-tl5263153019%_
                                             (cons _%lp-hd5263053016%_
                                                   _%body5263253009%_))))
                                        (let ((_%body5263353022%_
                                               (reverse _%body5263253009%_)))
                                          (let ((_%L53026%_ _%body5263353022%_)
                                                (_%L53028%_ _%hd5262352990%_)
                                                (_%L53029%_ _%hd5261752970%_))
                                            (if (and (gx#identifier?
                                                      _%L53029%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53028%_)))
                                                (_%__kont8620986210%_
                                                 _%L53026%_
                                                 _%L53028%_
                                                 _%L53029%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))))))))
                          (_%loop5262853002%_ _%target5262552996%_ '()))))
                     (_%__match8630586306%_
                      (lambda (_%e5258353068%_
                               _%hd5258453072%_
                               _%tl5258553075%_
                               _%e5258653078%_
                               _%hd5258753082%_
                               _%tl5258853085%_
                               _%e5258953088%_
                               _%hd5259053092%_
                               _%tl5259153095%_
                               _%e5259253098%_
                               _%hd5259353102%_
                               _%tl5259453105%_
                               _%e5259553108%_
                               _%hd5259653112%_
                               _%tl5259753115%_
                               _%__splice8620786208%_
                               _%target5259853118%_
                               _%tl5260053121%_)
                        (letrec ((_%loop5260153124%_
                                  (lambda (_%hd5259953128%_ _%body5260553131%_)
                                    (if (gx#stx-pair? _%hd5259953128%_)
                                        (let ((_%e5260253134%_
                                               (gx#syntax-e _%hd5259953128%_)))
                                          (let ((_%lp-tl5260453141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5260253134%_)))
                                                (_%lp-hd5260353138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5260253134%_))))
                                            (_%loop5260153124%_
                                             _%lp-tl5260453141%_
                                             (cons _%lp-hd5260353138%_
                                                   _%body5260553131%_))))
                                        (let ((_%body5260653144%_
                                               (reverse _%body5260553131%_)))
                                          (let ((_%L53148%_ _%body5260653144%_)
                                                (_%L53150%_ _%hd5259653112%_)
                                                (_%L53151%_ _%hd5259053092%_))
                                            (if (and (gx#identifier?
                                                      _%L53151%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53150%_)))
                                                (_%__kont8620586206%_
                                                 _%L53148%_
                                                 _%L53150%_
                                                 _%L53151%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))))))))
                          (_%loop5260153124%_ _%target5259853118%_ '()))))
                     (_%__match8628586286%_
                      (lambda (_%e5258353068%_
                               _%hd5258453072%_
                               _%tl5258553075%_
                               _%e5258653078%_
                               _%hd5258753082%_
                               _%tl5258853085%_
                               _%e5258953088%_
                               _%hd5259053092%_
                               _%tl5259153095%_
                               _%e5259253098%_
                               _%hd5259353102%_
                               _%tl5259453105%_)
                        (if (gx#identifier? _%hd5259353102%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g91478_|
                                 _%hd5259353102%_)
                                (if (gx#stx-pair? _%tl5259453105%_)
                                    (let ((_%e5259553108%_
                                           (gx#syntax-e _%tl5259453105%_)))
                                      (let ((_%tl5259753115%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5259553108%_)))
                                            (_%hd5259653112%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5259553108%_))))
                                        (if (gx#stx-null? _%tl5259753115%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5258853085%_)
                                                (let ((_%__splice8620786208%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5258853085%_
                                                        '0)))
                                                  (let ((_%tl5260053121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8620786208%_
                                                            '1)))
                                                        (_%target5259853118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8620786208%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5260053121%_)
                                                        (_%__match8630586306%_
                                                         _%e5258353068%_
                                                         _%hd5258453072%_
                                                         _%tl5258553075%_
                                                         _%e5258653078%_
                                                         _%hd5258753082%_
                                                         _%tl5258853085%_
                                                         _%e5258953088%_
                                                         _%hd5259053092%_
                                                         _%tl5259153095%_
                                                         _%e5259253098%_
                                                         _%hd5259353102%_
                                                         _%tl5259453105%_
                                                         _%e5259553108%_
                                                         _%hd5259653112%_
                                                         _%tl5259753115%_
                                                         _%__splice8620786208%_
                                                         _%target5259853118%_
                                                         _%tl5260053121%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5255052693%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5255052693%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5255052693%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g91479_|
                                     _%hd5259353102%_)
                                    (if (gx#stx-pair? _%tl5259453105%_)
                                        (let ((_%e5262252986%_
                                               (gx#syntax-e _%tl5259453105%_)))
                                          (let ((_%tl5262452993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5262252986%_)))
                                                (_%hd5262352990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5262252986%_))))
                                            (if (gx#stx-null? _%tl5262452993%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5258853085%_)
                                                    (let ((_%__splice8621186212%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5258853085%_
                                                            '0)))
                                                      (let ((_%tl5262752999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8621186212%_ '1)))
                    (_%target5262552996%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8621186212%_ '0))))
                (if (gx#stx-null? _%tl5262752999%_)
                    (_%__match8634986350%_
                     _%e5258353068%_
                     _%hd5258453072%_
                     _%tl5258553075%_
                     _%e5258653078%_
                     _%hd5258753082%_
                     _%tl5258853085%_
                     _%e5258953088%_
                     _%hd5259053092%_
                     _%tl5259153095%_
                     _%e5259253098%_
                     _%hd5259353102%_
                     _%tl5259453105%_
                     _%e5262252986%_
                     _%hd5262352990%_
                     _%tl5262452993%_
                     _%__splice8621186212%_
                     _%target5262552996%_
                     _%tl5262752999%_)
                    (let () (declare (not safe)) (_%g5255052693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5255052693%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5255052693%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g91480_|
                                         _%hd5259353102%_)
                                        (if (gx#stx-pair? _%tl5259453105%_)
                                            (let ((_%e5264952864%_
                                                   (gx#syntax-e
                                                    _%tl5259453105%_)))
                                              (let ((_%tl5265152871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5264952864%_)))
                                                    (_%hd5265052868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5264952864%_))))
                                                (if (gx#stx-null?
                                                     _%tl5265152871%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5258853085%_)
                                                        (let ((_%__splice8621586216%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5258853085%_
                                                                '0)))
                                                          (let ((_%tl5265452877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8621586216%_ '1)))
                        (_%target5265252874%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8621586216%_ '0))))
                    (if (gx#stx-null? _%tl5265452877%_)
                        (_%__match8639386394%_
                         _%e5258353068%_
                         _%hd5258453072%_
                         _%tl5258553075%_
                         _%e5258653078%_
                         _%hd5258753082%_
                         _%tl5258853085%_
                         _%e5258953088%_
                         _%hd5259053092%_
                         _%tl5259153095%_
                         _%e5259253098%_
                         _%hd5259353102%_
                         _%tl5259453105%_
                         _%e5264952864%_
                         _%hd5265052868%_
                         _%tl5265152871%_
                         _%__splice8621586216%_
                         _%target5265252874%_
                         _%tl5265452877%_)
                        (let () (declare (not safe)) (_%g5255052693%_)))))
                (let () (declare (not safe)) (_%g5255052693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5255052693%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5255052693%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g91481_|
                                             _%hd5259353102%_)
                                            (if (gx#stx-pair? _%tl5259453105%_)
                                                (let ((_%e5267652740%_
                                                       (gx#syntax-e
                                                        _%tl5259453105%_)))
                                                  (let ((_%tl5267852747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5267652740%_)))
                                                        (_%hd5267752744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5267652740%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5267852747%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5258853085%_)
                                                            (let ((_%__splice8621986220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5258853085%_
                            '0)))
                      (let ((_%tl5268152753%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8621986220%_ '1)))
                            (_%target5267952750%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8621986220%_ '0))))
                        (if (gx#stx-null? _%tl5268152753%_)
                            (_%__match8643786438%_
                             _%e5258353068%_
                             _%hd5258453072%_
                             _%tl5258553075%_
                             _%e5258653078%_
                             _%hd5258753082%_
                             _%tl5258853085%_
                             _%e5258953088%_
                             _%hd5259053092%_
                             _%tl5259153095%_
                             _%e5259253098%_
                             _%hd5259353102%_
                             _%tl5259453105%_
                             _%e5267652740%_
                             _%hd5267752744%_
                             _%tl5267852747%_
                             _%__splice8621986220%_
                             _%target5267952750%_
                             _%tl5268152753%_)
                            (let () (declare (not safe)) (_%g5255052693%_)))))
                    (let () (declare (not safe)) (_%g5255052693%_)))
                (let () (declare (not safe)) (_%g5255052693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5255052693%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5255052693%_))))))
                            (let () (declare (not safe)) (_%g5255052693%_)))))
                     (_%__match8626186262%_
                      (lambda (_%e5255653190%_
                               _%hd5255753194%_
                               _%tl5255853197%_
                               _%e5255953200%_
                               _%hd5256053204%_
                               _%tl5256153207%_
                               _%e5256253210%_
                               _%hd5256353214%_
                               _%tl5256453217%_
                               _%e5256553220%_
                               _%hd5256653224%_
                               _%tl5256753227%_
                               _%e5256853230%_
                               _%hd5256953234%_
                               _%tl5257053237%_
                               _%__splice8620386204%_
                               _%target5257153240%_
                               _%tl5257353243%_)
                        (letrec ((_%loop5257453246%_
                                  (lambda (_%hd5257253250%_ _%body5257853253%_)
                                    (if (gx#stx-pair? _%hd5257253250%_)
                                        (let ((_%e5257553256%_
                                               (gx#syntax-e _%hd5257253250%_)))
                                          (let ((_%lp-tl5257753263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5257553256%_)))
                                                (_%lp-hd5257653260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5257553256%_))))
                                            (_%loop5257453246%_
                                             _%lp-tl5257753263%_
                                             (cons _%lp-hd5257653260%_
                                                   _%body5257853253%_))))
                                        (let ((_%body5257953266%_
                                               (reverse _%body5257853253%_)))
                                          (let ((_%L53270%_ _%body5257953266%_)
                                                (_%L53272%_ _%hd5256953234%_)
                                                (_%L53273%_ _%hd5256653224%_)
                                                (_%L53274%_ _%hd5256353214%_))
                                            (if (let ((__tmp91482
                                                       (gx#syntax-local-value
                                                        _%L53272%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp91482))
                                                (_%__kont8620186202%_
                                                 _%L53270%_
                                                 _%L53272%_
                                                 _%L53273%_
                                                 _%L53274%_)
                                                (_%__match8628586286%_
                                                 _%e5255653190%_
                                                 _%hd5255753194%_
                                                 _%tl5255853197%_
                                                 _%e5255953200%_
                                                 _%hd5256053204%_
                                                 _%tl5256153207%_
                                                 _%e5256253210%_
                                                 _%hd5256353214%_
                                                 _%tl5256453217%_
                                                 _%e5256553220%_
                                                 _%hd5256653224%_
                                                 _%tl5256753227%_))))))))
                          (_%loop5257453246%_ _%target5257153240%_ '())))))
                (if (gx#stx-pair? _%__stx8619886199%_)
                    (let ((_%e5255653190%_ (gx#syntax-e _%__stx8619886199%_)))
                      (let ((_%tl5255853197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5255653190%_)))
                            (_%hd5255753194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5255653190%_))))
                        (if (gx#stx-pair? _%tl5255853197%_)
                            (let ((_%e5255953200%_
                                   (gx#syntax-e _%tl5255853197%_)))
                              (let ((_%tl5256153207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5255953200%_)))
                                    (_%hd5256053204%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5255953200%_))))
                                (if (gx#stx-pair? _%hd5256053204%_)
                                    (let ((_%e5256253210%_
                                           (gx#syntax-e _%hd5256053204%_)))
                                      (let ((_%tl5256453217%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5256253210%_)))
                                            (_%hd5256353214%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5256253210%_))))
                                        (if (gx#stx-pair? _%tl5256453217%_)
                                            (let ((_%e5256553220%_
                                                   (gx#syntax-e
                                                    _%tl5256453217%_)))
                                              (let ((_%tl5256753227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5256553220%_)))
                                                    (_%hd5256653224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5256553220%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5256753227%_)
                                                    (let ((_%e5256853230%_
                                                           (gx#syntax-e
                                                            _%tl5256753227%_)))
                                                      (let ((_%tl5257053237%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5256853230%_)))
                    (_%hd5256953234%_
                     (let () (declare (not safe)) (##car _%e5256853230%_))))
                (if (gx#stx-null? _%tl5257053237%_)
                    (if (gx#stx-pair/null? _%tl5256153207%_)
                        (let ((_%__splice8620386204%_
                               (gx#syntax-split-splice->vector
                                _%tl5256153207%_
                                '0)))
                          (let ((_%tl5257353243%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8620386204%_ '1)))
                                (_%target5257153240%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8620386204%_ '0))))
                            (if (gx#stx-null? _%tl5257353243%_)
                                (_%__match8626186262%_
                                 _%e5255653190%_
                                 _%hd5255753194%_
                                 _%tl5255853197%_
                                 _%e5255953200%_
                                 _%hd5256053204%_
                                 _%tl5256153207%_
                                 _%e5256253210%_
                                 _%hd5256353214%_
                                 _%tl5256453217%_
                                 _%e5256553220%_
                                 _%hd5256653224%_
                                 _%tl5256753227%_
                                 _%e5256853230%_
                                 _%hd5256953234%_
                                 _%tl5257053237%_
                                 _%__splice8620386204%_
                                 _%target5257153240%_
                                 _%tl5257353243%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5255052693%_)))))
                        (let () (declare (not safe)) (_%g5255052693%_)))
                    (let () (declare (not safe)) (_%g5255052693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5255052693%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5255052693%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5255052693%_)))))
                            (let () (declare (not safe)) (_%g5255052693%_)))))
                    (let () (declare (not safe)) (_%g5255052693%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx53764%_)
        (let* ((_%__stx8644086441%_ _%stx53764%_)
               (_%g5376953829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8644086441%_))))
          (let ((_%__kont8644386444%_
                 (lambda (_%L54391%_ _%L54393%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L54393%_ '()))
                               (foldr (lambda (_%g5440954412%_ _%g5441054415%_)
                                        (cons _%g5440954412%_ _%g5441054415%_))
                                      '()
                                      _%L54391%_)))))
                (_%__kont8644786448%_
                 (lambda (_%L53977%_ _%L53979%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L53979%_)
                       (let* ((_%g5399954006%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx53764%_
                                _%L53979%_))
                              (_%E5400154012%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5399954006%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5400254310%_
                               (lambda (_%parts54016%_ _%var54018%_)
                                 (let ((_%$e54020%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var54018%_))))
                                   (if _%$e54020%_
                                       ((lambda (_%te54024%_)
                                          (let _%loop54027%_ ((_%parts54030%_
                                                               _%parts54016%_)
                                                              (_%type54032%_
                                                               (##direct-structure-ref
                                                                _%te54024%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object54033%_
                                                               _%var54018%_)
                                                              (_%checked-method?54034%_
                                                               (##direct-structure-ref
                                                                _%te54024%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?54035%_
                                                               '#f))
                                            (let* ((_%parts5403654044%_
                                                    _%parts54030%_)
                                                   (_%else5403854105%_
                                                    (lambda ()
                                                      (let* ((_%g5405654064%_
                                                              (lambda (_%g5405754060%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5405754060%_)))
                     (_%g5405554101%_
                      (lambda (_%g5405754068%_)
                        ((lambda (_%L54071%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L54071%_
                                       (foldr (lambda (_%g5409254095%_
                                                       _%g5409354098%_)
                                                (cons _%g5409254095%_
                                                      _%g5409354098%_))
                                              '()
                                              _%L53977%_))))
                         _%g5405754068%_))))
                (_%g5405554101%_ _%object54033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5404054284%_
                                                    (lambda (_%rest54109%_
                                                             _%part54111%_)
                                                      (if (and (not _%nil-check?54035%_)
                                                               (let ((__tmp91483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part54111%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp91483)))
                  (let ((_%str54115%_ (symbol->string _%part54111%_)))
                    (_%loop54027%_
                     (cons (let ((__tmp91484
                                  (substring
                                   _%str54115%_
                                   '1
                                   (string-length _%str54115%_))))
                             (declare (not safe))
                             (##string->symbol __tmp91484))
                           _%rest54109%_)
                     _%type54032%_
                     _%object54033%_
                     _%checked-method?54034%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type54032%_))
                      (let* ((_%g5412054135%_
                              (lambda (_%g5412154131%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5412154131%_)))
                             (_%g5411954204%_
                              (lambda (_%g5412154139%_)
                                (if (gx#stx-pair? _%g5412154139%_)
                                    (let ((_%e5412454142%_
                                           (gx#syntax-e _%g5412154139%_)))
                                      (let ((_%hd5412554146%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5412454142%_)))
                                            (_%tl5412654149%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5412454142%_))))
                                        (if (gx#stx-pair? _%tl5412654149%_)
                                            (let ((_%e5412754152%_
                                                   (gx#syntax-e
                                                    _%tl5412654149%_)))
                                              (let ((_%hd5412854156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5412754152%_)))
                                                    (_%tl5412954159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5412754152%_))))
                                                (if (gx#stx-null?
                                                     _%tl5412954159%_)
                                                    ((lambda (_%L54162%_
                                                              _%L54164%_)
                                                       (if (null? _%rest54109%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L54162%_ (cons _%L54164%_ '()))
                               (foldr (lambda (_%g5418354186%_ _%g5418454189%_)
                                        (cons _%g5418354186%_ _%g5418454189%_))
                                      '()
                                      _%L53977%_)))
                   (let ((_%$e54192%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type54032%_
                           _%part54111%_)))
                     (if _%$e54192%_
                         ((lambda (_%slot-type54196%_)
                            (let ((_%slot-type54199%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx53764%_
                                      _%slot-type54196%_))))
                              (_%loop54027%_
                               _%rest54109%_
                               _%slot-type54199%_
                               (cons _%L54162%_ (cons _%L54164%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type54032%_
                                _%part54111%_)
                               '#f)))
                          _%$e54192%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx53764%_
                          _%L53979%_
                          _%part54111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5412854156%_
                                                     _%hd5412554146%_)
                                                    (_%g5412054135%_
                                                     _%g5412154139%_))))
                                            (_%g5412054135%_
                                             _%g5412154139%_))))
                                    (_%g5412054135%_ _%g5412154139%_)))))
                        (_%g5411954204%_
                         (list (if _%nil-check?54035%_
                                   (cons 'check-nil!
                                         (cons _%object54033%_ '()))
                                   _%object54033%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx53764%_
                                _%type54032%_
                                _%part54111%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type54032%_))
                          (if (null? _%rest54109%_)
                              (let* ((_%g5421054225%_
                                      (lambda (_%g5421154221%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5421154221%_)))
                                     (_%g5420954278%_
                                      (lambda (_%g5421154229%_)
                                        (if (gx#stx-pair? _%g5421154229%_)
                                            (let ((_%e5421454232%_
                                                   (gx#syntax-e
                                                    _%g5421154229%_)))
                                              (let ((_%hd5421554236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5421454232%_)))
                                                    (_%tl5421654239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5421454232%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5421654239%_)
                                                    (let ((_%e5421754242%_
                                                           (gx#syntax-e
                                                            _%tl5421654239%_)))
                                                      (let ((_%hd5421854246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5421754242%_)))
                    (_%tl5421954249%_
                     (let () (declare (not safe)) (##cdr _%e5421754242%_))))
                (if (gx#stx-null? _%tl5421954249%_)
                    ((lambda (_%L54252%_ _%L54254%_)
                       (cons _%L54252%_
                             (cons _%L54254%_
                                   (foldr (lambda (_%g5426954272%_
                                                   _%g5427054275%_)
                                            (cons _%g5426954272%_
                                                  _%g5427054275%_))
                                          '()
                                          _%L53977%_))))
                     _%hd5421854246%_
                     _%hd5421554236%_)
                    (_%g5421054225%_ _%g5421154229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5421054225%_
                                                     _%g5421154229%_))))
                                            (_%g5421054225%_
                                             _%g5421154229%_)))))
                                (_%g5420954278%_
                                 (list (if _%nil-check?54035%_
                                           (cons 'check-nil!
                                                 (cons _%object54033%_ '()))
                                           _%object54033%_)
                                       (gx#stx-identifier
                                        _%L53979%_
                                        (if _%checked-method?54034%_ '"" '"&")
                                        (let ((__obj91297 _%type54032%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj91297
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj91297
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj91297
                                               'name)))
                                        '"-"
                                        _%part54111%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx53764%_
                               _%L53979%_
                               _%part54111%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx53764%_
                           _%type54032%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5403654044%_)
                                                  (let ((_%hd5404154288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5403654044%_)))
                                                        (_%tl5404254291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5403654044%_))))
                                                    (let* ((_%part54294%_
                                                            _%hd5404154288%_)
                                                           (_%rest54297%_
                                                            _%tl5404254291%_))
                                                      (_%K5404054284%_
                                                       _%rest54297%_
                                                       _%part54294%_)))
                                                  (_%else5403854105%_)))))
                                        _%$e54020%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L53979%_
                                                   (foldr (lambda (_%g5430154304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5430254307%_)
                    (cons _%g5430154304%_ _%g5430254307%_))
                  '()
                  _%L53977%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5399954006%_)
                             (let ((_%hd5400354314%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5399954006%_)))
                                   (_%tl5400454317%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5399954006%_))))
                               (let* ((_%var54320%_ _%hd5400354314%_)
                                      (_%parts54323%_ _%tl5400454317%_))
                                 (_%K5400254310%_
                                  _%parts54323%_
                                  _%var54320%_)))
                             (_%E5400154012%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L53979%_
                                   (foldr (lambda (_%g5432554328%_
                                                   _%g5432654331%_)
                                            (cons _%g5432554328%_
                                                  _%g5432654331%_))
                                          '()
                                          _%L53977%_))))))
                (_%__kont8645186452%_
                 (lambda (_%L53876%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5389153894%_ _%g5389253897%_)
                                  (cons _%g5389153894%_ _%g5389253897%_))
                                '()
                                _%L53876%_)))))
            (let* ((_%__match8652786528%_
                    (lambda (_%e5381253836%_
                             _%hd5381353840%_
                             _%tl5381453843%_
                             _%__splice8645386454%_
                             _%target5381553846%_
                             _%tl5381753849%_)
                      (letrec ((_%loop5381853852%_
                                (lambda (_%hd5381653856%_ _%arg5382253859%_)
                                  (if (gx#stx-pair? _%hd5381653856%_)
                                      (let ((_%e5381953862%_
                                             (gx#syntax-e _%hd5381653856%_)))
                                        (let ((_%lp-tl5382153869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5381953862%_)))
                                              (_%lp-hd5382053866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5381953862%_))))
                                          (_%loop5381853852%_
                                           _%lp-tl5382153869%_
                                           (cons _%lp-hd5382053866%_
                                                 _%arg5382253859%_))))
                                      (let ((_%arg5382353872%_
                                             (reverse _%arg5382253859%_)))
                                        (_%__kont8645186452%_
                                         _%arg5382353872%_))))))
                        (_%loop5381853852%_ _%target5381553846%_ '()))))
                   (_%__match8651386514%_
                    (lambda (_%e5379053907%_
                             _%hd5379153911%_
                             _%tl5379253914%_
                             _%e5379353917%_
                             _%hd5379453921%_
                             _%tl5379553924%_
                             _%e5379653927%_
                             _%hd5379753931%_
                             _%tl5379853934%_
                             _%e5379953937%_
                             _%hd5380053941%_
                             _%tl5380153944%_
                             _%__splice8644986450%_
                             _%target5380253947%_
                             _%tl5380453950%_)
                      (letrec ((_%loop5380553953%_
                                (lambda (_%hd5380353957%_ _%rand5380953960%_)
                                  (if (gx#stx-pair? _%hd5380353957%_)
                                      (let ((_%e5380653963%_
                                             (gx#syntax-e _%hd5380353957%_)))
                                        (let ((_%lp-tl5380853970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5380653963%_)))
                                              (_%lp-hd5380753967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5380653963%_))))
                                          (_%loop5380553953%_
                                           _%lp-tl5380853970%_
                                           (cons _%lp-hd5380753967%_
                                                 _%rand5380953960%_))))
                                      (let ((_%rand5381053973%_
                                             (reverse _%rand5380953960%_)))
                                        (_%__kont8644786448%_
                                         _%rand5381053973%_
                                         _%hd5380053941%_))))))
                        (_%loop5380553953%_ _%target5380253947%_ '()))))
                   (_%__match8648786488%_
                    (lambda (_%e5379053907%_
                             _%hd5379153911%_
                             _%tl5379253914%_
                             _%e5379353917%_
                             _%hd5379453921%_
                             _%tl5379553924%_)
                      (if (gx#stx-pair? _%hd5379453921%_)
                          (let ((_%e5379653927%_
                                 (gx#syntax-e _%hd5379453921%_)))
                            (let ((_%tl5379853934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5379653927%_)))
                                  (_%hd5379753931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5379653927%_))))
                              (if (gx#identifier? _%hd5379753931%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91485_|
                                       _%hd5379753931%_)
                                      (if (gx#stx-pair? _%tl5379853934%_)
                                          (let ((_%e5379953937%_
                                                 (gx#syntax-e
                                                  _%tl5379853934%_)))
                                            (let ((_%tl5380153944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5379953937%_)))
                                                  (_%hd5380053941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5379953937%_))))
                                              (if (gx#stx-null?
                                                   _%tl5380153944%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5379553924%_)
                                                      (let ((_%__splice8644986450%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5379553924%_
                                                              '0)))
                                                        (let ((_%tl5380453950%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8644986450%_ '1)))
                      (_%target5380253947%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8644986450%_ '0))))
                  (if (gx#stx-null? _%tl5380453950%_)
                      (_%__match8651386514%_
                       _%e5379053907%_
                       _%hd5379153911%_
                       _%tl5379253914%_
                       _%e5379353917%_
                       _%hd5379453921%_
                       _%tl5379553924%_
                       _%e5379653927%_
                       _%hd5379753931%_
                       _%tl5379853934%_
                       _%e5379953937%_
                       _%hd5380053941%_
                       _%tl5380153944%_
                       _%__splice8644986450%_
                       _%target5380253947%_
                       _%tl5380453950%_)
                      (if (gx#stx-pair/null? _%tl5379253914%_)
                          (let ((_%__splice8645386454%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5379253914%_
                                  '0)))
                            (let ((_%tl5381753849%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8645386454%_ '1)))
                                  (_%target5381553846%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8645386454%_
                                      '0))))
                              (if (gx#stx-null? _%tl5381753849%_)
                                  (_%__match8652786528%_
                                   _%e5379053907%_
                                   _%hd5379153911%_
                                   _%tl5379253914%_
                                   _%__splice8645386454%_
                                   _%target5381553846%_
                                   _%tl5381753849%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5376953829%_)))))
                          (let () (declare (not safe)) (_%g5376953829%_))))))
              (if (gx#stx-pair/null? _%tl5379253914%_)
                  (let ((_%__splice8645386454%_
                         (gx#syntax-split-splice->vector _%tl5379253914%_ '0)))
                    (let ((_%tl5381753849%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '1)))
                          (_%target5381553846%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '0))))
                      (if (gx#stx-null? _%tl5381753849%_)
                          (_%__match8652786528%_
                           _%e5379053907%_
                           _%hd5379153911%_
                           _%tl5379253914%_
                           _%__splice8645386454%_
                           _%target5381553846%_
                           _%tl5381753849%_)
                          (let () (declare (not safe)) (_%g5376953829%_)))))
                  (let () (declare (not safe)) (_%g5376953829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5379253914%_)
                                                      (let ((_%__splice8645386454%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5379253914%_
                                                              '0)))
                                                        (let ((_%tl5381753849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8645386454%_ '1)))
                      (_%target5381553846%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8645386454%_ '0))))
                  (if (gx#stx-null? _%tl5381753849%_)
                      (_%__match8652786528%_
                       _%e5379053907%_
                       _%hd5379153911%_
                       _%tl5379253914%_
                       _%__splice8645386454%_
                       _%target5381553846%_
                       _%tl5381753849%_)
                      (let () (declare (not safe)) (_%g5376953829%_)))))
              (let () (declare (not safe)) (_%g5376953829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5379253914%_)
                                              (let ((_%__splice8645386454%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5379253914%_
                                                      '0)))
                                                (let ((_%tl5381753849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8645386454%_
                                                          '1)))
                                                      (_%target5381553846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8645386454%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5381753849%_)
                                                      (_%__match8652786528%_
                                                       _%e5379053907%_
                                                       _%hd5379153911%_
                                                       _%tl5379253914%_
                                                       _%__splice8645386454%_
                                                       _%target5381553846%_
                                                       _%tl5381753849%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5376953829%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5376953829%_))))
                                      (if (gx#stx-pair/null? _%tl5379253914%_)
                                          (let ((_%__splice8645386454%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5379253914%_
                                                  '0)))
                                            (let ((_%tl5381753849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8645386454%_
                                                      '1)))
                                                  (_%target5381553846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8645386454%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5381753849%_)
                                                  (_%__match8652786528%_
                                                   _%e5379053907%_
                                                   _%hd5379153911%_
                                                   _%tl5379253914%_
                                                   _%__splice8645386454%_
                                                   _%target5381553846%_
                                                   _%tl5381753849%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5376953829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5376953829%_))))
                                  (if (gx#stx-pair/null? _%tl5379253914%_)
                                      (let ((_%__splice8645386454%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5379253914%_
                                              '0)))
                                        (let ((_%tl5381753849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8645386454%_
                                                  '1)))
                                              (_%target5381553846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8645386454%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5381753849%_)
                                              (_%__match8652786528%_
                                               _%e5379053907%_
                                               _%hd5379153911%_
                                               _%tl5379253914%_
                                               _%__splice8645386454%_
                                               _%target5381553846%_
                                               _%tl5381753849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5376953829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5376953829%_))))))
                          (if (gx#stx-pair/null? _%tl5379253914%_)
                              (let ((_%__splice8645386454%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5379253914%_
                                      '0)))
                                (let ((_%tl5381753849%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '1)))
                                      (_%target5381553846%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5381753849%_)
                                      (_%__match8652786528%_
                                       _%e5379053907%_
                                       _%hd5379153911%_
                                       _%tl5379253914%_
                                       _%__splice8645386454%_
                                       _%target5381553846%_
                                       _%tl5381753849%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5376953829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5376953829%_))))))
                   (_%__match8647586476%_
                    (lambda (_%e5377354341%_
                             _%hd5377454345%_
                             _%tl5377554348%_
                             _%e5377654351%_
                             _%hd5377754355%_
                             _%tl5377854358%_
                             _%__splice8644586446%_
                             _%target5377954361%_
                             _%tl5378154364%_)
                      (letrec ((_%loop5378254367%_
                                (lambda (_%hd5378054371%_ _%rand5378654374%_)
                                  (if (gx#stx-pair? _%hd5378054371%_)
                                      (let ((_%e5378354377%_
                                             (gx#syntax-e _%hd5378054371%_)))
                                        (let ((_%lp-tl5378554384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5378354377%_)))
                                              (_%lp-hd5378454381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5378354377%_))))
                                          (_%loop5378254367%_
                                           _%lp-tl5378554384%_
                                           (cons _%lp-hd5378454381%_
                                                 _%rand5378654374%_))))
                                      (let ((_%rand5378754387%_
                                             (reverse _%rand5378654374%_)))
                                        (let ((_%L54391%_ _%rand5378754387%_)
                                              (_%L54393%_ _%hd5377754355%_))
                                          (if (gx#identifier? _%L54393%_)
                                              (_%__kont8644386444%_
                                               _%L54391%_
                                               _%L54393%_)
                                              (_%__match8648786488%_
                                               _%e5377354341%_
                                               _%hd5377454345%_
                                               _%tl5377554348%_
                                               _%e5377654351%_
                                               _%hd5377754355%_
                                               _%tl5377854358%_))))))))
                        (_%loop5378254367%_ _%target5377954361%_ '())))))
              (if (gx#stx-pair? _%__stx8644086441%_)
                  (let ((_%e5377354341%_ (gx#syntax-e _%__stx8644086441%_)))
                    (let ((_%tl5377554348%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5377354341%_)))
                          (_%hd5377454345%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5377354341%_))))
                      (if (gx#stx-pair? _%tl5377554348%_)
                          (let ((_%e5377654351%_
                                 (gx#syntax-e _%tl5377554348%_)))
                            (let ((_%tl5377854358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5377654351%_)))
                                  (_%hd5377754355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5377654351%_))))
                              (if (gx#stx-pair/null? _%tl5377854358%_)
                                  (let ((_%__splice8644586446%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5377854358%_
                                          '0)))
                                    (let ((_%tl5378154364%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8644586446%_
                                              '1)))
                                          (_%target5377954361%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8644586446%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5378154364%_)
                                          (_%__match8647586476%_
                                           _%e5377354341%_
                                           _%hd5377454345%_
                                           _%tl5377554348%_
                                           _%e5377654351%_
                                           _%hd5377754355%_
                                           _%tl5377854358%_
                                           _%__splice8644586446%_
                                           _%target5377954361%_
                                           _%tl5378154364%_)
                                          (if (gx#stx-pair? _%hd5377754355%_)
                                              (let ((_%e5379653927%_
                                                     (gx#syntax-e
                                                      _%hd5377754355%_)))
                                                (let ((_%tl5379853934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5379653927%_)))
                                                      (_%hd5379753931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5379653927%_))))
                                                  (if (gx#identifier?
                                                       _%hd5379753931%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91485_|
                                                           _%hd5379753931%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5379853934%_)
                                                              (let ((_%e5379953937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5379853934%_)))
                        (let ((_%tl5380153944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5379953937%_)))
                              (_%hd5380053941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5379953937%_))))
                          (if (gx#stx-pair/null? _%tl5377554348%_)
                              (let ((_%__splice8645386454%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5377554348%_
                                      '0)))
                                (let ((_%tl5381753849%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '1)))
                                      (_%target5381553846%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5381753849%_)
                                      (_%__match8652786528%_
                                       _%e5377354341%_
                                       _%hd5377454345%_
                                       _%tl5377554348%_
                                       _%__splice8645386454%_
                                       _%target5381553846%_
                                       _%tl5381753849%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5376953829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5376953829%_)))))
                      (if (gx#stx-pair/null? _%tl5377554348%_)
                          (let ((_%__splice8645386454%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5377554348%_
                                  '0)))
                            (let ((_%tl5381753849%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8645386454%_ '1)))
                                  (_%target5381553846%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8645386454%_
                                      '0))))
                              (if (gx#stx-null? _%tl5381753849%_)
                                  (_%__match8652786528%_
                                   _%e5377354341%_
                                   _%hd5377454345%_
                                   _%tl5377554348%_
                                   _%__splice8645386454%_
                                   _%target5381553846%_
                                   _%tl5381753849%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5376953829%_)))))
                          (let () (declare (not safe)) (_%g5376953829%_))))
                  (if (gx#stx-pair/null? _%tl5377554348%_)
                      (let ((_%__splice8645386454%_
                             (gx#syntax-split-splice->vector
                              _%tl5377554348%_
                              '0)))
                        (let ((_%tl5381753849%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8645386454%_ '1)))
                              (_%target5381553846%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8645386454%_ '0))))
                          (if (gx#stx-null? _%tl5381753849%_)
                              (_%__match8652786528%_
                               _%e5377354341%_
                               _%hd5377454345%_
                               _%tl5377554348%_
                               _%__splice8645386454%_
                               _%target5381553846%_
                               _%tl5381753849%_)
                              (let ()
                                (declare (not safe))
                                (_%g5376953829%_)))))
                      (let () (declare (not safe)) (_%g5376953829%_))))
              (if (gx#stx-pair/null? _%tl5377554348%_)
                  (let ((_%__splice8645386454%_
                         (gx#syntax-split-splice->vector _%tl5377554348%_ '0)))
                    (let ((_%tl5381753849%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '1)))
                          (_%target5381553846%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '0))))
                      (if (gx#stx-null? _%tl5381753849%_)
                          (_%__match8652786528%_
                           _%e5377354341%_
                           _%hd5377454345%_
                           _%tl5377554348%_
                           _%__splice8645386454%_
                           _%target5381553846%_
                           _%tl5381753849%_)
                          (let () (declare (not safe)) (_%g5376953829%_)))))
                  (let () (declare (not safe)) (_%g5376953829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5377554348%_)
                                                  (let ((_%__splice8645386454%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5377554348%_
                                                          '0)))
                                                    (let ((_%tl5381753849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8645386454%_
                                                              '1)))
                                                          (_%target5381553846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8645386454%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5381753849%_)
                                                          (_%__match8652786528%_
                                                           _%e5377354341%_
                                                           _%hd5377454345%_
                                                           _%tl5377554348%_
                                                           _%__splice8645386454%_
                                                           _%target5381553846%_
                                                           _%tl5381753849%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5376953829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5376953829%_)))))))
                                  (if (gx#stx-pair? _%hd5377754355%_)
                                      (let ((_%e5379653927%_
                                             (gx#syntax-e _%hd5377754355%_)))
                                        (let ((_%tl5379853934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5379653927%_)))
                                              (_%hd5379753931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5379653927%_))))
                                          (if (gx#identifier? _%hd5379753931%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g91485_|
                                                   _%hd5379753931%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5379853934%_)
                                                      (let ((_%e5379953937%_
                                                             (gx#syntax-e
                                                              _%tl5379853934%_)))
                                                        (let ((_%tl5380153944%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5379953937%_)))
                      (_%hd5380053941%_
                       (let () (declare (not safe)) (##car _%e5379953937%_))))
                  (if (gx#stx-pair/null? _%tl5377554348%_)
                      (let ((_%__splice8645386454%_
                             (gx#syntax-split-splice->vector
                              _%tl5377554348%_
                              '0)))
                        (let ((_%tl5381753849%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8645386454%_ '1)))
                              (_%target5381553846%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8645386454%_ '0))))
                          (if (gx#stx-null? _%tl5381753849%_)
                              (_%__match8652786528%_
                               _%e5377354341%_
                               _%hd5377454345%_
                               _%tl5377554348%_
                               _%__splice8645386454%_
                               _%target5381553846%_
                               _%tl5381753849%_)
                              (let ()
                                (declare (not safe))
                                (_%g5376953829%_)))))
                      (let () (declare (not safe)) (_%g5376953829%_)))))
              (if (gx#stx-pair/null? _%tl5377554348%_)
                  (let ((_%__splice8645386454%_
                         (gx#syntax-split-splice->vector _%tl5377554348%_ '0)))
                    (let ((_%tl5381753849%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '1)))
                          (_%target5381553846%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8645386454%_ '0))))
                      (if (gx#stx-null? _%tl5381753849%_)
                          (_%__match8652786528%_
                           _%e5377354341%_
                           _%hd5377454345%_
                           _%tl5377554348%_
                           _%__splice8645386454%_
                           _%target5381553846%_
                           _%tl5381753849%_)
                          (let () (declare (not safe)) (_%g5376953829%_)))))
                  (let () (declare (not safe)) (_%g5376953829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5377554348%_)
                                                      (let ((_%__splice8645386454%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5377554348%_
                                                              '0)))
                                                        (let ((_%tl5381753849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8645386454%_ '1)))
                      (_%target5381553846%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8645386454%_ '0))))
                  (if (gx#stx-null? _%tl5381753849%_)
                      (_%__match8652786528%_
                       _%e5377354341%_
                       _%hd5377454345%_
                       _%tl5377554348%_
                       _%__splice8645386454%_
                       _%target5381553846%_
                       _%tl5381753849%_)
                      (let () (declare (not safe)) (_%g5376953829%_)))))
              (let () (declare (not safe)) (_%g5376953829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5377554348%_)
                                                  (let ((_%__splice8645386454%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5377554348%_
                                                          '0)))
                                                    (let ((_%tl5381753849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8645386454%_
                                                              '1)))
                                                          (_%target5381553846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8645386454%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5381753849%_)
                                                          (_%__match8652786528%_
                                                           _%e5377354341%_
                                                           _%hd5377454345%_
                                                           _%tl5377554348%_
                                                           _%__splice8645386454%_
                                                           _%target5381553846%_
                                                           _%tl5381753849%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5376953829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5376953829%_))))))
                                      (if (gx#stx-pair/null? _%tl5377554348%_)
                                          (let ((_%__splice8645386454%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5377554348%_
                                                  '0)))
                                            (let ((_%tl5381753849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8645386454%_
                                                      '1)))
                                                  (_%target5381553846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8645386454%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5381753849%_)
                                                  (_%__match8652786528%_
                                                   _%e5377354341%_
                                                   _%hd5377454345%_
                                                   _%tl5377554348%_
                                                   _%__splice8645386454%_
                                                   _%target5381553846%_
                                                   _%tl5381753849%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5376953829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5376953829%_)))))))
                          (if (gx#stx-pair/null? _%tl5377554348%_)
                              (let ((_%__splice8645386454%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5377554348%_
                                      '0)))
                                (let ((_%tl5381753849%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '1)))
                                      (_%target5381553846%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8645386454%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5381753849%_)
                                      (_%__match8652786528%_
                                       _%e5377354341%_
                                       _%hd5377454345%_
                                       _%tl5377554348%_
                                       _%__splice8645386454%_
                                       _%target5381553846%_
                                       _%tl5381753849%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5376953829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5376953829%_))))))
                  (let () (declare (not safe)) (_%g5376953829%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx54425%_)
        (let* ((_%__stx8653086531%_ _%stx54425%_)
               (_%g5442954450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8653086531%_))))
          (let ((_%__kont8653386534%_
                 (lambda (_%L54518%_)
                   (let* ((_%g5453054537%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx54425%_
                            _%L54518%_))
                          (_%E5453254543%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5453054537%_
                                    '([var . parts]))
                             (void)))
                          (_%K5453354759%_
                           (lambda (_%parts54547%_ _%var54549%_)
                             (let ((_%$e54551%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var54549%_))))
                               (if _%$e54551%_
                                   ((lambda (_%te54555%_)
                                      (let _%loop54558%_ ((_%parts54561%_
                                                           _%parts54547%_)
                                                          (_%type54563%_
                                                           (##direct-structure-ref
                                                            _%te54555%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object54564%_
                                                           _%var54549%_)
                                                          (_%nil-check?54565%_
                                                           '#f))
                                        (let* ((_%parts5456654574%_
                                                _%parts54561%_)
                                               (_%else5456854586%_
                                                (lambda () _%object54564%_))
                                               (_%K5457054741%_
                                                (lambda (_%rest54590%_
                                                         _%part54592%_)
                                                  (if (and (not _%nil-check?54565%_)
                                                           (let ((__tmp91486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part54592%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp91486)))
              (let ((_%str54596%_ (symbol->string _%part54592%_)))
                (_%loop54558%_
                 (cons (let ((__tmp91487
                              (substring
                               _%str54596%_
                               '1
                               (string-length _%str54596%_))))
                         (declare (not safe))
                         (##string->symbol __tmp91487))
                       _%rest54590%_)
                 _%type54563%_
                 _%object54564%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type54563%_))
                  (let* ((_%g5460154616%_
                          (lambda (_%g5460254612%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5460254612%_)))
                         (_%g5460054733%_
                          (lambda (_%g5460254620%_)
                            (if (gx#stx-pair? _%g5460254620%_)
                                (let ((_%e5460554623%_
                                       (gx#syntax-e _%g5460254620%_)))
                                  (let ((_%hd5460654627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5460554623%_)))
                                        (_%tl5460754630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5460554623%_))))
                                    (if (gx#stx-pair? _%tl5460754630%_)
                                        (let ((_%e5460854633%_
                                               (gx#syntax-e _%tl5460754630%_)))
                                          (let ((_%hd5460954637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5460854633%_)))
                                                (_%tl5461054640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5460854633%_))))
                                            (if (gx#stx-null? _%tl5461054640%_)
                                                ((lambda (_%L54643%_
                                                          _%L54645%_)
                                                   (if (null? _%rest54590%_)
                                                       (let ((_%$e54675%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type54563%_
                                                               _%part54592%_)))
                                                         (if _%$e54675%_
                                                             ((lambda (_%slot-type54679%_)
                                                                (let* ((_%g5468254690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5468354686%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5468354686%_)))
                               (_%g5468154713%_
                                (lambda (_%g5468354694%_)
                                  ((lambda (_%L54697%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L54697%_ '()))
                                                 (cons (cons _%L54643%_
                                                             (cons _%L54645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5468354694%_))))
                          (_%g5468154713%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx54425%_
                              _%slot-type54679%_)))))
                      _%$e54675%_)
                     (if _%nil-check?54565%_
                         (cons _%L54643%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L54645%_ '()))
                                     '()))
                         (cons _%L54643%_ (cons _%L54645%_ '())))))
               (let ((_%$e54721%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type54563%_
                       _%part54592%_)))
                 (if _%$e54721%_
                     ((lambda (_%type54725%_)
                        (let ((_%type54728%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx54425%_
                                  _%type54725%_))))
                          (if _%nil-check?54565%_
                              (_%loop54558%_
                               _%rest54590%_
                               _%type54728%_
                               (cons _%L54643%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L54645%_ '()))
                                           '()))
                               '#f)
                              (_%loop54558%_
                               _%rest54590%_
                               _%type54728%_
                               (cons _%L54643%_ (cons _%L54645%_ '()))
                               '#f))))
                      _%$e54721%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx54425%_
                      _%L54518%_
                      _%part54592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5460954637%_
                                                 _%hd5460654627%_)
                                                (_%g5460154616%_
                                                 _%g5460254620%_))))
                                        (_%g5460154616%_ _%g5460254620%_))))
                                (_%g5460154616%_ _%g5460254620%_)))))
                    (_%g5460054733%_
                     (list (if _%nil-check?54565%_
                               (cons 'check-nil! (cons _%object54564%_ '()))
                               _%object54564%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx54425%_
                            _%type54563%_
                            _%part54592%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type54563%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx54425%_
                       _%type54563%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5456654574%_)
                                              (let ((_%hd5457154745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5456654574%_)))
                                                    (_%tl5457254748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5456654574%_))))
                                                (let* ((_%part54751%_
                                                        _%hd5457154745%_)
                                                       (_%rest54754%_
                                                        _%tl5457254748%_))
                                                  (_%K5457054741%_
                                                   _%rest54754%_
                                                   _%part54751%_)))
                                              (_%else5456854586%_)))))
                                    _%$e54551%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L54518%_ '())))))))
                     (if (pair? _%g5453054537%_)
                         (let ((_%hd5453454763%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5453054537%_)))
                               (_%tl5453554766%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5453054537%_))))
                           (let* ((_%var54769%_ _%hd5453454763%_)
                                  (_%parts54772%_ _%tl5453554766%_))
                             (_%K5453354759%_ _%parts54772%_ _%var54769%_)))
                         (_%E5453254543%_)))))
                (_%__kont8653586536%_
                 (lambda (_%L54477%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L54477%_ '())))))
            (let ((_%__match8655186552%_
                   (lambda (_%e5443254498%_
                            _%hd5443354502%_
                            _%tl5443454505%_
                            _%e5443554508%_
                            _%hd5443654512%_
                            _%tl5443754515%_)
                     (let ((_%L54518%_ _%hd5443654512%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L54518%_)
                           (_%__kont8653386534%_ _%L54518%_)
                           (_%__kont8653586536%_ _%hd5443654512%_))))))
              (if (gx#stx-pair? _%__stx8653086531%_)
                  (let ((_%e5443254498%_ (gx#syntax-e _%__stx8653086531%_)))
                    (let ((_%tl5443454505%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5443254498%_)))
                          (_%hd5443354502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5443254498%_))))
                      (if (gx#stx-pair? _%tl5443454505%_)
                          (let ((_%e5443554508%_
                                 (gx#syntax-e _%tl5443454505%_)))
                            (let ((_%tl5443754515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5443554508%_)))
                                  (_%hd5443654512%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5443554508%_))))
                              (if (gx#stx-null? _%tl5443754515%_)
                                  (_%__match8655186552%_
                                   _%e5443254498%_
                                   _%hd5443354502%_
                                   _%tl5443454505%_
                                   _%e5443554508%_
                                   _%hd5443654512%_
                                   _%tl5443754515%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5442954450%_)))))
                          (let () (declare (not safe)) (_%g5442954450%_)))))
                  (let () (declare (not safe)) (_%g5442954450%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx54779%_)
        (let* ((_%__stx8656886569%_ _%stx54779%_)
               (_%g5478354812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8656886569%_))))
          (let ((_%__kont8657186572%_
                 (lambda (_%L54904%_ _%L54906%_)
                   (let* ((_%g5492054927%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx54779%_
                            _%L54906%_))
                          (_%E5492254933%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5492054927%_
                                    '([var . parts]))
                             (void)))
                          (_%K5492355163%_
                           (lambda (_%parts54937%_ _%var54939%_)
                             (let ((_%$e54941%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var54939%_))))
                               (if _%$e54941%_
                                   ((lambda (_%te54945%_)
                                      (let _%loop54948%_ ((_%parts54951%_
                                                           _%parts54937%_)
                                                          (_%type54953%_
                                                           (##direct-structure-ref
                                                            _%te54945%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object54954%_
                                                           _%var54939%_)
                                                          (_%checked-mutator?54955%_
                                                           (##direct-structure-ref
                                                            _%te54945%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?54956%_
                                                           '#f))
                                        (let* ((_%parts5495754964%_
                                                _%parts54951%_)
                                               (_%E5495954970%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5495754964%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5496055145%_
                                                (lambda (_%rest54974%_
                                                         _%part54976%_)
                                                  (if (and (not _%nil-check?54956%_)
                                                           (let ((__tmp91488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part54976%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp91488)))
              (let ((_%str54980%_ (symbol->string _%part54976%_)))
                (_%loop54948%_
                 (cons (let ((__tmp91489
                              (substring
                               _%str54980%_
                               '1
                               (string-length _%str54980%_))))
                         (declare (not safe))
                         (##string->symbol __tmp91489))
                       _%rest54974%_)
                 _%type54953%_
                 _%object54954%_
                 _%checked-mutator?54955%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type54953%_))
                  (if (null? _%rest54974%_)
                      (let* ((_%g5498755002%_
                              (lambda (_%g5498854998%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5498854998%_)))
                             (_%g5498655059%_
                              (lambda (_%g5498855006%_)
                                (if (gx#stx-pair? _%g5498855006%_)
                                    (let ((_%e5499155009%_
                                           (gx#syntax-e _%g5498855006%_)))
                                      (let ((_%hd5499255013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5499155009%_)))
                                            (_%tl5499355016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5499155009%_))))
                                        (if (gx#stx-pair? _%tl5499355016%_)
                                            (let ((_%e5499455019%_
                                                   (gx#syntax-e
                                                    _%tl5499355016%_)))
                                              (let ((_%hd5499555023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5499455019%_)))
                                                    (_%tl5499655026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5499455019%_))))
                                                (if (gx#stx-null?
                                                     _%tl5499655026%_)
                                                    ((lambda (_%L55029%_
                                                              _%L55031%_)
                                                       (if _%nil-check?54956%_
                                                           (cons _%L55029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L55031%_ '()))
                               (cons _%L54904%_ '())))
                   (cons _%L55029%_ (cons _%L55031%_ (cons _%L54904%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5499555023%_
                                                     _%hd5499255013%_)
                                                    (_%g5498755002%_
                                                     _%g5498855006%_))))
                                            (_%g5498755002%_
                                             _%g5498855006%_))))
                                    (_%g5498755002%_ _%g5498855006%_)))))
                        (_%g5498655059%_
                         (list _%object54954%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx54779%_
                                _%type54953%_
                                _%part54976%_
                                (if _%checked-mutator?54955%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type54953%_
                                     _%part54976%_)
                                    '#f)))))
                      (let ((_%$e55063%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type54953%_
                              _%part54976%_)))
                        (if _%$e55063%_
                            ((lambda (_%type55067%_)
                               (let* ((_%type55070%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx54779%_
                                          _%type55067%_)))
                                      (_%g5507355088%_
                                       (lambda (_%g5507455084%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5507455084%_)))
                                      (_%g5507255135%_
                                       (lambda (_%g5507455092%_)
                                         (if (gx#stx-pair? _%g5507455092%_)
                                             (let ((_%e5507755095%_
                                                    (gx#syntax-e
                                                     _%g5507455092%_)))
                                               (let ((_%hd5507855099%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5507755095%_)))
                                                     (_%tl5507955102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5507755095%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5507955102%_)
                                                     (let ((_%e5508055105%_
                                                            (gx#syntax-e
                                                             _%tl5507955102%_)))
                                                       (let ((_%hd5508155109%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5508055105%_)))
                     (_%tl5508255112%_
                      (let () (declare (not safe)) (##cdr _%e5508055105%_))))
                 (if (gx#stx-null? _%tl5508255112%_)
                     ((lambda (_%L55115%_ _%L55117%_)
                        (_%loop54948%_
                         _%rest54974%_
                         _%type55070%_
                         (cons _%L55115%_ (cons _%L55117%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type55070%_
                          _%part54976%_)
                         '#f))
                      _%hd5508155109%_
                      _%hd5507855099%_)
                     (_%g5507355088%_ _%g5507455092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5507355088%_
                                                      _%g5507455092%_))))
                                             (_%g5507355088%_
                                              _%g5507455092%_)))))
                                 (_%g5507255135%_
                                  (list (if _%nil-check?54956%_
                                            (cons 'check-nil!
                                                  (cons _%object54954%_ '()))
                                            _%object54954%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx54779%_
                                         _%type55070%_
                                         _%part54976%_)))))
                             _%$e55063%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx54779%_
                             _%L54906%_
                             _%part54976%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type54953%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx54779%_
                       _%type54953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5495754964%_)
                                              (let ((_%hd5496155149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5495754964%_)))
                                                    (_%tl5496255152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5495754964%_))))
                                                (let* ((_%part55155%_
                                                        _%hd5496155149%_)
                                                       (_%rest55158%_
                                                        _%tl5496255152%_))
                                                  (_%K5496055145%_
                                                   _%rest55158%_
                                                   _%part55155%_)))
                                              (_%E5495954970%_)))))
                                    _%$e54941%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx54779%_)))))))
                     (if (pair? _%g5492054927%_)
                         (let ((_%hd5492455167%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5492054927%_)))
                               (_%tl5492555170%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5492054927%_))))
                           (let* ((_%var55173%_ _%hd5492455167%_)
                                  (_%parts55176%_ _%tl5492555170%_))
                             (_%K5492355163%_ _%parts55176%_ _%var55173%_)))
                         (_%E5492254933%_)))))
                (_%__kont8657386574%_
                 (lambda (_%L54849%_ _%L54851%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx54779%_)))))
            (let ((_%__match8659586596%_
                   (lambda (_%e5478754874%_
                            _%hd5478854878%_
                            _%tl5478954881%_
                            _%e5479054884%_
                            _%hd5479154888%_
                            _%tl5479254891%_
                            _%e5479354894%_
                            _%hd5479454898%_
                            _%tl5479554901%_)
                     (let ((_%L54904%_ _%hd5479454898%_)
                           (_%L54906%_ _%hd5479154888%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L54906%_)
                           (_%__kont8657186572%_ _%L54904%_ _%L54906%_)
                           (_%__kont8657386574%_
                            _%hd5479454898%_
                            _%hd5479154888%_))))))
              (if (gx#stx-pair? _%__stx8656886569%_)
                  (let ((_%e5478754874%_ (gx#syntax-e _%__stx8656886569%_)))
                    (let ((_%tl5478954881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5478754874%_)))
                          (_%hd5478854878%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5478754874%_))))
                      (if (gx#stx-pair? _%tl5478954881%_)
                          (let ((_%e5479054884%_
                                 (gx#syntax-e _%tl5478954881%_)))
                            (let ((_%tl5479254891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5479054884%_)))
                                  (_%hd5479154888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5479054884%_))))
                              (if (gx#stx-pair? _%tl5479254891%_)
                                  (let ((_%e5479354894%_
                                         (gx#syntax-e _%tl5479254891%_)))
                                    (let ((_%tl5479554901%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5479354894%_)))
                                          (_%hd5479454898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5479354894%_))))
                                      (if (gx#stx-null? _%tl5479554901%_)
                                          (_%__match8659586596%_
                                           _%e5478754874%_
                                           _%hd5478854878%_
                                           _%tl5478954881%_
                                           _%e5479054884%_
                                           _%hd5479154888%_
                                           _%tl5479254891%_
                                           _%e5479354894%_
                                           _%hd5479454898%_
                                           _%tl5479554901%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5478354812%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5478354812%_)))))
                          (let () (declare (not safe)) (_%g5478354812%_)))))
                  (let () (declare (not safe)) (_%g5478354812%_))))))))))

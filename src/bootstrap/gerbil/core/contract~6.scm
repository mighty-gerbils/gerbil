(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g84917_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84918_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84919_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84922_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84923_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84926_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84927_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84928_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84929_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84933_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84934_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84935_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84936_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84940_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46398%_)
        (let* ((_%__stx7923779238%_ _%stx46398%_)
               (_%g4640746616%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7923779238%_))))
          (let ((_%__kont7924079241%_
                 (lambda (_%L47522%_
                          _%L47524%_
                          _%L47525%_
                          _%L47526%_
                          _%L47527%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47527%_ (cons _%L47526%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47527%_
                                                       (cons _%L47525%_
                                                             (cons _%L47524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4757047573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4757147576%_)
                  (cons _%g4757047573%_ _%g4757147576%_))
                '()
                _%L47522%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7924479245%_
                 (lambda (_%L47366%_
                          _%L47368%_
                          _%L47369%_
                          _%L47370%_
                          _%L47371%_
                          _%L47372%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47372%_ (cons _%L47371%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47372%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47369%_ (cons _%L47368%_ '())))
                           (foldr (lambda (_%g4741647419%_ _%g4741747422%_)
                                    (cons _%g4741647419%_ _%g4741747422%_))
                                  '()
                                  _%L47366%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7924879249%_
                 (lambda (_%L47183%_ _%L47185%_ _%L47186%_ _%L47187%_)
                   (let ((_%meta47224%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46398%_
                             _%L47185%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47224%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47187%_
                                           (cons _%L47186%_
                                                 (cons _%L47185%_ '())))
                                     (foldr (lambda (_%g4722847231%_
                                                     _%g4722947234%_)
                                              (cons _%g4722847231%_
                                                    _%g4722947234%_))
                                            '()
                                            _%L47183%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47224%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47187%_
                                               (cons _%L47186%_
                                                     (cons _%L47185%_ '())))
                                         (foldr (lambda (_%g4723847241%_
                                                         _%g4723947244%_)
                                                  (cons _%g4723847241%_
                                                        _%g4723947244%_))
                                                '()
                                                _%L47183%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46398%_
                              _%L47185%_
                              _%meta47224%_))))))
                (_%__kont7925279253%_
                 (lambda (_%L47061%_ _%L47063%_ _%L47064%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47064%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47063%_ '())))
                               (foldr (lambda (_%g4708747090%_ _%g4708847093%_)
                                        (cons _%g4708747090%_ _%g4708847093%_))
                                      '()
                                      _%L47061%_)))))
                (_%__kont7925679257%_
                 (lambda (_%L46919%_
                          _%L46921%_
                          _%L46922%_
                          _%L46923%_
                          _%L46924%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46924%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46923%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46924%_
                                                       (cons _%L46922%_
                                                             (cons _%L46921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4696546968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4696646971%_)
                  (cons _%g4696546968%_ _%g4696646971%_))
                '()
                _%L46919%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7926079261%_
                 (lambda (_%L46777%_ _%L46779%_ _%L46780%_ _%L46781%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46781%_ _%L46780%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46779%_
                                                 (foldr (lambda (_%g4680346806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4680446809%_)
                  (cons _%g4680346806%_ _%g4680446809%_))
                '()
                _%L46777%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7926479265%_
                 (lambda (_%L46673%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4669146694%_ _%g4669246697%_)
                                        (cons _%g4669146694%_ _%g4669246697%_))
                                      '()
                                      _%L46673%_))))))
            (let* ((_%__match7957079571%_
                    (lambda (_%e4659646623%_
                             _%hd4659746627%_
                             _%tl4659846630%_
                             _%e4659946633%_
                             _%hd4660046637%_
                             _%tl4660146640%_
                             _%__splice7926679267%_
                             _%target4660246643%_
                             _%tl4660446646%_)
                      (letrec ((_%loop4660546649%_
                                (lambda (_%hd4660346653%_ _%body4660946656%_)
                                  (if (gx#stx-pair? _%hd4660346653%_)
                                      (let ((_%e4660646659%_
                                             (gx#syntax-e _%hd4660346653%_)))
                                        (let ((_%lp-tl4660846666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660646659%_)))
                                              (_%lp-hd4660746663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660646659%_))))
                                          (_%loop4660546649%_
                                           _%lp-tl4660846666%_
                                           (cons _%lp-hd4660746663%_
                                                 _%body4660946656%_))))
                                      (let ((_%body4661046669%_
                                             (reverse _%body4660946656%_)))
                                        (_%__kont7926479265%_
                                         _%body4661046669%_))))))
                        (_%loop4660546649%_ _%target4660246643%_ '()))))
                   (_%__match7954879549%_
                    (lambda (_%e4657446707%_
                             _%hd4657546711%_
                             _%tl4657646714%_
                             _%e4657746717%_
                             _%hd4657846721%_
                             _%tl4657946724%_
                             _%e4658046727%_
                             _%hd4658146731%_
                             _%tl4658246734%_
                             _%e4658346737%_
                             _%hd4658446741%_
                             _%tl4658546744%_
                             _%__splice7926279263%_
                             _%target4658646747%_
                             _%tl4658846750%_)
                      (letrec ((_%loop4658946753%_
                                (lambda (_%hd4658746757%_ _%body4659346760%_)
                                  (if (gx#stx-pair? _%hd4658746757%_)
                                      (let ((_%e4659046763%_
                                             (gx#syntax-e _%hd4658746757%_)))
                                        (let ((_%lp-tl4659246770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659046763%_)))
                                              (_%lp-hd4659146767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659046763%_))))
                                          (_%loop4658946753%_
                                           _%lp-tl4659246770%_
                                           (cons _%lp-hd4659146767%_
                                                 _%body4659346760%_))))
                                      (let ((_%body4659446773%_
                                             (reverse _%body4659346760%_)))
                                        (let ((_%L46777%_ _%body4659446773%_)
                                              (_%L46779%_ _%tl4658246734%_)
                                              (_%L46780%_ _%tl4658546744%_)
                                              (_%L46781%_ _%hd4658446741%_))
                                          (if (gx#identifier? _%L46781%_)
                                              (_%__kont7926079261%_
                                               _%L46777%_
                                               _%L46779%_
                                               _%L46780%_
                                               _%L46781%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_)))))))))
                        (_%loop4658946753%_ _%target4658646747%_ '()))))
                   (_%__match7953479535%_
                    (lambda (_%e4657446707%_
                             _%hd4657546711%_
                             _%tl4657646714%_
                             _%e4657746717%_
                             _%hd4657846721%_
                             _%tl4657946724%_
                             _%e4658046727%_
                             _%hd4658146731%_
                             _%tl4658246734%_)
                      (if (gx#stx-pair? _%hd4658146731%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4658146731%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (if (gx#stx-pair/null? _%tl4657946724%_)
                                  (let ((_%__splice7926279263%_
                                         (gx#syntax-split-splice
                                          _%tl4657946724%_
                                          '0)))
                                    (let ((_%tl4658846750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '1)))
                                          (_%target4658646747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658846750%_)
                                          (_%__match7954879549%_
                                           _%e4657446707%_
                                           _%hd4657546711%_
                                           _%tl4657646714%_
                                           _%e4657746717%_
                                           _%hd4657846721%_
                                           _%tl4657946724%_
                                           _%e4658046727%_
                                           _%hd4658146731%_
                                           _%tl4658246734%_
                                           _%e4658346737%_
                                           _%hd4658446741%_
                                           _%tl4658546744%_
                                           _%__splice7926279263%_
                                           _%target4658646747%_
                                           _%tl4658846750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                   (_%__match7951679517%_
                    (lambda (_%e4654046819%_
                             _%hd4654146823%_
                             _%tl4654246826%_
                             _%e4654346829%_
                             _%hd4654446833%_
                             _%tl4654546836%_
                             _%e4654646839%_
                             _%hd4654746843%_
                             _%tl4654846846%_
                             _%e4654946849%_
                             _%hd4655046853%_
                             _%tl4655146856%_
                             _%e4655246859%_
                             _%hd4655346863%_
                             _%tl4655446866%_
                             _%e4655546869%_
                             _%hd4655646873%_
                             _%tl4655746876%_
                             _%e4655846879%_
                             _%hd4655946883%_
                             _%tl4656046886%_
                             _%__splice7925879259%_
                             _%target4656146889%_
                             _%tl4656346892%_)
                      (letrec ((_%loop4656446895%_
                                (lambda (_%hd4656246899%_ _%body4656846902%_)
                                  (if (gx#stx-pair? _%hd4656246899%_)
                                      (let ((_%e4656546905%_
                                             (gx#syntax-e _%hd4656246899%_)))
                                        (let ((_%lp-tl4656746912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4656546905%_)))
                                              (_%lp-hd4656646909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4656546905%_))))
                                          (_%loop4656446895%_
                                           _%lp-tl4656746912%_
                                           (cons _%lp-hd4656646909%_
                                                 _%body4656846902%_))))
                                      (let ((_%body4656946915%_
                                             (reverse _%body4656846902%_)))
                                        (let ((_%L46919%_ _%body4656946915%_)
                                              (_%L46921%_ _%hd4655946883%_)
                                              (_%L46922%_ _%hd4655646873%_)
                                              (_%L46923%_ _%hd4655346863%_)
                                              (_%L46924%_ _%hd4654746843%_))
                                          (if (and (gx#identifier? _%L46924%_)
                                                   (gx#identifier? _%L46921%_)
                                                   (gx#identifier? _%L46922%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46922%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46922%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46922%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46922%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7925679257%_
                                               _%L46919%_
                                               _%L46921%_
                                               _%L46922%_
                                               _%L46923%_
                                               _%L46924%_)
                                              (_%__match7953479535%_
                                               _%e4654046819%_
                                               _%hd4654146823%_
                                               _%tl4654246826%_
                                               _%e4654346829%_
                                               _%hd4654446833%_
                                               _%tl4654546836%_
                                               _%e4654646839%_
                                               _%hd4654746843%_
                                               _%tl4654846846%_))))))))
                        (_%loop4656446895%_ _%target4656146889%_ '()))))
                   (_%__match7946079461%_
                    (lambda (_%e4651146981%_
                             _%hd4651246985%_
                             _%tl4651346988%_
                             _%e4651446991%_
                             _%hd4651546995%_
                             _%tl4651646998%_
                             _%e4651747001%_
                             _%hd4651847005%_
                             _%tl4651947008%_
                             _%e4652047011%_
                             _%hd4652147015%_
                             _%tl4652247018%_
                             _%e4652347021%_
                             _%hd4652447025%_
                             _%tl4652547028%_
                             _%__splice7925479255%_
                             _%target4652647031%_
                             _%tl4652847034%_)
                      (letrec ((_%loop4652947037%_
                                (lambda (_%hd4652747041%_ _%body4653347044%_)
                                  (if (gx#stx-pair? _%hd4652747041%_)
                                      (let ((_%e4653047047%_
                                             (gx#syntax-e _%hd4652747041%_)))
                                        (let ((_%lp-tl4653247054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4653047047%_)))
                                              (_%lp-hd4653147051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4653047047%_))))
                                          (_%loop4652947037%_
                                           _%lp-tl4653247054%_
                                           (cons _%lp-hd4653147051%_
                                                 _%body4653347044%_))))
                                      (let ((_%body4653447057%_
                                             (reverse _%body4653347044%_)))
                                        (let ((_%L47061%_ _%body4653447057%_)
                                              (_%L47063%_ _%hd4652447025%_)
                                              (_%L47064%_ _%hd4651847005%_))
                                          (if (gx#identifier? _%L47064%_)
                                              (_%__kont7925279253%_
                                               _%L47061%_
                                               _%L47063%_
                                               _%L47064%_)
                                              (_%__match7953479535%_
                                               _%e4651146981%_
                                               _%hd4651246985%_
                                               _%tl4651346988%_
                                               _%e4651446991%_
                                               _%hd4651546995%_
                                               _%tl4651646998%_
                                               _%e4651747001%_
                                               _%hd4651847005%_
                                               _%tl4651947008%_))))))))
                        (_%loop4652947037%_ _%target4652647031%_ '()))))
                   (_%__match7944079441%_
                    (lambda (_%e4651146981%_
                             _%hd4651246985%_
                             _%tl4651346988%_
                             _%e4651446991%_
                             _%hd4651546995%_
                             _%tl4651646998%_
                             _%e4651747001%_
                             _%hd4651847005%_
                             _%tl4651947008%_
                             _%e4652047011%_
                             _%hd4652147015%_
                             _%tl4652247018%_)
                      (if (gx#identifier? _%hd4652147015%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84917_|
                               _%hd4652147015%_)
                              (if (gx#stx-pair? _%tl4652247018%_)
                                  (let ((_%e4652347021%_
                                         (gx#syntax-e _%tl4652247018%_)))
                                    (let ((_%tl4652547028%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4652347021%_)))
                                          (_%hd4652447025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4652347021%_))))
                                      (if (gx#stx-null? _%tl4652547028%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4651646998%_)
                                              (let ((_%__splice7925479255%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651646998%_
                                                      '0)))
                                                (let ((_%tl4652847034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '1)))
                                                      (_%target4652647031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652847034%_)
                                                      (_%__match7946079461%_
                                                       _%e4651146981%_
                                                       _%hd4651246985%_
                                                       _%tl4651346988%_
                                                       _%e4651446991%_
                                                       _%hd4651546995%_
                                                       _%tl4651646998%_
                                                       _%e4651747001%_
                                                       _%hd4651847005%_
                                                       _%tl4651947008%_
                                                       _%e4652047011%_
                                                       _%hd4652147015%_
                                                       _%tl4652247018%_
                                                       _%e4652347021%_
                                                       _%hd4652447025%_
                                                       _%tl4652547028%_
                                                       _%__splice7925479255%_
                                                       _%target4652647031%_
                                                       _%tl4652847034%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4651847005%_)
                                                          (let ((_%e4658346737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4651847005%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651847005%_)
                                                  (let ((_%e4658346737%_
                                                         (gx#syntax-e
                                                          _%hd4651847005%_)))
                                                    (let ((_%tl4658546744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658346737%_)))
                                                          (_%hd4658446741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658346737%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640746616%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))
                                          (if (gx#stx-pair? _%tl4652547028%_)
                                              (let ((_%e4655546869%_
                                                     (gx#syntax-e
                                                      _%tl4652547028%_)))
                                                (let ((_%tl4655746876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655546869%_)))
                                                      (_%hd4655646873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655546869%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655746876%_)
                                                      (let ((_%e4655846879%_
                                                             (gx#syntax-e
                                                              _%tl4655746876%_)))
                                                        (let ((_%tl4656046886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655846879%_)))
                      (_%hd4655946883%_
                       (let () (declare (not safe)) (##car _%e4655846879%_))))
                  (if (gx#stx-null? _%tl4656046886%_)
                      (if (gx#stx-pair/null? _%tl4651646998%_)
                          (let ((_%__splice7925879259%_
                                 (gx#syntax-split-splice _%tl4651646998%_ '0)))
                            (let ((_%tl4656346892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925879259%_ '1)))
                                  (_%target4656146889%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925879259%_
                                      '0))))
                              (if (gx#stx-null? _%tl4656346892%_)
                                  (_%__match7951679517%_
                                   _%e4651146981%_
                                   _%hd4651246985%_
                                   _%tl4651346988%_
                                   _%e4651446991%_
                                   _%hd4651546995%_
                                   _%tl4651646998%_
                                   _%e4651747001%_
                                   _%hd4651847005%_
                                   _%tl4651947008%_
                                   _%e4652047011%_
                                   _%hd4652147015%_
                                   _%tl4652247018%_
                                   _%e4652347021%_
                                   _%hd4652447025%_
                                   _%tl4652547028%_
                                   _%e4655546869%_
                                   _%hd4655646873%_
                                   _%tl4655746876%_
                                   _%e4655846879%_
                                   _%hd4655946883%_
                                   _%tl4656046886%_
                                   _%__splice7925879259%_
                                   _%target4656146889%_
                                   _%tl4656346892%_)
                                  (if (gx#stx-pair? _%hd4651847005%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4651847005%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))
                          (if (gx#stx-pair? _%hd4651847005%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4651847005%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                      (if (gx#stx-pair? _%hd4651847005%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4651847005%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (if (gx#stx-pair/null? _%tl4651646998%_)
                                  (let ((_%__splice7926279263%_
                                         (gx#syntax-split-splice
                                          _%tl4651646998%_
                                          '0)))
                                    (let ((_%tl4658846750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '1)))
                                          (_%target4658646747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658846750%_)
                                          (_%__match7954879549%_
                                           _%e4651146981%_
                                           _%hd4651246985%_
                                           _%tl4651346988%_
                                           _%e4651446991%_
                                           _%hd4651546995%_
                                           _%tl4651646998%_
                                           _%e4651747001%_
                                           _%hd4651847005%_
                                           _%tl4651947008%_
                                           _%e4658346737%_
                                           _%hd4658446741%_
                                           _%tl4658546744%_
                                           _%__splice7926279263%_
                                           _%target4658646747%_
                                           _%tl4658846750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_))))))
              (if (gx#stx-pair? _%hd4651847005%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4651847005%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4651646998%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4651646998%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4651146981%_
                                   _%hd4651246985%_
                                   _%tl4651346988%_
                                   _%e4651446991%_
                                   _%hd4651546995%_
                                   _%tl4651646998%_
                                   _%e4651747001%_
                                   _%hd4651847005%_
                                   _%tl4651947008%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651847005%_)
                                                  (let ((_%e4658346737%_
                                                         (gx#syntax-e
                                                          _%hd4651847005%_)))
                                                    (let ((_%tl4658546744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658346737%_)))
                                                          (_%hd4658446741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658346737%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4651646998%_)
                                                          (let ((_%__splice7926279263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4651646998%_ '0)))
                    (let ((_%tl4658846750%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '1)))
                          (_%target4658646747%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '0))))
                      (if (gx#stx-null? _%tl4658846750%_)
                          (_%__match7954879549%_
                           _%e4651146981%_
                           _%hd4651246985%_
                           _%tl4651346988%_
                           _%e4651446991%_
                           _%hd4651546995%_
                           _%tl4651646998%_
                           _%e4651747001%_
                           _%hd4651847005%_
                           _%tl4651947008%_
                           _%e4658346737%_
                           _%hd4658446741%_
                           _%tl4658546744%_
                           _%__splice7926279263%_
                           _%target4658646747%_
                           _%tl4658846750%_)
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))))
                                  (if (gx#stx-pair? _%hd4651847005%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4651847005%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4651646998%_)
                                              (let ((_%__splice7926279263%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651646998%_
                                                      '0)))
                                                (let ((_%tl4658846750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '1)))
                                                      (_%target4658646747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658846750%_)
                                                      (_%__match7954879549%_
                                                       _%e4651146981%_
                                                       _%hd4651246985%_
                                                       _%tl4651346988%_
                                                       _%e4651446991%_
                                                       _%hd4651546995%_
                                                       _%tl4651646998%_
                                                       _%e4651747001%_
                                                       _%hd4651847005%_
                                                       _%tl4651947008%_
                                                       _%e4658346737%_
                                                       _%hd4658446741%_
                                                       _%tl4658546744%_
                                                       _%__splice7926279263%_
                                                       _%target4658646747%_
                                                       _%tl4658846750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640746616%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                              (if (gx#stx-pair? _%hd4651847005%_)
                                  (let ((_%e4658346737%_
                                         (gx#syntax-e _%hd4651847005%_)))
                                    (let ((_%tl4658546744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4658346737%_)))
                                          (_%hd4658446741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4658346737%_))))
                                      (if (gx#stx-pair/null? _%tl4651646998%_)
                                          (let ((_%__splice7926279263%_
                                                 (gx#syntax-split-splice
                                                  _%tl4651646998%_
                                                  '0)))
                                            (let ((_%tl4658846750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7926279263%_
                                                      '1)))
                                                  (_%target4658646747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7926279263%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4658846750%_)
                                                  (_%__match7954879549%_
                                                   _%e4651146981%_
                                                   _%hd4651246985%_
                                                   _%tl4651346988%_
                                                   _%e4651446991%_
                                                   _%hd4651546995%_
                                                   _%tl4651646998%_
                                                   _%e4651747001%_
                                                   _%hd4651847005%_
                                                   _%tl4651947008%_
                                                   _%e4658346737%_
                                                   _%hd4658446741%_
                                                   _%tl4658546744%_
                                                   _%__splice7926279263%_
                                                   _%target4658646747%_
                                                   _%tl4658846750%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                          (if (gx#stx-pair? _%hd4651847005%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4651847005%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (if (gx#stx-pair/null? _%tl4651646998%_)
                                      (let ((_%__splice7926279263%_
                                             (gx#syntax-split-splice
                                              _%tl4651646998%_
                                              '0)))
                                        (let ((_%tl4658846750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7926279263%_
                                                  '1)))
                                              (_%target4658646747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7926279263%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4658846750%_)
                                              (_%__match7954879549%_
                                               _%e4651146981%_
                                               _%hd4651246985%_
                                               _%tl4651346988%_
                                               _%e4651446991%_
                                               _%hd4651546995%_
                                               _%tl4651646998%_
                                               _%e4651747001%_
                                               _%hd4651847005%_
                                               _%tl4651947008%_
                                               _%e4658346737%_
                                               _%hd4658446741%_
                                               _%tl4658546744%_
                                               _%__splice7926279263%_
                                               _%target4658646747%_
                                               _%tl4658846750%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_))))))
                   (_%__match7941679417%_
                    (lambda (_%e4648447103%_
                             _%hd4648547107%_
                             _%tl4648647110%_
                             _%e4648747113%_
                             _%hd4648847117%_
                             _%tl4648947120%_
                             _%e4649047123%_
                             _%hd4649147127%_
                             _%tl4649247130%_
                             _%e4649347133%_
                             _%hd4649447137%_
                             _%tl4649547140%_
                             _%e4649647143%_
                             _%hd4649747147%_
                             _%tl4649847150%_
                             _%__splice7925079251%_
                             _%target4649947153%_
                             _%tl4650147156%_)
                      (letrec ((_%loop4650247159%_
                                (lambda (_%hd4650047163%_ _%body4650647166%_)
                                  (if (gx#stx-pair? _%hd4650047163%_)
                                      (let ((_%e4650347169%_
                                             (gx#syntax-e _%hd4650047163%_)))
                                        (let ((_%lp-tl4650547176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4650347169%_)))
                                              (_%lp-hd4650447173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4650347169%_))))
                                          (_%loop4650247159%_
                                           _%lp-tl4650547176%_
                                           (cons _%lp-hd4650447173%_
                                                 _%body4650647166%_))))
                                      (let ((_%body4650747179%_
                                             (reverse _%body4650647166%_)))
                                        (let ((_%L47183%_ _%body4650747179%_)
                                              (_%L47185%_ _%hd4649747147%_)
                                              (_%L47186%_ _%hd4649447137%_)
                                              (_%L47187%_ _%hd4649147127%_))
                                          (if (and (gx#identifier? _%L47187%_)
                                                   (gx#identifier? _%L47185%_)
                                                   (gx#identifier? _%L47186%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47186%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47186%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47186%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47186%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7924879249%_
                                               _%L47183%_
                                               _%L47185%_
                                               _%L47186%_
                                               _%L47187%_)
                                              (_%__match7944079441%_
                                               _%e4648447103%_
                                               _%hd4648547107%_
                                               _%tl4648647110%_
                                               _%e4648747113%_
                                               _%hd4648847117%_
                                               _%tl4648947120%_
                                               _%e4649047123%_
                                               _%hd4649147127%_
                                               _%tl4649247130%_
                                               _%e4649347133%_
                                               _%hd4649447137%_
                                               _%tl4649547140%_))))))))
                        (_%loop4650247159%_ _%target4649947153%_ '()))))
                   (_%__match7937679377%_
                    (lambda (_%e4644747256%_
                             _%hd4644847260%_
                             _%tl4644947263%_
                             _%e4645047266%_
                             _%hd4645147270%_
                             _%tl4645247273%_
                             _%e4645347276%_
                             _%hd4645447280%_
                             _%tl4645547283%_
                             _%e4645647286%_
                             _%hd4645747290%_
                             _%tl4645847293%_
                             _%e4645947296%_
                             _%hd4646047300%_
                             _%tl4646147303%_
                             _%e4646247306%_
                             _%hd4646347310%_
                             _%tl4646447313%_
                             _%e4646547316%_
                             _%hd4646647320%_
                             _%tl4646747323%_
                             _%e4646847326%_
                             _%hd4646947330%_
                             _%tl4647047333%_
                             _%__splice7924679247%_
                             _%target4647147336%_
                             _%tl4647347339%_)
                      (letrec ((_%loop4647447342%_
                                (lambda (_%hd4647247346%_ _%body4647847349%_)
                                  (if (gx#stx-pair? _%hd4647247346%_)
                                      (let ((_%e4647547352%_
                                             (gx#syntax-e _%hd4647247346%_)))
                                        (let ((_%lp-tl4647747359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4647547352%_)))
                                              (_%lp-hd4647647356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4647547352%_))))
                                          (_%loop4647447342%_
                                           _%lp-tl4647747359%_
                                           (cons _%lp-hd4647647356%_
                                                 _%body4647847349%_))))
                                      (let ((_%body4647947362%_
                                             (reverse _%body4647847349%_)))
                                        (let ((_%L47366%_ _%body4647947362%_)
                                              (_%L47368%_ _%hd4646947330%_)
                                              (_%L47369%_ _%hd4646647320%_)
                                              (_%L47370%_ _%hd4646347310%_)
                                              (_%L47371%_ _%hd4645747290%_)
                                              (_%L47372%_ _%hd4645447280%_))
                                          (if (and (gx#identifier? _%L47372%_)
                                                   (gx#identifier? _%L47368%_)
                                                   (gx#identifier? _%L47369%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47369%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47369%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47369%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47369%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7924479245%_
                                               _%L47366%_
                                               _%L47368%_
                                               _%L47369%_
                                               _%L47370%_
                                               _%L47371%_
                                               _%L47372%_)
                                              (_%__match7944079441%_
                                               _%e4644747256%_
                                               _%hd4644847260%_
                                               _%tl4644947263%_
                                               _%e4645047266%_
                                               _%hd4645147270%_
                                               _%tl4645247273%_
                                               _%e4645347276%_
                                               _%hd4645447280%_
                                               _%tl4645547283%_
                                               _%e4645647286%_
                                               _%hd4645747290%_
                                               _%tl4645847293%_))))))))
                        (_%loop4647447342%_ _%target4647147336%_ '()))))
                   (_%__match7934479345%_
                    (lambda (_%e4644747256%_
                             _%hd4644847260%_
                             _%tl4644947263%_
                             _%e4645047266%_
                             _%hd4645147270%_
                             _%tl4645247273%_
                             _%e4645347276%_
                             _%hd4645447280%_
                             _%tl4645547283%_
                             _%e4645647286%_
                             _%hd4645747290%_
                             _%tl4645847293%_
                             _%e4645947296%_
                             _%hd4646047300%_
                             _%tl4646147303%_)
                      (if (gx#identifier? _%hd4646047300%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84918_|
                               _%hd4646047300%_)
                              (if (gx#stx-pair? _%tl4646147303%_)
                                  (let ((_%e4646247306%_
                                         (gx#syntax-e _%tl4646147303%_)))
                                    (let ((_%tl4646447313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4646247306%_)))
                                          (_%hd4646347310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4646247306%_))))
                                      (if (gx#stx-pair? _%tl4646447313%_)
                                          (let ((_%e4646547316%_
                                                 (gx#syntax-e
                                                  _%tl4646447313%_)))
                                            (let ((_%tl4646747323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4646547316%_)))
                                                  (_%hd4646647320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4646547316%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4646747323%_)
                                                  (let ((_%e4646847326%_
                                                         (gx#syntax-e
                                                          _%tl4646747323%_)))
                                                    (let ((_%tl4647047333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4646847326%_)))
                                                          (_%hd4646947330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4646847326%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4647047333%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4645247273%_)
                                                              (let ((_%__splice7924679247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4645247273%_ '0)))
                        (let ((_%tl4647347339%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7924679247%_ '1)))
                              (_%target4647147336%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7924679247%_ '0))))
                          (if (gx#stx-null? _%tl4647347339%_)
                              (_%__match7937679377%_
                               _%e4644747256%_
                               _%hd4644847260%_
                               _%tl4644947263%_
                               _%e4645047266%_
                               _%hd4645147270%_
                               _%tl4645247273%_
                               _%e4645347276%_
                               _%hd4645447280%_
                               _%tl4645547283%_
                               _%e4645647286%_
                               _%hd4645747290%_
                               _%tl4645847293%_
                               _%e4645947296%_
                               _%hd4646047300%_
                               _%tl4646147303%_
                               _%e4646247306%_
                               _%hd4646347310%_
                               _%tl4646447313%_
                               _%e4646547316%_
                               _%hd4646647320%_
                               _%tl4646747323%_
                               _%e4646847326%_
                               _%hd4646947330%_
                               _%tl4647047333%_
                               _%__splice7924679247%_
                               _%target4647147336%_
                               _%tl4647347339%_)
                              (if (gx#stx-pair? _%hd4645447280%_)
                                  (let ((_%e4658346737%_
                                         (gx#syntax-e _%hd4645447280%_)))
                                    (let ((_%tl4658546744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4658346737%_)))
                                          (_%hd4658446741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4658346737%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))))
                      (if (gx#stx-pair? _%hd4645447280%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4645447280%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                  (if (gx#stx-pair? _%hd4645447280%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4645447280%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (if (gx#stx-pair/null? _%tl4645247273%_)
                              (let ((_%__splice7926279263%_
                                     (gx#syntax-split-splice
                                      _%tl4645247273%_
                                      '0)))
                                (let ((_%tl4658846750%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '1)))
                                      (_%target4658646747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658846750%_)
                                      (_%__match7954879549%_
                                       _%e4644747256%_
                                       _%hd4644847260%_
                                       _%tl4644947263%_
                                       _%e4645047266%_
                                       _%hd4645147270%_
                                       _%tl4645247273%_
                                       _%e4645347276%_
                                       _%hd4645447280%_
                                       _%tl4645547283%_
                                       _%e4658346737%_
                                       _%hd4658446741%_
                                       _%tl4658546744%_
                                       _%__splice7926279263%_
                                       _%target4658646747%_
                                       _%tl4658846750%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4645747290%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84917_|
                                                           _%hd4645747290%_)
                                                          (if (gx#stx-null?
                                                               _%tl4646747323%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4645247273%_)
                          (let ((_%__splice7925879259%_
                                 (gx#syntax-split-splice _%tl4645247273%_ '0)))
                            (let ((_%tl4656346892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925879259%_ '1)))
                                  (_%target4656146889%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925879259%_
                                      '0))))
                              (if (gx#stx-null? _%tl4656346892%_)
                                  (_%__match7951679517%_
                                   _%e4644747256%_
                                   _%hd4644847260%_
                                   _%tl4644947263%_
                                   _%e4645047266%_
                                   _%hd4645147270%_
                                   _%tl4645247273%_
                                   _%e4645347276%_
                                   _%hd4645447280%_
                                   _%tl4645547283%_
                                   _%e4645647286%_
                                   _%hd4645747290%_
                                   _%tl4645847293%_
                                   _%e4645947296%_
                                   _%hd4646047300%_
                                   _%tl4646147303%_
                                   _%e4646247306%_
                                   _%hd4646347310%_
                                   _%tl4646447313%_
                                   _%e4646547316%_
                                   _%hd4646647320%_
                                   _%tl4646747323%_
                                   _%__splice7925879259%_
                                   _%target4656146889%_
                                   _%tl4656346892%_)
                                  (if (gx#stx-pair? _%hd4645447280%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4645447280%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))
                          (if (gx#stx-pair? _%hd4645447280%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4645447280%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                      (if (gx#stx-pair? _%hd4645447280%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4645447280%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (if (gx#stx-pair/null? _%tl4645247273%_)
                                  (let ((_%__splice7926279263%_
                                         (gx#syntax-split-splice
                                          _%tl4645247273%_
                                          '0)))
                                    (let ((_%tl4658846750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '1)))
                                          (_%target4658646747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658846750%_)
                                          (_%__match7954879549%_
                                           _%e4644747256%_
                                           _%hd4644847260%_
                                           _%tl4644947263%_
                                           _%e4645047266%_
                                           _%hd4645147270%_
                                           _%tl4645247273%_
                                           _%e4645347276%_
                                           _%hd4645447280%_
                                           _%tl4645547283%_
                                           _%e4658346737%_
                                           _%hd4658446741%_
                                           _%tl4658546744%_
                                           _%__splice7926279263%_
                                           _%target4658646747%_
                                           _%tl4658846750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                  (if (gx#stx-pair? _%hd4645447280%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4645447280%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (if (gx#stx-pair/null? _%tl4645247273%_)
                              (let ((_%__splice7926279263%_
                                     (gx#syntax-split-splice
                                      _%tl4645247273%_
                                      '0)))
                                (let ((_%tl4658846750%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '1)))
                                      (_%target4658646747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658846750%_)
                                      (_%__match7954879549%_
                                       _%e4644747256%_
                                       _%hd4644847260%_
                                       _%tl4644947263%_
                                       _%e4645047266%_
                                       _%hd4645147270%_
                                       _%tl4645247273%_
                                       _%e4645347276%_
                                       _%hd4645447280%_
                                       _%tl4645547283%_
                                       _%e4658346737%_
                                       _%hd4658446741%_
                                       _%tl4658546744%_
                                       _%__splice7926279263%_
                                       _%target4658646747%_
                                       _%tl4658846750%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
              (if (gx#stx-pair? _%hd4645447280%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4645447280%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4645247273%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4645247273%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4644747256%_
                                   _%hd4644847260%_
                                   _%tl4644947263%_
                                   _%e4645047266%_
                                   _%hd4645147270%_
                                   _%tl4645247273%_
                                   _%e4645347276%_
                                   _%hd4645447280%_
                                   _%tl4645547283%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645447280%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4645447280%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4645247273%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4645247273%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4644747256%_
                       _%hd4644847260%_
                       _%tl4644947263%_
                       _%e4645047266%_
                       _%hd4645147270%_
                       _%tl4645247273%_
                       _%e4645347276%_
                       _%hd4645447280%_
                       _%tl4645547283%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))))
                                  (if (gx#stx-null? _%tl4646147303%_)
                                      (if (gx#stx-pair/null? _%tl4645247273%_)
                                          (let ((_%__splice7925079251%_
                                                 (gx#syntax-split-splice
                                                  _%tl4645247273%_
                                                  '0)))
                                            (let ((_%tl4650147156%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925079251%_
                                                      '1)))
                                                  (_%target4649947153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925079251%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4650147156%_)
                                                  (_%__match7941679417%_
                                                   _%e4644747256%_
                                                   _%hd4644847260%_
                                                   _%tl4644947263%_
                                                   _%e4645047266%_
                                                   _%hd4645147270%_
                                                   _%tl4645247273%_
                                                   _%e4645347276%_
                                                   _%hd4645447280%_
                                                   _%tl4645547283%_
                                                   _%e4645647286%_
                                                   _%hd4645747290%_
                                                   _%tl4645847293%_
                                                   _%e4645947296%_
                                                   _%hd4646047300%_
                                                   _%tl4646147303%_
                                                   _%__splice7925079251%_
                                                   _%target4649947153%_
                                                   _%tl4650147156%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4645447280%_)
                                                      (let ((_%e4658346737%_
                                                             (gx#syntax-e
                                                              _%hd4645447280%_)))
                                                        (let ((_%tl4658546744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658346737%_)))
                      (_%hd4658446741%_
                       (let () (declare (not safe)) (##car _%e4658346737%_))))
                  (let () (declare (not safe)) (_%g4640746616%_))))
              (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645447280%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4645447280%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                      (if (gx#stx-pair? _%hd4645447280%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4645447280%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4645247273%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4645247273%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4644747256%_
                                                           _%hd4644847260%_
                                                           _%tl4644947263%_
                                                           _%e4645047266%_
                                                           _%hd4645147270%_
                                                           _%tl4645247273%_
                                                           _%e4645347276%_
                                                           _%hd4645447280%_
                                                           _%tl4645547283%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                              (if (gx#stx-null? _%tl4646147303%_)
                                  (if (gx#stx-pair/null? _%tl4645247273%_)
                                      (let ((_%__splice7925079251%_
                                             (gx#syntax-split-splice
                                              _%tl4645247273%_
                                              '0)))
                                        (let ((_%tl4650147156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7925079251%_
                                                  '1)))
                                              (_%target4649947153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7925079251%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4650147156%_)
                                              (_%__match7941679417%_
                                               _%e4644747256%_
                                               _%hd4644847260%_
                                               _%tl4644947263%_
                                               _%e4645047266%_
                                               _%hd4645147270%_
                                               _%tl4645247273%_
                                               _%e4645347276%_
                                               _%hd4645447280%_
                                               _%tl4645547283%_
                                               _%e4645647286%_
                                               _%hd4645747290%_
                                               _%tl4645847293%_
                                               _%e4645947296%_
                                               _%hd4646047300%_
                                               _%tl4646147303%_
                                               _%__splice7925079251%_
                                               _%target4649947153%_
                                               _%tl4650147156%_)
                                              (if (gx#stx-pair?
                                                   _%hd4645447280%_)
                                                  (let ((_%e4658346737%_
                                                         (gx#syntax-e
                                                          _%hd4645447280%_)))
                                                    (let ((_%tl4658546744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658346737%_)))
                                                          (_%hd4658446741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658346737%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640746616%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))))
                                      (if (gx#stx-pair? _%hd4645447280%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4645447280%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                  (if (gx#identifier? _%hd4645747290%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84917_|
                                           _%hd4645747290%_)
                                          (if (gx#stx-pair? _%tl4646147303%_)
                                              (let ((_%e4655546869%_
                                                     (gx#syntax-e
                                                      _%tl4646147303%_)))
                                                (let ((_%tl4655746876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655546869%_)))
                                                      (_%hd4655646873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655546869%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655746876%_)
                                                      (let ((_%e4655846879%_
                                                             (gx#syntax-e
                                                              _%tl4655746876%_)))
                                                        (let ((_%tl4656046886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655846879%_)))
                      (_%hd4655946883%_
                       (let () (declare (not safe)) (##car _%e4655846879%_))))
                  (if (gx#stx-null? _%tl4656046886%_)
                      (if (gx#stx-pair/null? _%tl4645247273%_)
                          (let ((_%__splice7925879259%_
                                 (gx#syntax-split-splice _%tl4645247273%_ '0)))
                            (let ((_%tl4656346892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925879259%_ '1)))
                                  (_%target4656146889%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925879259%_
                                      '0))))
                              (if (gx#stx-null? _%tl4656346892%_)
                                  (_%__match7951679517%_
                                   _%e4644747256%_
                                   _%hd4644847260%_
                                   _%tl4644947263%_
                                   _%e4645047266%_
                                   _%hd4645147270%_
                                   _%tl4645247273%_
                                   _%e4645347276%_
                                   _%hd4645447280%_
                                   _%tl4645547283%_
                                   _%e4645647286%_
                                   _%hd4645747290%_
                                   _%tl4645847293%_
                                   _%e4645947296%_
                                   _%hd4646047300%_
                                   _%tl4646147303%_
                                   _%e4655546869%_
                                   _%hd4655646873%_
                                   _%tl4655746876%_
                                   _%e4655846879%_
                                   _%hd4655946883%_
                                   _%tl4656046886%_
                                   _%__splice7925879259%_
                                   _%target4656146889%_
                                   _%tl4656346892%_)
                                  (if (gx#stx-pair? _%hd4645447280%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4645447280%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))
                          (if (gx#stx-pair? _%hd4645447280%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4645447280%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                      (if (gx#stx-pair? _%hd4645447280%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4645447280%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (if (gx#stx-pair/null? _%tl4645247273%_)
                                  (let ((_%__splice7926279263%_
                                         (gx#syntax-split-splice
                                          _%tl4645247273%_
                                          '0)))
                                    (let ((_%tl4658846750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '1)))
                                          (_%target4658646747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658846750%_)
                                          (_%__match7954879549%_
                                           _%e4644747256%_
                                           _%hd4644847260%_
                                           _%tl4644947263%_
                                           _%e4645047266%_
                                           _%hd4645147270%_
                                           _%tl4645247273%_
                                           _%e4645347276%_
                                           _%hd4645447280%_
                                           _%tl4645547283%_
                                           _%e4658346737%_
                                           _%hd4658446741%_
                                           _%tl4658546744%_
                                           _%__splice7926279263%_
                                           _%target4658646747%_
                                           _%tl4658846750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_))))))
              (if (gx#stx-pair? _%hd4645447280%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4645447280%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4645247273%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4645247273%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4644747256%_
                                   _%hd4644847260%_
                                   _%tl4644947263%_
                                   _%e4645047266%_
                                   _%hd4645147270%_
                                   _%tl4645247273%_
                                   _%e4645347276%_
                                   _%hd4645447280%_
                                   _%tl4645547283%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4645447280%_)
                                                  (let ((_%e4658346737%_
                                                         (gx#syntax-e
                                                          _%hd4645447280%_)))
                                                    (let ((_%tl4658546744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658346737%_)))
                                                          (_%hd4658446741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658346737%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4645247273%_)
                                                          (let ((_%__splice7926279263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4645247273%_ '0)))
                    (let ((_%tl4658846750%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '1)))
                          (_%target4658646747%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '0))))
                      (if (gx#stx-null? _%tl4658846750%_)
                          (_%__match7954879549%_
                           _%e4644747256%_
                           _%hd4644847260%_
                           _%tl4644947263%_
                           _%e4645047266%_
                           _%hd4645147270%_
                           _%tl4645247273%_
                           _%e4645347276%_
                           _%hd4645447280%_
                           _%tl4645547283%_
                           _%e4658346737%_
                           _%hd4658446741%_
                           _%tl4658546744%_
                           _%__splice7926279263%_
                           _%target4658646747%_
                           _%tl4658846750%_)
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))
                                          (if (gx#stx-pair? _%hd4645447280%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4645447280%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4645247273%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4645247273%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4644747256%_
                       _%hd4644847260%_
                       _%tl4644947263%_
                       _%e4645047266%_
                       _%hd4645147270%_
                       _%tl4645247273%_
                       _%e4645347276%_
                       _%hd4645447280%_
                       _%tl4645547283%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                      (if (gx#stx-pair? _%hd4645447280%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4645447280%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4645247273%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4645247273%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4644747256%_
                                                           _%hd4644847260%_
                                                           _%tl4644947263%_
                                                           _%e4645047266%_
                                                           _%hd4645147270%_
                                                           _%tl4645247273%_
                                                           _%e4645347276%_
                                                           _%hd4645447280%_
                                                           _%tl4645547283%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))))
                          (if (gx#stx-null? _%tl4646147303%_)
                              (if (gx#stx-pair/null? _%tl4645247273%_)
                                  (let ((_%__splice7925079251%_
                                         (gx#syntax-split-splice
                                          _%tl4645247273%_
                                          '0)))
                                    (let ((_%tl4650147156%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925079251%_
                                              '1)))
                                          (_%target4649947153%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925079251%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4650147156%_)
                                          (_%__match7941679417%_
                                           _%e4644747256%_
                                           _%hd4644847260%_
                                           _%tl4644947263%_
                                           _%e4645047266%_
                                           _%hd4645147270%_
                                           _%tl4645247273%_
                                           _%e4645347276%_
                                           _%hd4645447280%_
                                           _%tl4645547283%_
                                           _%e4645647286%_
                                           _%hd4645747290%_
                                           _%tl4645847293%_
                                           _%e4645947296%_
                                           _%hd4646047300%_
                                           _%tl4646147303%_
                                           _%__splice7925079251%_
                                           _%target4649947153%_
                                           _%tl4650147156%_)
                                          (if (gx#stx-pair? _%hd4645447280%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4645447280%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))))
                                  (if (gx#stx-pair? _%hd4645447280%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4645447280%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                              (if (gx#identifier? _%hd4645747290%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84917_|
                                       _%hd4645747290%_)
                                      (if (gx#stx-pair? _%tl4646147303%_)
                                          (let ((_%e4655546869%_
                                                 (gx#syntax-e
                                                  _%tl4646147303%_)))
                                            (let ((_%tl4655746876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655546869%_)))
                                                  (_%hd4655646873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655546869%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4655746876%_)
                                                  (let ((_%e4655846879%_
                                                         (gx#syntax-e
                                                          _%tl4655746876%_)))
                                                    (let ((_%tl4656046886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655846879%_)))
                                                          (_%hd4655946883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655846879%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4656046886%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4645247273%_)
                                                              (let ((_%__splice7925879259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4645247273%_ '0)))
                        (let ((_%tl4656346892%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925879259%_ '1)))
                              (_%target4656146889%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925879259%_ '0))))
                          (if (gx#stx-null? _%tl4656346892%_)
                              (_%__match7951679517%_
                               _%e4644747256%_
                               _%hd4644847260%_
                               _%tl4644947263%_
                               _%e4645047266%_
                               _%hd4645147270%_
                               _%tl4645247273%_
                               _%e4645347276%_
                               _%hd4645447280%_
                               _%tl4645547283%_
                               _%e4645647286%_
                               _%hd4645747290%_
                               _%tl4645847293%_
                               _%e4645947296%_
                               _%hd4646047300%_
                               _%tl4646147303%_
                               _%e4655546869%_
                               _%hd4655646873%_
                               _%tl4655746876%_
                               _%e4655846879%_
                               _%hd4655946883%_
                               _%tl4656046886%_
                               _%__splice7925879259%_
                               _%target4656146889%_
                               _%tl4656346892%_)
                              (if (gx#stx-pair? _%hd4645447280%_)
                                  (let ((_%e4658346737%_
                                         (gx#syntax-e _%hd4645447280%_)))
                                    (let ((_%tl4658546744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4658346737%_)))
                                          (_%hd4658446741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4658346737%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))))
                      (if (gx#stx-pair? _%hd4645447280%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4645447280%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                  (if (gx#stx-pair? _%hd4645447280%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4645447280%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (if (gx#stx-pair/null? _%tl4645247273%_)
                              (let ((_%__splice7926279263%_
                                     (gx#syntax-split-splice
                                      _%tl4645247273%_
                                      '0)))
                                (let ((_%tl4658846750%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '1)))
                                      (_%target4658646747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658846750%_)
                                      (_%__match7954879549%_
                                       _%e4644747256%_
                                       _%hd4644847260%_
                                       _%tl4644947263%_
                                       _%e4645047266%_
                                       _%hd4645147270%_
                                       _%tl4645247273%_
                                       _%e4645347276%_
                                       _%hd4645447280%_
                                       _%tl4645547283%_
                                       _%e4658346737%_
                                       _%hd4658446741%_
                                       _%tl4658546744%_
                                       _%__splice7926279263%_
                                       _%target4658646747%_
                                       _%tl4658846750%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4645447280%_)
                                                      (let ((_%e4658346737%_
                                                             (gx#syntax-e
                                                              _%hd4645447280%_)))
                                                        (let ((_%tl4658546744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658346737%_)))
                      (_%hd4658446741%_
                       (let () (declare (not safe)) (##car _%e4658346737%_))))
                  (if (gx#stx-pair/null? _%tl4645247273%_)
                      (let ((_%__splice7926279263%_
                             (gx#syntax-split-splice _%tl4645247273%_ '0)))
                        (let ((_%tl4658846750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '1)))
                              (_%target4658646747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '0))))
                          (if (gx#stx-null? _%tl4658846750%_)
                              (_%__match7954879549%_
                               _%e4644747256%_
                               _%hd4644847260%_
                               _%tl4644947263%_
                               _%e4645047266%_
                               _%hd4645147270%_
                               _%tl4645247273%_
                               _%e4645347276%_
                               _%hd4645447280%_
                               _%tl4645547283%_
                               _%e4658346737%_
                               _%hd4658446741%_
                               _%tl4658546744%_
                               _%__splice7926279263%_
                               _%target4658646747%_
                               _%tl4658846750%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645447280%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4645447280%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4645247273%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4645247273%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4644747256%_
                       _%hd4644847260%_
                       _%tl4644947263%_
                       _%e4645047266%_
                       _%hd4645147270%_
                       _%tl4645247273%_
                       _%e4645347276%_
                       _%hd4645447280%_
                       _%tl4645547283%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                      (if (gx#stx-pair? _%hd4645447280%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4645447280%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4645247273%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4645247273%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4644747256%_
                                                           _%hd4644847260%_
                                                           _%tl4644947263%_
                                                           _%e4645047266%_
                                                           _%hd4645147270%_
                                                           _%tl4645247273%_
                                                           _%e4645347276%_
                                                           _%hd4645447280%_
                                                           _%tl4645547283%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                  (if (gx#stx-pair? _%hd4645447280%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4645447280%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4645247273%_)
                                              (let ((_%__splice7926279263%_
                                                     (gx#syntax-split-splice
                                                      _%tl4645247273%_
                                                      '0)))
                                                (let ((_%tl4658846750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '1)))
                                                      (_%target4658646747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658846750%_)
                                                      (_%__match7954879549%_
                                                       _%e4644747256%_
                                                       _%hd4644847260%_
                                                       _%tl4644947263%_
                                                       _%e4645047266%_
                                                       _%hd4645147270%_
                                                       _%tl4645247273%_
                                                       _%e4645347276%_
                                                       _%hd4645447280%_
                                                       _%tl4645547283%_
                                                       _%e4658346737%_
                                                       _%hd4658446741%_
                                                       _%tl4658546744%_
                                                       _%__splice7926279263%_
                                                       _%target4658646747%_
                                                       _%tl4658846750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640746616%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))))
                   (_%__match7931479315%_
                    (lambda (_%e4641447432%_
                             _%hd4641547436%_
                             _%tl4641647439%_
                             _%e4641747442%_
                             _%hd4641847446%_
                             _%tl4641947449%_
                             _%e4642047452%_
                             _%hd4642147456%_
                             _%tl4642247459%_
                             _%e4642347462%_
                             _%hd4642447466%_
                             _%tl4642547469%_
                             _%e4642647472%_
                             _%hd4642747476%_
                             _%tl4642847479%_
                             _%e4642947482%_
                             _%hd4643047486%_
                             _%tl4643147489%_
                             _%__splice7924279243%_
                             _%target4643247492%_
                             _%tl4643447495%_)
                      (letrec ((_%loop4643547498%_
                                (lambda (_%hd4643347502%_ _%body4643947505%_)
                                  (if (gx#stx-pair? _%hd4643347502%_)
                                      (let ((_%e4643647508%_
                                             (gx#syntax-e _%hd4643347502%_)))
                                        (let ((_%lp-tl4643847515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643647508%_)))
                                              (_%lp-hd4643747512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643647508%_))))
                                          (_%loop4643547498%_
                                           _%lp-tl4643847515%_
                                           (cons _%lp-hd4643747512%_
                                                 _%body4643947505%_))))
                                      (let ((_%body4644047518%_
                                             (reverse _%body4643947505%_)))
                                        (let ((_%L47522%_ _%body4644047518%_)
                                              (_%L47524%_ _%hd4643047486%_)
                                              (_%L47525%_ _%hd4642747476%_)
                                              (_%L47526%_ _%hd4642447466%_)
                                              (_%L47527%_ _%hd4642147456%_))
                                          (if (and (gx#identifier? _%L47527%_)
                                                   (gx#identifier? _%L47525%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47525%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47525%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47525%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47525%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47525%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7924079241%_
                                               _%L47522%_
                                               _%L47524%_
                                               _%L47525%_
                                               _%L47526%_
                                               _%L47527%_)
                                              (_%__match7934479345%_
                                               _%e4641447432%_
                                               _%hd4641547436%_
                                               _%tl4641647439%_
                                               _%e4641747442%_
                                               _%hd4641847446%_
                                               _%tl4641947449%_
                                               _%e4642047452%_
                                               _%hd4642147456%_
                                               _%tl4642247459%_
                                               _%e4642347462%_
                                               _%hd4642447466%_
                                               _%tl4642547469%_
                                               _%e4642647472%_
                                               _%hd4642747476%_
                                               _%tl4642847479%_))))))))
                        (_%loop4643547498%_ _%target4643247492%_ '())))))
              (if (gx#stx-pair? _%__stx7923779238%_)
                  (let ((_%e4641447432%_ (gx#syntax-e _%__stx7923779238%_)))
                    (let ((_%tl4641647439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4641447432%_)))
                          (_%hd4641547436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4641447432%_))))
                      (if (gx#stx-pair? _%tl4641647439%_)
                          (let ((_%e4641747442%_
                                 (gx#syntax-e _%tl4641647439%_)))
                            (let ((_%tl4641947449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4641747442%_)))
                                  (_%hd4641847446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4641747442%_))))
                              (if (gx#stx-pair? _%hd4641847446%_)
                                  (let ((_%e4642047452%_
                                         (gx#syntax-e _%hd4641847446%_)))
                                    (let ((_%tl4642247459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4642047452%_)))
                                          (_%hd4642147456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4642047452%_))))
                                      (if (gx#stx-pair? _%tl4642247459%_)
                                          (let ((_%e4642347462%_
                                                 (gx#syntax-e
                                                  _%tl4642247459%_)))
                                            (let ((_%tl4642547469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4642347462%_)))
                                                  (_%hd4642447466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4642347462%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4642547469%_)
                                                  (let ((_%e4642647472%_
                                                         (gx#syntax-e
                                                          _%tl4642547469%_)))
                                                    (let ((_%tl4642847479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4642647472%_)))
                                                          (_%hd4642747476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4642647472%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4642847479%_)
                                                          (let ((_%e4642947482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4642847479%_)))
                    (let ((_%tl4643147489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4642947482%_)))
                          (_%hd4643047486%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4642947482%_))))
                      (if (gx#stx-null? _%tl4643147489%_)
                          (if (gx#stx-pair/null? _%tl4641947449%_)
                              (let ((_%__splice7924279243%_
                                     (gx#syntax-split-splice
                                      _%tl4641947449%_
                                      '0)))
                                (let ((_%tl4643447495%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7924279243%_
                                          '1)))
                                      (_%target4643247492%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7924279243%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4643447495%_)
                                      (_%__match7931479315%_
                                       _%e4641447432%_
                                       _%hd4641547436%_
                                       _%tl4641647439%_
                                       _%e4641747442%_
                                       _%hd4641847446%_
                                       _%tl4641947449%_
                                       _%e4642047452%_
                                       _%hd4642147456%_
                                       _%tl4642247459%_
                                       _%e4642347462%_
                                       _%hd4642447466%_
                                       _%tl4642547469%_
                                       _%e4642647472%_
                                       _%hd4642747476%_
                                       _%tl4642847479%_
                                       _%e4642947482%_
                                       _%hd4643047486%_
                                       _%tl4643147489%_
                                       _%__splice7924279243%_
                                       _%target4643247492%_
                                       _%tl4643447495%_)
                                      (if (gx#stx-pair? _%hd4642147456%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4642147456%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))))
                              (if (gx#stx-pair? _%hd4642147456%_)
                                  (let ((_%e4658346737%_
                                         (gx#syntax-e _%hd4642147456%_)))
                                    (let ((_%tl4658546744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4658346737%_)))
                                          (_%hd4658446741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4658346737%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                          (if (gx#identifier? _%hd4642747476%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g84918_|
                                   _%hd4642747476%_)
                                  (if (gx#stx-pair? _%tl4643147489%_)
                                      (let ((_%e4646547316%_
                                             (gx#syntax-e _%tl4643147489%_)))
                                        (let ((_%tl4646747323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646547316%_)))
                                              (_%hd4646647320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646547316%_))))
                                          (if (gx#stx-pair? _%tl4646747323%_)
                                              (let ((_%e4646847326%_
                                                     (gx#syntax-e
                                                      _%tl4646747323%_)))
                                                (let ((_%tl4647047333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4646847326%_)))
                                                      (_%hd4646947330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4646847326%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4647047333%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641947449%_)
                                                          (let ((_%__splice7924679247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641947449%_ '0)))
                    (let ((_%tl4647347339%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7924679247%_ '1)))
                          (_%target4647147336%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7924679247%_ '0))))
                      (if (gx#stx-null? _%tl4647347339%_)
                          (_%__match7937679377%_
                           _%e4641447432%_
                           _%hd4641547436%_
                           _%tl4641647439%_
                           _%e4641747442%_
                           _%hd4641847446%_
                           _%tl4641947449%_
                           _%e4642047452%_
                           _%hd4642147456%_
                           _%tl4642247459%_
                           _%e4642347462%_
                           _%hd4642447466%_
                           _%tl4642547469%_
                           _%e4642647472%_
                           _%hd4642747476%_
                           _%tl4642847479%_
                           _%e4642947482%_
                           _%hd4643047486%_
                           _%tl4643147489%_
                           _%e4646547316%_
                           _%hd4646647320%_
                           _%tl4646747323%_
                           _%e4646847326%_
                           _%hd4646947330%_
                           _%tl4647047333%_
                           _%__splice7924679247%_
                           _%target4647147336%_
                           _%tl4647347339%_)
                          (if (gx#stx-pair? _%hd4642147456%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4642147456%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_))))))
                  (if (gx#stx-pair? _%hd4642147456%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
              (if (gx#stx-pair? _%hd4642147456%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4641947449%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4641947449%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4641447432%_
                                   _%hd4641547436%_
                                   _%tl4641647439%_
                                   _%e4641747442%_
                                   _%hd4641847446%_
                                   _%tl4641947449%_
                                   _%e4642047452%_
                                   _%hd4642147456%_
                                   _%tl4642247459%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4642447466%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g84917_|
                                                       _%hd4642447466%_)
                                                      (if (gx#stx-null?
                                                           _%tl4646747323%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4641947449%_)
                                                              (let ((_%__splice7925879259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4641947449%_ '0)))
                        (let ((_%tl4656346892%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925879259%_ '1)))
                              (_%target4656146889%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925879259%_ '0))))
                          (if (gx#stx-null? _%tl4656346892%_)
                              (_%__match7951679517%_
                               _%e4641447432%_
                               _%hd4641547436%_
                               _%tl4641647439%_
                               _%e4641747442%_
                               _%hd4641847446%_
                               _%tl4641947449%_
                               _%e4642047452%_
                               _%hd4642147456%_
                               _%tl4642247459%_
                               _%e4642347462%_
                               _%hd4642447466%_
                               _%tl4642547469%_
                               _%e4642647472%_
                               _%hd4642747476%_
                               _%tl4642847479%_
                               _%e4642947482%_
                               _%hd4643047486%_
                               _%tl4643147489%_
                               _%e4646547316%_
                               _%hd4646647320%_
                               _%tl4646747323%_
                               _%__splice7925879259%_
                               _%target4656146889%_
                               _%tl4656346892%_)
                              (if (gx#stx-pair? _%hd4642147456%_)
                                  (let ((_%e4658346737%_
                                         (gx#syntax-e _%hd4642147456%_)))
                                    (let ((_%tl4658546744%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4658346737%_)))
                                          (_%hd4658446741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4658346737%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))))
                      (if (gx#stx-pair? _%hd4642147456%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4642147456%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                  (if (gx#stx-pair? _%hd4642147456%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (if (gx#stx-pair/null? _%tl4641947449%_)
                              (let ((_%__splice7926279263%_
                                     (gx#syntax-split-splice
                                      _%tl4641947449%_
                                      '0)))
                                (let ((_%tl4658846750%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '1)))
                                      (_%target4658646747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7926279263%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658846750%_)
                                      (_%__match7954879549%_
                                       _%e4641447432%_
                                       _%hd4641547436%_
                                       _%tl4641647439%_
                                       _%e4641747442%_
                                       _%hd4641847446%_
                                       _%tl4641947449%_
                                       _%e4642047452%_
                                       _%hd4642147456%_
                                       _%tl4642247459%_
                                       _%e4658346737%_
                                       _%hd4658446741%_
                                       _%tl4658546744%_
                                       _%__splice7926279263%_
                                       _%target4658646747%_
                                       _%tl4658846750%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
              (if (gx#stx-pair? _%hd4642147456%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4641947449%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4641947449%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4641447432%_
                                   _%hd4641547436%_
                                   _%tl4641647439%_
                                   _%e4641747442%_
                                   _%hd4641847446%_
                                   _%tl4641947449%_
                                   _%e4642047452%_
                                   _%hd4642147456%_
                                   _%tl4642247459%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4642147456%_)
                                                      (let ((_%e4658346737%_
                                                             (gx#syntax-e
                                                              _%hd4642147456%_)))
                                                        (let ((_%tl4658546744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658346737%_)))
                      (_%hd4658446741%_
                       (let () (declare (not safe)) (##car _%e4658346737%_))))
                  (if (gx#stx-pair/null? _%tl4641947449%_)
                      (let ((_%__splice7926279263%_
                             (gx#syntax-split-splice _%tl4641947449%_ '0)))
                        (let ((_%tl4658846750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '1)))
                              (_%target4658646747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '0))))
                          (if (gx#stx-null? _%tl4658846750%_)
                              (_%__match7954879549%_
                               _%e4641447432%_
                               _%hd4641547436%_
                               _%tl4641647439%_
                               _%e4641747442%_
                               _%hd4641847446%_
                               _%tl4641947449%_
                               _%e4642047452%_
                               _%hd4642147456%_
                               _%tl4642247459%_
                               _%e4658346737%_
                               _%hd4658446741%_
                               _%tl4658546744%_
                               _%__splice7926279263%_
                               _%target4658646747%_
                               _%tl4658846750%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4642147456%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4642147456%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947449%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947449%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4641447432%_
                                                           _%hd4641547436%_
                                                           _%tl4641647439%_
                                                           _%e4641747442%_
                                                           _%hd4641847446%_
                                                           _%tl4641947449%_
                                                           _%e4642047452%_
                                                           _%hd4642147456%_
                                                           _%tl4642247459%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                  (if (gx#identifier? _%hd4642447466%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84917_|
                                           _%hd4642447466%_)
                                          (if (gx#stx-pair? _%tl4643147489%_)
                                              (let ((_%e4655846879%_
                                                     (gx#syntax-e
                                                      _%tl4643147489%_)))
                                                (let ((_%tl4656046886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655846879%_)))
                                                      (_%hd4655946883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655846879%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4656046886%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641947449%_)
                                                          (let ((_%__splice7925879259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641947449%_ '0)))
                    (let ((_%tl4656346892%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925879259%_ '1)))
                          (_%target4656146889%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925879259%_ '0))))
                      (if (gx#stx-null? _%tl4656346892%_)
                          (_%__match7951679517%_
                           _%e4641447432%_
                           _%hd4641547436%_
                           _%tl4641647439%_
                           _%e4641747442%_
                           _%hd4641847446%_
                           _%tl4641947449%_
                           _%e4642047452%_
                           _%hd4642147456%_
                           _%tl4642247459%_
                           _%e4642347462%_
                           _%hd4642447466%_
                           _%tl4642547469%_
                           _%e4642647472%_
                           _%hd4642747476%_
                           _%tl4642847479%_
                           _%e4642947482%_
                           _%hd4643047486%_
                           _%tl4643147489%_
                           _%e4655846879%_
                           _%hd4655946883%_
                           _%tl4656046886%_
                           _%__splice7925879259%_
                           _%target4656146889%_
                           _%tl4656346892%_)
                          (if (gx#stx-pair? _%hd4642147456%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4642147456%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_))))))
                  (if (gx#stx-pair? _%hd4642147456%_)
                      (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                        (let ((_%tl4658546744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4658346737%_)))
                              (_%hd4658446741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4658346737%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
              (if (gx#stx-pair? _%hd4642147456%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (if (gx#stx-pair/null? _%tl4641947449%_)
                          (let ((_%__splice7926279263%_
                                 (gx#syntax-split-splice _%tl4641947449%_ '0)))
                            (let ((_%tl4658846750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7926279263%_ '1)))
                                  (_%target4658646747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7926279263%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658846750%_)
                                  (_%__match7954879549%_
                                   _%e4641447432%_
                                   _%hd4641547436%_
                                   _%tl4641647439%_
                                   _%e4641747442%_
                                   _%hd4641847446%_
                                   _%tl4641947449%_
                                   _%e4642047452%_
                                   _%hd4642147456%_
                                   _%tl4642247459%_
                                   _%e4658346737%_
                                   _%hd4658446741%_
                                   _%tl4658546744%_
                                   _%__splice7926279263%_
                                   _%target4658646747%_
                                   _%tl4658846750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4642147456%_)
                                                  (let ((_%e4658346737%_
                                                         (gx#syntax-e
                                                          _%hd4642147456%_)))
                                                    (let ((_%tl4658546744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658346737%_)))
                                                          (_%hd4658446741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658346737%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641947449%_)
                                                          (let ((_%__splice7926279263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641947449%_ '0)))
                    (let ((_%tl4658846750%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '1)))
                          (_%target4658646747%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7926279263%_ '0))))
                      (if (gx#stx-null? _%tl4658846750%_)
                          (_%__match7954879549%_
                           _%e4641447432%_
                           _%hd4641547436%_
                           _%tl4641647439%_
                           _%e4641747442%_
                           _%hd4641847446%_
                           _%tl4641947449%_
                           _%e4642047452%_
                           _%hd4642147456%_
                           _%tl4642247459%_
                           _%e4658346737%_
                           _%hd4658446741%_
                           _%tl4658546744%_
                           _%__splice7926279263%_
                           _%target4658646747%_
                           _%tl4658846750%_)
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_))))
                                          (if (gx#stx-pair? _%hd4642147456%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4642147456%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947449%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947449%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4641447432%_
                       _%hd4641547436%_
                       _%tl4641647439%_
                       _%e4641747442%_
                       _%hd4641847446%_
                       _%tl4641947449%_
                       _%e4642047452%_
                       _%hd4642147456%_
                       _%tl4642247459%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                      (if (gx#stx-pair? _%hd4642147456%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4642147456%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947449%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947449%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4641447432%_
                                                           _%hd4641547436%_
                                                           _%tl4641647439%_
                                                           _%e4641747442%_
                                                           _%hd4641847446%_
                                                           _%tl4641947449%_
                                                           _%e4642047452%_
                                                           _%hd4642147456%_
                                                           _%tl4642247459%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                              (if (gx#identifier? _%hd4642447466%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84917_|
                                       _%hd4642447466%_)
                                      (if (gx#stx-pair? _%tl4643147489%_)
                                          (let ((_%e4655846879%_
                                                 (gx#syntax-e
                                                  _%tl4643147489%_)))
                                            (let ((_%tl4656046886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655846879%_)))
                                                  (_%hd4655946883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655846879%_))))
                                              (if (gx#stx-null?
                                                   _%tl4656046886%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947449%_)
                                                      (let ((_%__splice7925879259%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947449%_
                                                              '0)))
                                                        (let ((_%tl4656346892%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925879259%_ '1)))
                      (_%target4656146889%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925879259%_ '0))))
                  (if (gx#stx-null? _%tl4656346892%_)
                      (_%__match7951679517%_
                       _%e4641447432%_
                       _%hd4641547436%_
                       _%tl4641647439%_
                       _%e4641747442%_
                       _%hd4641847446%_
                       _%tl4641947449%_
                       _%e4642047452%_
                       _%hd4642147456%_
                       _%tl4642247459%_
                       _%e4642347462%_
                       _%hd4642447466%_
                       _%tl4642547469%_
                       _%e4642647472%_
                       _%hd4642747476%_
                       _%tl4642847479%_
                       _%e4642947482%_
                       _%hd4643047486%_
                       _%tl4643147489%_
                       _%e4655846879%_
                       _%hd4655946883%_
                       _%tl4656046886%_
                       _%__splice7925879259%_
                       _%target4656146889%_
                       _%tl4656346892%_)
                      (if (gx#stx-pair? _%hd4642147456%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4642147456%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                          (let () (declare (not safe)) (_%g4640746616%_))))))
              (if (gx#stx-pair? _%hd4642147456%_)
                  (let ((_%e4658346737%_ (gx#syntax-e _%hd4642147456%_)))
                    (let ((_%tl4658546744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4658346737%_)))
                          (_%hd4658446741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4658346737%_))))
                      (let () (declare (not safe)) (_%g4640746616%_))))
                  (let () (declare (not safe)) (_%g4640746616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4642147456%_)
                                                      (let ((_%e4658346737%_
                                                             (gx#syntax-e
                                                              _%hd4642147456%_)))
                                                        (let ((_%tl4658546744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658346737%_)))
                      (_%hd4658446741%_
                       (let () (declare (not safe)) (##car _%e4658346737%_))))
                  (if (gx#stx-pair/null? _%tl4641947449%_)
                      (let ((_%__splice7926279263%_
                             (gx#syntax-split-splice _%tl4641947449%_ '0)))
                        (let ((_%tl4658846750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '1)))
                              (_%target4658646747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '0))))
                          (if (gx#stx-null? _%tl4658846750%_)
                              (_%__match7954879549%_
                               _%e4641447432%_
                               _%hd4641547436%_
                               _%tl4641647439%_
                               _%e4641747442%_
                               _%hd4641847446%_
                               _%tl4641947449%_
                               _%e4642047452%_
                               _%hd4642147456%_
                               _%tl4642247459%_
                               _%e4658346737%_
                               _%hd4658446741%_
                               _%tl4658546744%_
                               _%__splice7926279263%_
                               _%target4658646747%_
                               _%tl4658846750%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4642147456%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4642147456%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947449%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947449%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4641447432%_
                       _%hd4641547436%_
                       _%tl4641647439%_
                       _%e4641747442%_
                       _%hd4641847446%_
                       _%tl4641947449%_
                       _%e4642047452%_
                       _%hd4642147456%_
                       _%tl4642247459%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))
                                      (if (gx#stx-pair? _%hd4642147456%_)
                                          (let ((_%e4658346737%_
                                                 (gx#syntax-e
                                                  _%hd4642147456%_)))
                                            (let ((_%tl4658546744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658346737%_)))
                                                  (_%hd4658446741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658346737%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641947449%_)
                                                  (let ((_%__splice7926279263%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641947449%_
                                                          '0)))
                                                    (let ((_%tl4658846750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '1)))
                                                          (_%target4658646747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7926279263%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658846750%_)
                                                          (_%__match7954879549%_
                                                           _%e4641447432%_
                                                           _%hd4641547436%_
                                                           _%tl4641647439%_
                                                           _%e4641747442%_
                                                           _%hd4641847446%_
                                                           _%tl4641947449%_
                                                           _%e4642047452%_
                                                           _%hd4642147456%_
                                                           _%tl4642247459%_
                                                           _%e4658346737%_
                                                           _%hd4658446741%_
                                                           _%tl4658546744%_
                                                           _%__splice7926279263%_
                                                           _%target4658646747%_
                                                           _%tl4658846750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640746616%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                  (if (gx#stx-pair? _%hd4642147456%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4642147456%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4641947449%_)
                                              (let ((_%__splice7926279263%_
                                                     (gx#syntax-split-splice
                                                      _%tl4641947449%_
                                                      '0)))
                                                (let ((_%tl4658846750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '1)))
                                                      (_%target4658646747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7926279263%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658846750%_)
                                                      (_%__match7954879549%_
                                                       _%e4641447432%_
                                                       _%hd4641547436%_
                                                       _%tl4641647439%_
                                                       _%e4641747442%_
                                                       _%hd4641847446%_
                                                       _%tl4641947449%_
                                                       _%e4642047452%_
                                                       _%hd4642147456%_
                                                       _%tl4642247459%_
                                                       _%e4658346737%_
                                                       _%hd4658446741%_
                                                       _%tl4658546744%_
                                                       _%__splice7926279263%_
                                                       _%target4658646747%_
                                                       _%tl4658846750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640746616%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))))
                  (if (gx#stx-null? _%tl4642847479%_)
                      (if (gx#stx-pair/null? _%tl4641947449%_)
                          (let ((_%__splice7925079251%_
                                 (gx#syntax-split-splice _%tl4641947449%_ '0)))
                            (let ((_%tl4650147156%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925079251%_ '1)))
                                  (_%target4649947153%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925079251%_
                                      '0))))
                              (if (gx#stx-null? _%tl4650147156%_)
                                  (_%__match7941679417%_
                                   _%e4641447432%_
                                   _%hd4641547436%_
                                   _%tl4641647439%_
                                   _%e4641747442%_
                                   _%hd4641847446%_
                                   _%tl4641947449%_
                                   _%e4642047452%_
                                   _%hd4642147456%_
                                   _%tl4642247459%_
                                   _%e4642347462%_
                                   _%hd4642447466%_
                                   _%tl4642547469%_
                                   _%e4642647472%_
                                   _%hd4642747476%_
                                   _%tl4642847479%_
                                   _%__splice7925079251%_
                                   _%target4649947153%_
                                   _%tl4650147156%_)
                                  (if (gx#stx-pair? _%hd4642147456%_)
                                      (let ((_%e4658346737%_
                                             (gx#syntax-e _%hd4642147456%_)))
                                        (let ((_%tl4658546744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658346737%_)))
                                              (_%hd4658446741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658346737%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))
                          (if (gx#stx-pair? _%hd4642147456%_)
                              (let ((_%e4658346737%_
                                     (gx#syntax-e _%hd4642147456%_)))
                                (let ((_%tl4658546744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4658346737%_)))
                                      (_%hd4658446741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4658346737%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_))))
                              (let () (declare (not safe)) (_%g4640746616%_))))
                      (if (gx#stx-pair? _%hd4642147456%_)
                          (let ((_%e4658346737%_
                                 (gx#syntax-e _%hd4642147456%_)))
                            (let ((_%tl4658546744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4658346737%_)))
                                  (_%hd4658446741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4658346737%_))))
                              (if (gx#stx-pair/null? _%tl4641947449%_)
                                  (let ((_%__splice7926279263%_
                                         (gx#syntax-split-splice
                                          _%tl4641947449%_
                                          '0)))
                                    (let ((_%tl4658846750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '1)))
                                          (_%target4658646747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7926279263%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658846750%_)
                                          (_%__match7954879549%_
                                           _%e4641447432%_
                                           _%hd4641547436%_
                                           _%tl4641647439%_
                                           _%e4641747442%_
                                           _%hd4641847446%_
                                           _%tl4641947449%_
                                           _%e4642047452%_
                                           _%hd4642147456%_
                                           _%tl4642247459%_
                                           _%e4658346737%_
                                           _%hd4658446741%_
                                           _%tl4658546744%_
                                           _%__splice7926279263%_
                                           _%target4658646747%_
                                           _%tl4658846750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640746616%_)))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4642147456%_)
                                                      (let ((_%e4658346737%_
                                                             (gx#syntax-e
                                                              _%hd4642147456%_)))
                                                        (let ((_%tl4658546744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658346737%_)))
                      (_%hd4658446741%_
                       (let () (declare (not safe)) (##car _%e4658346737%_))))
                  (if (gx#stx-pair/null? _%tl4641947449%_)
                      (let ((_%__splice7926279263%_
                             (gx#syntax-split-splice _%tl4641947449%_ '0)))
                        (let ((_%tl4658846750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '1)))
                              (_%target4658646747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7926279263%_ '0))))
                          (if (gx#stx-null? _%tl4658846750%_)
                              (_%__match7954879549%_
                               _%e4641447432%_
                               _%hd4641547436%_
                               _%tl4641647439%_
                               _%e4641747442%_
                               _%hd4641847446%_
                               _%tl4641947449%_
                               _%e4642047452%_
                               _%hd4642147456%_
                               _%tl4642247459%_
                               _%e4658346737%_
                               _%hd4658446741%_
                               _%tl4658546744%_
                               _%__splice7926279263%_
                               _%target4658646747%_
                               _%tl4658846750%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640746616%_)))))
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4642147456%_)
                                              (let ((_%e4658346737%_
                                                     (gx#syntax-e
                                                      _%hd4642147456%_)))
                                                (let ((_%tl4658546744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658346737%_)))
                                                      (_%hd4658446741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658346737%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641947449%_)
                                                      (let ((_%__splice7926279263%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641947449%_
                                                              '0)))
                                                        (let ((_%tl4658846750%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '1)))
                      (_%target4658646747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7926279263%_ '0))))
                  (if (gx#stx-null? _%tl4658846750%_)
                      (_%__match7954879549%_
                       _%e4641447432%_
                       _%hd4641547436%_
                       _%tl4641647439%_
                       _%e4641747442%_
                       _%hd4641847446%_
                       _%tl4641947449%_
                       _%e4642047452%_
                       _%hd4642147456%_
                       _%tl4642247459%_
                       _%e4658346737%_
                       _%hd4658446741%_
                       _%tl4658546744%_
                       _%__splice7926279263%_
                       _%target4658646747%_
                       _%tl4658846750%_)
                      (let () (declare (not safe)) (_%g4640746616%_)))))
              (let () (declare (not safe)) (_%g4640746616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640746616%_))))))
                                  (if (gx#stx-null? _%hd4641847446%_)
                                      (if (gx#stx-pair/null? _%tl4641947449%_)
                                          (let ((_%__splice7926679267%_
                                                 (gx#syntax-split-splice
                                                  _%tl4641947449%_
                                                  '0)))
                                            (let ((_%tl4660446646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7926679267%_
                                                      '1)))
                                                  (_%target4660246643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7926679267%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660446646%_)
                                                  (_%__match7957079571%_
                                                   _%e4641447432%_
                                                   _%hd4641547436%_
                                                   _%tl4641647439%_
                                                   _%e4641747442%_
                                                   _%hd4641847446%_
                                                   _%tl4641947449%_
                                                   _%__splice7926679267%_
                                                   _%target4660246643%_
                                                   _%tl4660446646%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640746616%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640746616%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640746616%_))))))
                          (let () (declare (not safe)) (_%g4640746616%_)))))
                  (let () (declare (not safe)) (_%g4640746616%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47590%_)
        (let* ((_%g4759447628%_
                (lambda (_%g4759547624%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4759547624%_)))
               (_%g4759347751%_
                (lambda (_%g4759547632%_)
                  (if (gx#stx-pair? _%g4759547632%_)
                      (let ((_%e4759947635%_ (gx#syntax-e _%g4759547632%_)))
                        (let ((_%hd4760047639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4759947635%_)))
                              (_%tl4760147642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4759947635%_))))
                          (if (gx#stx-pair? _%tl4760147642%_)
                              (let ((_%e4760247645%_
                                     (gx#syntax-e _%tl4760147642%_)))
                                (let ((_%hd4760347649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4760247645%_)))
                                      (_%tl4760447652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4760247645%_))))
                                  (if (gx#stx-pair? _%hd4760347649%_)
                                      (let ((_%e4760547655%_
                                             (gx#syntax-e _%hd4760347649%_)))
                                        (let ((_%hd4760647659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4760547655%_)))
                                              (_%tl4760747662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4760547655%_))))
                                          (if (gx#stx-pair? _%tl4760747662%_)
                                              (let ((_%e4760847665%_
                                                     (gx#syntax-e
                                                      _%tl4760747662%_)))
                                                (let ((_%hd4760947669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4760847665%_)))
                                                      (_%tl4761047672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4760847665%_))))
                                                  (if (gx#identifier?
                                                       _%hd4760947669%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84919_|
                                                           _%hd4760947669%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4761047672%_)
                                                              (let ((_%e4761147675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4761047672%_)))
                        (let ((_%hd4761247679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4761147675%_)))
                              (_%tl4761347682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4761147675%_))))
                          (if (gx#stx-null? _%tl4761347682%_)
                              (if (gx#stx-pair/null? _%tl4760447652%_)
                                  (let ((_g84920_
                                         (gx#syntax-split-splice
                                          _%tl4760447652%_
                                          '0)))
                                    (begin
                                      (let ((_g84921_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84920_)
                                                   (##values-length _g84920_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84921_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84921_)))
                                      (let ((_%target4761447685%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84920_ 0)))
                                            (_%tl4761647688%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84920_ 1))))
                                        (if (gx#stx-null? _%tl4761647688%_)
                                            (letrec ((_%loop4761747691%_
                                                      (lambda (_%hd4761547695%_
                                                               _%body4762147698%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4761547695%_)
                                                            (let ((_%e4761847701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4761547695%_)))
                      (let ((_%lp-hd4761947705%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4761847701%_)))
                            (_%lp-tl4762047708%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4761847701%_))))
                        (_%loop4761747691%_
                         _%lp-tl4762047708%_
                         (cons _%lp-hd4761947705%_ _%body4762147698%_))))
                    (let ((_%body4762247711%_ (reverse _%body4762147698%_)))
                      ((lambda (_%L47715%_ _%L47717%_ _%L47718%_)
                         (if (gx#identifier? _%L47718%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47717%_
                                               (cons _%L47718%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4774247745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4774347748%_)
                            (cons _%g4774247745%_ _%g4774347748%_))
                          '()
                          _%L47715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47717%_ (cons _%L47718%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4759447628%_ _%g4759547632%_)))
                       _%body4762247711%_
                       _%hd4761247679%_
                       _%hd4760647659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4761747691%_
                                               _%target4761447685%_
                                               '()))
                                            (_%g4759447628%_
                                             _%g4759547632%_)))))
                                  (_%g4759447628%_ _%g4759547632%_))
                              (_%g4759447628%_ _%g4759547632%_))))
                      (_%g4759447628%_ _%g4759547632%_))
                  (_%g4759447628%_ _%g4759547632%_))
              (_%g4759447628%_ _%g4759547632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4759447628%_
                                               _%g4759547632%_))))
                                      (_%g4759447628%_ _%g4759547632%_))))
                              (_%g4759447628%_ _%g4759547632%_))))
                      (_%g4759447628%_ _%g4759547632%_)))))
          (_%g4759347751%_ _%$stx47590%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48318%_ _%slot48320%_)
        (let ((_%$e48322%_
               (let ((__obj84747 _%klass48318%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84747
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84747 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84747
                      'slot-types)))))
          (if _%$e48322%_
              ((lambda (_%slot-types48326%_)
                 (agetq _%slot48320%_ _%slot-types48326%_))
               _%$e48322%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48299%_ _%slot48301%_)
        (let ((_%$e48303%_
               (let ((__obj84748 _%klass48299%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84748
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84748 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84748
                      'slot-defaults)))))
          (if _%$e48303%_
              ((lambda (_%slot-defaults48307%_)
                 (let ((_%$e48310%_
                        (agetq _%slot48301%_ _%slot-defaults48307%_)))
                   (if _%$e48310%_
                       (gx#syntax-local-introduce _%$e48310%_)
                       '#f)))
               _%$e48303%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48280%_ _%slot48282%_)
        (let ((_%$e48284%_
               (let ((__obj84749 _%klass48280%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84749
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84749 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84749
                      'slot-defaults)))))
          (if _%$e48284%_
              ((lambda (_%slot-defaults48288%_)
                 (let ((_%$e48291%_
                        (agetq _%slot48282%_ _%slot-defaults48288%_)))
                   (if _%$e48291%_
                       (gx#syntax-local-introduce _%$e48291%_)
                       '#f)))
               _%$e48284%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48048%_ _%slot48050%_)
        (let ((_%contract4805148053%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48048%_
                _%slot48050%_)))
          (if _%contract4805148053%_
              (let* ((_%contract48057%_ _%contract4805148053%_)
                     (_%__stx7957379574%_ _%contract48057%_)
                     (_%g4806248099%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7957379574%_))))
                (let ((_%__kont7957679577%_
                       (lambda (_%L48249%_ _%L48251%_)
                         (not (gx#free-identifier=?
                               _%L48251%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7957879579%_
                       (lambda (_%L48189%_ _%L48191%_ _%L48192%_)
                         (not (gx#free-identifier=?
                               _%L48191%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7958079581%_ (lambda (_%L48126%_) '#f)))
                  (let* ((_%__match7962679627%_
                          (lambda (_%e4807548149%_
                                   _%hd4807648153%_
                                   _%tl4807748156%_
                                   _%e4807848159%_
                                   _%hd4807948163%_
                                   _%tl4808048166%_
                                   _%e4808148169%_
                                   _%hd4808248173%_
                                   _%tl4808348176%_
                                   _%e4808448179%_
                                   _%hd4808548183%_
                                   _%tl4808648186%_)
                            (let ((_%L48189%_ _%hd4808548183%_)
                                  (_%L48191%_ _%hd4808248173%_)
                                  (_%L48192%_ _%hd4807948163%_))
                              (if (and (gx#identifier? _%L48191%_)
                                       (or (gx#free-identifier=?
                                            _%L48191%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48191%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48191%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48191%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7957879579%_
                                   _%L48189%_
                                   _%L48191%_
                                   _%L48192%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4806248099%_))))))
                         (_%__match7959679597%_
                          (lambda (_%e4806648229%_
                                   _%hd4806748233%_
                                   _%tl4806848236%_
                                   _%e4806948239%_
                                   _%hd4807048243%_
                                   _%tl4807148246%_)
                            (let ((_%L48249%_ _%hd4807048243%_)
                                  (_%L48251%_ _%hd4806748233%_))
                              (if (and (gx#identifier? _%L48251%_)
                                       (or (gx#free-identifier=?
                                            _%L48251%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48251%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48251%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48251%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7957679577%_ _%L48249%_ _%L48251%_)
                                  (if (gx#identifier? _%hd4806748233%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84922_|
                                           _%hd4806748233%_)
                                          (_%__kont7958079581%_
                                           _%hd4807048243%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4806248099%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4806248099%_))))))))
                    (if (gx#stx-pair? _%__stx7957379574%_)
                        (let ((_%e4806648229%_
                               (gx#syntax-e _%__stx7957379574%_)))
                          (let ((_%tl4806848236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4806648229%_)))
                                (_%hd4806748233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4806648229%_))))
                            (if (gx#stx-pair? _%tl4806848236%_)
                                (let ((_%e4806948239%_
                                       (gx#syntax-e _%tl4806848236%_)))
                                  (let ((_%tl4807148246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4806948239%_)))
                                        (_%hd4807048243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4806948239%_))))
                                    (if (gx#stx-null? _%tl4807148246%_)
                                        (_%__match7959679597%_
                                         _%e4806648229%_
                                         _%hd4806748233%_
                                         _%tl4806848236%_
                                         _%e4806948239%_
                                         _%hd4807048243%_
                                         _%tl4807148246%_)
                                        (if (gx#identifier? _%hd4806748233%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84922_|
                                                 _%hd4806748233%_)
                                                (if (gx#stx-pair?
                                                     _%tl4807148246%_)
                                                    (let ((_%e4808148169%_
                                                           (gx#syntax-e
                                                            _%tl4807148246%_)))
                                                      (let ((_%tl4808348176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4808148169%_)))
                    (_%hd4808248173%_
                     (let () (declare (not safe)) (##car _%e4808148169%_))))
                (if (gx#stx-pair? _%tl4808348176%_)
                    (let ((_%e4808448179%_ (gx#syntax-e _%tl4808348176%_)))
                      (let ((_%tl4808648186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4808448179%_)))
                            (_%hd4808548183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4808448179%_))))
                        (if (gx#stx-null? _%tl4808648186%_)
                            (_%__match7962679627%_
                             _%e4806648229%_
                             _%hd4806748233%_
                             _%tl4806848236%_
                             _%e4806948239%_
                             _%hd4807048243%_
                             _%tl4807148246%_
                             _%e4808148169%_
                             _%hd4808248173%_
                             _%tl4808348176%_
                             _%e4808448179%_
                             _%hd4808548183%_
                             _%tl4808648186%_)
                            (let () (declare (not safe)) (_%g4806248099%_)))))
                    (let () (declare (not safe)) (_%g4806248099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4806248099%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4806248099%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4806248099%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4806248099%_)))))
                        (let () (declare (not safe)) (_%g4806248099%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47816%_ _%slot47818%_)
        (let ((_%contract4781947821%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47816%_
                _%slot47818%_)))
          (if _%contract4781947821%_
              (let* ((_%contract47825%_ _%contract4781947821%_)
                     (_%__stx7964779648%_ _%contract47825%_)
                     (_%g4783047867%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7964779648%_))))
                (let ((_%__kont7965079651%_
                       (lambda (_%L48017%_ _%L48019%_)
                         (not (gx#free-identifier=?
                               _%L48019%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7965279653%_
                       (lambda (_%L47957%_ _%L47959%_ _%L47960%_) '#t))
                      (_%__kont7965479655%_ (lambda (_%L47894%_) '#t)))
                  (let* ((_%__match7970079701%_
                          (lambda (_%e4784347917%_
                                   _%hd4784447921%_
                                   _%tl4784547924%_
                                   _%e4784647927%_
                                   _%hd4784747931%_
                                   _%tl4784847934%_
                                   _%e4784947937%_
                                   _%hd4785047941%_
                                   _%tl4785147944%_
                                   _%e4785247947%_
                                   _%hd4785347951%_
                                   _%tl4785447954%_)
                            (let ((_%L47957%_ _%hd4785347951%_)
                                  (_%L47959%_ _%hd4785047941%_)
                                  (_%L47960%_ _%hd4784747931%_))
                              (if (and (gx#identifier? _%L47959%_)
                                       (or (gx#free-identifier=?
                                            _%L47959%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47959%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47959%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47959%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7965279653%_
                                   _%L47957%_
                                   _%L47959%_
                                   _%L47960%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4783047867%_))))))
                         (_%__match7967079671%_
                          (lambda (_%e4783447997%_
                                   _%hd4783548001%_
                                   _%tl4783648004%_
                                   _%e4783748007%_
                                   _%hd4783848011%_
                                   _%tl4783948014%_)
                            (let ((_%L48017%_ _%hd4783848011%_)
                                  (_%L48019%_ _%hd4783548001%_))
                              (if (and (gx#identifier? _%L48019%_)
                                       (or (gx#free-identifier=?
                                            _%L48019%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48019%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48019%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48019%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7965079651%_ _%L48017%_ _%L48019%_)
                                  (if (gx#identifier? _%hd4783548001%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84923_|
                                           _%hd4783548001%_)
                                          (_%__kont7965479655%_
                                           _%hd4783848011%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4783047867%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4783047867%_))))))))
                    (if (gx#stx-pair? _%__stx7964779648%_)
                        (let ((_%e4783447997%_
                               (gx#syntax-e _%__stx7964779648%_)))
                          (let ((_%tl4783648004%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4783447997%_)))
                                (_%hd4783548001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4783447997%_))))
                            (if (gx#stx-pair? _%tl4783648004%_)
                                (let ((_%e4783748007%_
                                       (gx#syntax-e _%tl4783648004%_)))
                                  (let ((_%tl4783948014%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4783748007%_)))
                                        (_%hd4783848011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4783748007%_))))
                                    (if (gx#stx-null? _%tl4783948014%_)
                                        (_%__match7967079671%_
                                         _%e4783447997%_
                                         _%hd4783548001%_
                                         _%tl4783648004%_
                                         _%e4783748007%_
                                         _%hd4783848011%_
                                         _%tl4783948014%_)
                                        (if (gx#identifier? _%hd4783548001%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84923_|
                                                 _%hd4783548001%_)
                                                (if (gx#stx-pair?
                                                     _%tl4783948014%_)
                                                    (let ((_%e4784947937%_
                                                           (gx#syntax-e
                                                            _%tl4783948014%_)))
                                                      (let ((_%tl4785147944%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4784947937%_)))
                    (_%hd4785047941%_
                     (let () (declare (not safe)) (##car _%e4784947937%_))))
                (if (gx#stx-pair? _%tl4785147944%_)
                    (let ((_%e4785247947%_ (gx#syntax-e _%tl4785147944%_)))
                      (let ((_%tl4785447954%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4785247947%_)))
                            (_%hd4785347951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4785247947%_))))
                        (if (gx#stx-null? _%tl4785447954%_)
                            (_%__match7970079701%_
                             _%e4783447997%_
                             _%hd4783548001%_
                             _%tl4783648004%_
                             _%e4783748007%_
                             _%hd4783848011%_
                             _%tl4783948014%_
                             _%e4784947937%_
                             _%hd4785047941%_
                             _%tl4785147944%_
                             _%e4785247947%_
                             _%hd4785347951%_
                             _%tl4785447954%_)
                            (let () (declare (not safe)) (_%g4783047867%_)))))
                    (let () (declare (not safe)) (_%g4783047867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4783047867%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4783047867%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4783047867%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4783047867%_)))))
                        (let () (declare (not safe)) (_%g4783047867%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47802%_)
        (if (gx#identifier? _%id47802%_)
            (let* ((_%str47805%_ (symbol->string (gx#stx-e _%id47802%_)))
                   (_%index4780747809%_ (string-index _%str47805%_ '#\.)))
              (if _%index4780747809%_
                  (let ((_%index47813%_ _%index4780747809%_))
                    (if (let () (declare (not safe)) (##fx> _%index47813%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47805%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47795%_ _%id47797%_)
        (let ((_%parts47799%_
               (string-split (symbol->string (gx#stx-e _%id47797%_)) '#\.)))
          (if (find string-empty? _%parts47799%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47795%_
               _%id47797%_)
              (cons (gx#stx-identifier _%id47797%_ (car _%parts47799%_))
                    (map string->symbol (cdr _%parts47799%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47776%_ _%klass-or-id47778%_ _%slot47779%_)
        (let* ((_%klass47781%_
                (if (gx#identifier? _%klass-or-id47778%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47776%_
                       _%klass-or-id47778%_))
                    _%klass-or-id47778%_))
               (_%accessors47784%_
                (let ((__obj84750 _%klass47781%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84750
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84750 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84750
                       'unchecked-accessors))))
               (_%$e47789%_ (agetq _%slot47779%_ _%accessors47784%_)))
          (if _%$e47789%_
              _%$e47789%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47776%_
               _%klass47781%_
               _%slot47779%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47756%_
               _%klass-or-id47758%_
               _%slot47759%_
               _%checked?47760%_)
        (let* ((_%klass47762%_
                (if (gx#identifier? _%klass-or-id47758%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47756%_
                       _%klass-or-id47758%_))
                    _%klass-or-id47758%_))
               (_%mutators47765%_
                (if _%checked?47760%_
                    (let ((__obj84751 _%klass47762%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84751
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84751 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84751
                           'mutators)))
                    (let ((__obj84752 _%klass47762%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84752
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84752 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84752
                           'unchecked-mutators)))))
               (_%$e47770%_ (agetq _%slot47759%_ _%mutators47765%_)))
          (if _%$e47770%_
              _%$e47770%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47756%_
               _%klass47762%_
               _%slot47759%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48331%_)
        (letrec ((_%expand-body48334%_
                  (lambda (_%klass49242%_
                           _%var49244%_
                           _%Type49245%_
                           _%body49246%_
                           _%checked?49247%_)
                    (let* ((_%g4924949293%_
                            (lambda (_%g4925049289%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4925049289%_)))
                           (_%g4924849450%_
                            (lambda (_%g4925049297%_)
                              (if (gx#stx-pair? _%g4925049297%_)
                                  (let ((_%e4925849300%_
                                         (gx#syntax-e _%g4925049297%_)))
                                    (let ((_%hd4925949304%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4925849300%_)))
                                          (_%tl4926049307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4925849300%_))))
                                      (if (gx#stx-pair? _%tl4926049307%_)
                                          (let ((_%e4926149310%_
                                                 (gx#syntax-e
                                                  _%tl4926049307%_)))
                                            (let ((_%hd4926249314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4926149310%_)))
                                                  (_%tl4926349317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4926149310%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4926349317%_)
                                                  (let ((_%e4926449320%_
                                                         (gx#syntax-e
                                                          _%tl4926349317%_)))
                                                    (let ((_%hd4926549324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4926449320%_)))
                                                          (_%tl4926649327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4926449320%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4926649327%_)
                                                          (let ((_%e4926749330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4926649327%_)))
                    (let ((_%hd4926849334%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4926749330%_)))
                          (_%tl4926949337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4926749330%_))))
                      (if (gx#stx-pair? _%tl4926949337%_)
                          (let ((_%e4927049340%_
                                 (gx#syntax-e _%tl4926949337%_)))
                            (let ((_%hd4927149344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4927049340%_)))
                                  (_%tl4927249347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4927049340%_))))
                              (if (gx#stx-pair? _%tl4927249347%_)
                                  (let ((_%e4927349350%_
                                         (gx#syntax-e _%tl4927249347%_)))
                                    (let ((_%hd4927449354%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4927349350%_)))
                                          (_%tl4927549357%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4927349350%_))))
                                      (if (gx#stx-pair? _%tl4927549357%_)
                                          (let ((_%e4927649360%_
                                                 (gx#syntax-e
                                                  _%tl4927549357%_)))
                                            (let ((_%hd4927749364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927649360%_)))
                                                  (_%tl4927849367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927649360%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4927749364%_)
                                                  (let ((_g84924_
                                                         (gx#syntax-split-splice
                                                          _%hd4927749364%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84924_)
                           (##values-length _g84924_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84925_ 2)))
                    (error "Context expects 2 values" _g84925_)))
              (let ((_%target4927949370%_
                     (let () (declare (not safe)) (##values-ref _g84924_ 0)))
                    (_%tl4928149373%_
                     (let () (declare (not safe)) (##values-ref _g84924_ 1))))
                (if (gx#stx-null? _%tl4928149373%_)
                    (letrec ((_%loop4928249376%_
                              (lambda (_%hd4928049380%_ _%body4928649383%_)
                                (if (gx#stx-pair? _%hd4928049380%_)
                                    (let ((_%e4928349386%_
                                           (gx#syntax-e _%hd4928049380%_)))
                                      (let ((_%lp-hd4928449390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4928349386%_)))
                                            (_%lp-tl4928549393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4928349386%_))))
                                        (_%loop4928249376%_
                                         _%lp-tl4928549393%_
                                         (cons _%lp-hd4928449390%_
                                               _%body4928649383%_))))
                                    (let ((_%body4928749396%_
                                           (reverse _%body4928649383%_)))
                                      (if (gx#stx-null? _%tl4927849367%_)
                                          ((lambda (_%L49400%_
                                                    _%L49402%_
                                                    _%L49403%_
                                                    _%L49404%_
                                                    _%L49405%_
                                                    _%L49406%_
                                                    _%L49407%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49405%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49406%_ '()))
                                         (cons _%L49405%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49407%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49405%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49404%_ '()))
                               (cons _%L49403%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49402%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4944149444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4944249447%_)
                      (cons _%g4944149444%_ _%g4944249447%_))
                    '()
                    _%L49400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4928749396%_
                                           _%hd4927449354%_
                                           _%hd4927149344%_
                                           _%hd4926849334%_
                                           _%hd4926549324%_
                                           _%hd4926249314%_
                                           _%hd4925949304%_)
                                          (_%g4924949293%_
                                           _%g4925049297%_)))))))
                      (_%loop4928249376%_ _%target4927949370%_ '()))
                    (_%g4924949293%_ _%g4925049297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924949293%_
                                                   _%g4925049297%_))))
                                          (_%g4924949293%_ _%g4925049297%_))))
                                  (_%g4924949293%_ _%g4925049297%_))))
                          (_%g4924949293%_ _%g4925049297%_))))
                  (_%g4924949293%_ _%g4925049297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924949293%_
                                                   _%g4925049297%_))))
                                          (_%g4924949293%_ _%g4925049297%_))))
                                  (_%g4924949293%_ _%g4925049297%_)))))
                      (_%g4924849450%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj84753 _%klass49242%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84753
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84753
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj84753
                                    'type-descriptor)))
                             _%var49244%_
                             _%klass49242%_
                             _%checked?49247%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49246%_)))))
                 (_%expand48336%_
                  (lambda (_%var49134%_
                           _%Type49136%_
                           _%body49137%_
                           _%checked?49138%_
                           _%checked-mutators?49139%_
                           _%maybe?49140%_)
                    (let* ((_%klass49142%_
                            (gx#syntax-local-value _%Type49136%_ false))
                           (_%expr-body49149%_
                            (_%expand-body48334%_
                             _%klass49142%_
                             _%var49134%_
                             _%Type49136%_
                             _%body49137%_
                             (let ((_%$e49145%_ _%checked?49138%_))
                               (if _%$e49145%_
                                   _%$e49145%_
                                   _%checked-mutators?49139%_)))))
                      (if _%checked?49138%_
                          (let* ((_%g4915449173%_
                                  (lambda (_%g4915549169%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4915549169%_)))
                                 (_%g4915349235%_
                                  (lambda (_%g4915549177%_)
                                    (if (gx#stx-pair? _%g4915549177%_)
                                        (let ((_%e4915949180%_
                                               (gx#syntax-e _%g4915549177%_)))
                                          (let ((_%hd4916049184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4915949180%_)))
                                                (_%tl4916149187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4915949180%_))))
                                            (if (gx#stx-pair? _%tl4916149187%_)
                                                (let ((_%e4916249190%_
                                                       (gx#syntax-e
                                                        _%tl4916149187%_)))
                                                  (let ((_%hd4916349194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4916249190%_)))
                                                        (_%tl4916449197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4916249190%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4916449197%_)
                                                        (let ((_%e4916549200%_
                                                               (gx#syntax-e
                                                                _%tl4916449197%_)))
                                                          (let ((_%hd4916649204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4916549200%_)))
                        (_%tl4916749207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4916549200%_))))
                    (if (gx#stx-null? _%tl4916749207%_)
                        ((lambda (_%L49210%_ _%L49212%_ _%L49213%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49212%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49213%_ '())))
                                       (cons _%L49210%_ '()))))
                         _%hd4916649204%_
                         _%hd4916349194%_
                         _%hd4916049184%_)
                        (_%g4915449173%_ _%g4915549177%_))))
                (_%g4915449173%_ _%g4915549177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4915449173%_
                                                 _%g4915549177%_))))
                                        (_%g4915449173%_ _%g4915549177%_)))))
                            (_%g4915349235%_
                             (list (let ((_%instance?49239%_
                                          (let ((__obj84754 _%klass49142%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84754
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84754
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84754
                                                 'predicate)))))
                                     (if _%maybe?49140%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49239%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49239%_))
                                   _%var49134%_
                                   _%expr-body49149%_)))
                          _%expr-body49149%_)))))
          (let* ((_%__stx7972179722%_ _%stx48331%_)
                 (_%g4834248485%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7972179722%_))))
            (let ((_%__kont7972479725%_
                   (lambda (_%L49062%_ _%L49064%_ _%L49065%_ _%L49066%_)
                     (let* ((_%g4909149099%_
                             (lambda (_%g4909249095%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4909249095%_)))
                            (_%g4909049126%_
                             (lambda (_%g4909249103%_)
                               ((lambda (_%L49106%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49066%_
                                                    (cons _%L49065%_
                                                          (cons _%L49106%_
                                                                '())))
                                              (foldr (lambda (_%g4911749120%_
                                                              _%g4911849123%_)
                                                       (cons _%g4911749120%_
                                                             _%g4911849123%_))
                                                     '()
                                                     _%L49062%_))))
                                _%g4909249103%_))))
                       (_%g4909049126%_
                        (let ((__obj84755 (gx#syntax-local-value _%L49064%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84755
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84755
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84755
                               'identifier)))))))
                  (_%__kont7972879729%_
                   (lambda (_%L48940%_ _%L48942%_ _%L48943%_)
                     (_%expand48336%_
                      _%L48943%_
                      _%L48942%_
                      (foldr (lambda (_%g4896648969%_ _%g4896748972%_)
                               (cons _%g4896648969%_ _%g4896748972%_))
                             '()
                             _%L48940%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7973279733%_
                   (lambda (_%L48818%_ _%L48820%_ _%L48821%_)
                     (_%expand48336%_
                      _%L48821%_
                      _%L48820%_
                      (foldr (lambda (_%g4884448847%_ _%g4884548850%_)
                               (cons _%g4884448847%_ _%g4884548850%_))
                             '()
                             _%L48818%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7973679737%_
                   (lambda (_%L48696%_ _%L48698%_ _%L48699%_)
                     (_%expand48336%_
                      _%L48699%_
                      _%L48698%_
                      (foldr (lambda (_%g4872248725%_ _%g4872348728%_)
                               (cons _%g4872248725%_ _%g4872348728%_))
                             '()
                             _%L48696%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7974079741%_
                   (lambda (_%L48572%_ _%L48574%_ _%L48575%_)
                     (_%expand48336%_
                      _%L48575%_
                      _%L48574%_
                      (foldr (lambda (_%g4860048603%_ _%g4860148606%_)
                               (cons _%g4860048603%_ _%g4860148606%_))
                             '()
                             _%L48572%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7996079961%_
                      (lambda (_%e4845648492%_
                               _%hd4845748496%_
                               _%tl4845848499%_
                               _%e4845948502%_
                               _%hd4846048506%_
                               _%tl4846148509%_
                               _%e4846248512%_
                               _%hd4846348516%_
                               _%tl4846448519%_
                               _%e4846548522%_
                               _%hd4846648526%_
                               _%tl4846748529%_
                               _%e4846848532%_
                               _%hd4846948536%_
                               _%tl4847048539%_
                               _%__splice7974279743%_
                               _%target4847148542%_
                               _%tl4847348545%_)
                        (letrec ((_%loop4847448548%_
                                  (lambda (_%hd4847248552%_ _%body4847848555%_)
                                    (if (gx#stx-pair? _%hd4847248552%_)
                                        (let ((_%e4847548558%_
                                               (gx#syntax-e _%hd4847248552%_)))
                                          (let ((_%lp-tl4847748565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4847548558%_)))
                                                (_%lp-hd4847648562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4847548558%_))))
                                            (_%loop4847448548%_
                                             _%lp-tl4847748565%_
                                             (cons _%lp-hd4847648562%_
                                                   _%body4847848555%_))))
                                        (let ((_%body4847948568%_
                                               (reverse _%body4847848555%_)))
                                          (let ((_%L48572%_ _%body4847948568%_)
                                                (_%L48574%_ _%hd4846948536%_)
                                                (_%L48575%_ _%hd4846348516%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48574%_))
                                                (_%__kont7974079741%_
                                                 _%L48572%_
                                                 _%L48574%_
                                                 _%L48575%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))))))))
                          (_%loop4847448548%_ _%target4847148542%_ '()))))
                     (_%__match7991679917%_
                      (lambda (_%e4842948616%_
                               _%hd4843048620%_
                               _%tl4843148623%_
                               _%e4843248626%_
                               _%hd4843348630%_
                               _%tl4843448633%_
                               _%e4843548636%_
                               _%hd4843648640%_
                               _%tl4843748643%_
                               _%e4843848646%_
                               _%hd4843948650%_
                               _%tl4844048653%_
                               _%e4844148656%_
                               _%hd4844248660%_
                               _%tl4844348663%_
                               _%__splice7973879739%_
                               _%target4844448666%_
                               _%tl4844648669%_)
                        (letrec ((_%loop4844748672%_
                                  (lambda (_%hd4844548676%_ _%body4845148679%_)
                                    (if (gx#stx-pair? _%hd4844548676%_)
                                        (let ((_%e4844848682%_
                                               (gx#syntax-e _%hd4844548676%_)))
                                          (let ((_%lp-tl4845048689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4844848682%_)))
                                                (_%lp-hd4844948686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4844848682%_))))
                                            (_%loop4844748672%_
                                             _%lp-tl4845048689%_
                                             (cons _%lp-hd4844948686%_
                                                   _%body4845148679%_))))
                                        (let ((_%body4845248692%_
                                               (reverse _%body4845148679%_)))
                                          (let ((_%L48696%_ _%body4845248692%_)
                                                (_%L48698%_ _%hd4844248660%_)
                                                (_%L48699%_ _%hd4843648640%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48698%_))
                                                (_%__kont7973679737%_
                                                 _%L48696%_
                                                 _%L48698%_
                                                 _%L48699%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))))))))
                          (_%loop4844748672%_ _%target4844448666%_ '()))))
                     (_%__match7987279873%_
                      (lambda (_%e4840248738%_
                               _%hd4840348742%_
                               _%tl4840448745%_
                               _%e4840548748%_
                               _%hd4840648752%_
                               _%tl4840748755%_
                               _%e4840848758%_
                               _%hd4840948762%_
                               _%tl4841048765%_
                               _%e4841148768%_
                               _%hd4841248772%_
                               _%tl4841348775%_
                               _%e4841448778%_
                               _%hd4841548782%_
                               _%tl4841648785%_
                               _%__splice7973479735%_
                               _%target4841748788%_
                               _%tl4841948791%_)
                        (letrec ((_%loop4842048794%_
                                  (lambda (_%hd4841848798%_ _%body4842448801%_)
                                    (if (gx#stx-pair? _%hd4841848798%_)
                                        (let ((_%e4842148804%_
                                               (gx#syntax-e _%hd4841848798%_)))
                                          (let ((_%lp-tl4842348811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4842148804%_)))
                                                (_%lp-hd4842248808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4842148804%_))))
                                            (_%loop4842048794%_
                                             _%lp-tl4842348811%_
                                             (cons _%lp-hd4842248808%_
                                                   _%body4842448801%_))))
                                        (let ((_%body4842548814%_
                                               (reverse _%body4842448801%_)))
                                          (let ((_%L48818%_ _%body4842548814%_)
                                                (_%L48820%_ _%hd4841548782%_)
                                                (_%L48821%_ _%hd4840948762%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48820%_))
                                                (_%__kont7973279733%_
                                                 _%L48818%_
                                                 _%L48820%_
                                                 _%L48821%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))))))))
                          (_%loop4842048794%_ _%target4841748788%_ '()))))
                     (_%__match7982879829%_
                      (lambda (_%e4837548860%_
                               _%hd4837648864%_
                               _%tl4837748867%_
                               _%e4837848870%_
                               _%hd4837948874%_
                               _%tl4838048877%_
                               _%e4838148880%_
                               _%hd4838248884%_
                               _%tl4838348887%_
                               _%e4838448890%_
                               _%hd4838548894%_
                               _%tl4838648897%_
                               _%e4838748900%_
                               _%hd4838848904%_
                               _%tl4838948907%_
                               _%__splice7973079731%_
                               _%target4839048910%_
                               _%tl4839248913%_)
                        (letrec ((_%loop4839348916%_
                                  (lambda (_%hd4839148920%_ _%body4839748923%_)
                                    (if (gx#stx-pair? _%hd4839148920%_)
                                        (let ((_%e4839448926%_
                                               (gx#syntax-e _%hd4839148920%_)))
                                          (let ((_%lp-tl4839648933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4839448926%_)))
                                                (_%lp-hd4839548930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4839448926%_))))
                                            (_%loop4839348916%_
                                             _%lp-tl4839648933%_
                                             (cons _%lp-hd4839548930%_
                                                   _%body4839748923%_))))
                                        (let ((_%body4839848936%_
                                               (reverse _%body4839748923%_)))
                                          (let ((_%L48940%_ _%body4839848936%_)
                                                (_%L48942%_ _%hd4838848904%_)
                                                (_%L48943%_ _%hd4838248884%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48942%_))
                                                (_%__kont7972879729%_
                                                 _%L48940%_
                                                 _%L48942%_
                                                 _%L48943%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))))))))
                          (_%loop4839348916%_ _%target4839048910%_ '()))))
                     (_%__match7980879809%_
                      (lambda (_%e4837548860%_
                               _%hd4837648864%_
                               _%tl4837748867%_
                               _%e4837848870%_
                               _%hd4837948874%_
                               _%tl4838048877%_
                               _%e4838148880%_
                               _%hd4838248884%_
                               _%tl4838348887%_
                               _%e4838448890%_
                               _%hd4838548894%_
                               _%tl4838648897%_)
                        (if (gx#identifier? _%hd4838548894%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84926_|
                                 _%hd4838548894%_)
                                (if (gx#stx-pair? _%tl4838648897%_)
                                    (let ((_%e4838748900%_
                                           (gx#syntax-e _%tl4838648897%_)))
                                      (let ((_%tl4838948907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4838748900%_)))
                                            (_%hd4838848904%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4838748900%_))))
                                        (if (gx#stx-null? _%tl4838948907%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4838048877%_)
                                                (let ((_%__splice7973079731%_
                                                       (gx#syntax-split-splice
                                                        _%tl4838048877%_
                                                        '0)))
                                                  (let ((_%tl4839248913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7973079731%_
                                                            '1)))
                                                        (_%target4839048910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7973079731%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4839248913%_)
                                                        (_%__match7982879829%_
                                                         _%e4837548860%_
                                                         _%hd4837648864%_
                                                         _%tl4837748867%_
                                                         _%e4837848870%_
                                                         _%hd4837948874%_
                                                         _%tl4838048877%_
                                                         _%e4838148880%_
                                                         _%hd4838248884%_
                                                         _%tl4838348887%_
                                                         _%e4838448890%_
                                                         _%hd4838548894%_
                                                         _%tl4838648897%_
                                                         _%e4838748900%_
                                                         _%hd4838848904%_
                                                         _%tl4838948907%_
                                                         _%__splice7973079731%_
                                                         _%target4839048910%_
                                                         _%tl4839248913%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4834248485%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4834248485%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4834248485%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84927_|
                                     _%hd4838548894%_)
                                    (if (gx#stx-pair? _%tl4838648897%_)
                                        (let ((_%e4841448778%_
                                               (gx#syntax-e _%tl4838648897%_)))
                                          (let ((_%tl4841648785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841448778%_)))
                                                (_%hd4841548782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841448778%_))))
                                            (if (gx#stx-null? _%tl4841648785%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4838048877%_)
                                                    (let ((_%__splice7973479735%_
                                                           (gx#syntax-split-splice
                                                            _%tl4838048877%_
                                                            '0)))
                                                      (let ((_%tl4841948791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7973479735%_ '1)))
                    (_%target4841748788%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7973479735%_ '0))))
                (if (gx#stx-null? _%tl4841948791%_)
                    (_%__match7987279873%_
                     _%e4837548860%_
                     _%hd4837648864%_
                     _%tl4837748867%_
                     _%e4837848870%_
                     _%hd4837948874%_
                     _%tl4838048877%_
                     _%e4838148880%_
                     _%hd4838248884%_
                     _%tl4838348887%_
                     _%e4838448890%_
                     _%hd4838548894%_
                     _%tl4838648897%_
                     _%e4841448778%_
                     _%hd4841548782%_
                     _%tl4841648785%_
                     _%__splice7973479735%_
                     _%target4841748788%_
                     _%tl4841948791%_)
                    (let () (declare (not safe)) (_%g4834248485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4834248485%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4834248485%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84928_|
                                         _%hd4838548894%_)
                                        (if (gx#stx-pair? _%tl4838648897%_)
                                            (let ((_%e4844148656%_
                                                   (gx#syntax-e
                                                    _%tl4838648897%_)))
                                              (let ((_%tl4844348663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4844148656%_)))
                                                    (_%hd4844248660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4844148656%_))))
                                                (if (gx#stx-null?
                                                     _%tl4844348663%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4838048877%_)
                                                        (let ((_%__splice7973879739%_
                                                               (gx#syntax-split-splice
                                                                _%tl4838048877%_
                                                                '0)))
                                                          (let ((_%tl4844648669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7973879739%_ '1)))
                        (_%target4844448666%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7973879739%_ '0))))
                    (if (gx#stx-null? _%tl4844648669%_)
                        (_%__match7991679917%_
                         _%e4837548860%_
                         _%hd4837648864%_
                         _%tl4837748867%_
                         _%e4837848870%_
                         _%hd4837948874%_
                         _%tl4838048877%_
                         _%e4838148880%_
                         _%hd4838248884%_
                         _%tl4838348887%_
                         _%e4838448890%_
                         _%hd4838548894%_
                         _%tl4838648897%_
                         _%e4844148656%_
                         _%hd4844248660%_
                         _%tl4844348663%_
                         _%__splice7973879739%_
                         _%target4844448666%_
                         _%tl4844648669%_)
                        (let () (declare (not safe)) (_%g4834248485%_)))))
                (let () (declare (not safe)) (_%g4834248485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4834248485%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4834248485%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84929_|
                                             _%hd4838548894%_)
                                            (if (gx#stx-pair? _%tl4838648897%_)
                                                (let ((_%e4846848532%_
                                                       (gx#syntax-e
                                                        _%tl4838648897%_)))
                                                  (let ((_%tl4847048539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4846848532%_)))
                                                        (_%hd4846948536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4846848532%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4847048539%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4838048877%_)
                                                            (let ((_%__splice7974279743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4838048877%_ '0)))
                      (let ((_%tl4847348545%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7974279743%_ '1)))
                            (_%target4847148542%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7974279743%_ '0))))
                        (if (gx#stx-null? _%tl4847348545%_)
                            (_%__match7996079961%_
                             _%e4837548860%_
                             _%hd4837648864%_
                             _%tl4837748867%_
                             _%e4837848870%_
                             _%hd4837948874%_
                             _%tl4838048877%_
                             _%e4838148880%_
                             _%hd4838248884%_
                             _%tl4838348887%_
                             _%e4838448890%_
                             _%hd4838548894%_
                             _%tl4838648897%_
                             _%e4846848532%_
                             _%hd4846948536%_
                             _%tl4847048539%_
                             _%__splice7974279743%_
                             _%target4847148542%_
                             _%tl4847348545%_)
                            (let () (declare (not safe)) (_%g4834248485%_)))))
                    (let () (declare (not safe)) (_%g4834248485%_)))
                (let () (declare (not safe)) (_%g4834248485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4834248485%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4834248485%_))))))
                            (let () (declare (not safe)) (_%g4834248485%_)))))
                     (_%__match7978479785%_
                      (lambda (_%e4834848982%_
                               _%hd4834948986%_
                               _%tl4835048989%_
                               _%e4835148992%_
                               _%hd4835248996%_
                               _%tl4835348999%_
                               _%e4835449002%_
                               _%hd4835549006%_
                               _%tl4835649009%_
                               _%e4835749012%_
                               _%hd4835849016%_
                               _%tl4835949019%_
                               _%e4836049022%_
                               _%hd4836149026%_
                               _%tl4836249029%_
                               _%__splice7972679727%_
                               _%target4836349032%_
                               _%tl4836549035%_)
                        (letrec ((_%loop4836649038%_
                                  (lambda (_%hd4836449042%_ _%body4837049045%_)
                                    (if (gx#stx-pair? _%hd4836449042%_)
                                        (let ((_%e4836749048%_
                                               (gx#syntax-e _%hd4836449042%_)))
                                          (let ((_%lp-tl4836949055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4836749048%_)))
                                                (_%lp-hd4836849052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4836749048%_))))
                                            (_%loop4836649038%_
                                             _%lp-tl4836949055%_
                                             (cons _%lp-hd4836849052%_
                                                   _%body4837049045%_))))
                                        (let ((_%body4837149058%_
                                               (reverse _%body4837049045%_)))
                                          (let ((_%L49062%_ _%body4837149058%_)
                                                (_%L49064%_ _%hd4836149026%_)
                                                (_%L49065%_ _%hd4835849016%_)
                                                (_%L49066%_ _%hd4835549006%_))
                                            (if (let ((__tmp84930
                                                       (gx#syntax-local-value
                                                        _%L49064%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84930))
                                                (_%__kont7972479725%_
                                                 _%L49062%_
                                                 _%L49064%_
                                                 _%L49065%_
                                                 _%L49066%_)
                                                (_%__match7980879809%_
                                                 _%e4834848982%_
                                                 _%hd4834948986%_
                                                 _%tl4835048989%_
                                                 _%e4835148992%_
                                                 _%hd4835248996%_
                                                 _%tl4835348999%_
                                                 _%e4835449002%_
                                                 _%hd4835549006%_
                                                 _%tl4835649009%_
                                                 _%e4835749012%_
                                                 _%hd4835849016%_
                                                 _%tl4835949019%_))))))))
                          (_%loop4836649038%_ _%target4836349032%_ '())))))
                (if (gx#stx-pair? _%__stx7972179722%_)
                    (let ((_%e4834848982%_ (gx#syntax-e _%__stx7972179722%_)))
                      (let ((_%tl4835048989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4834848982%_)))
                            (_%hd4834948986%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4834848982%_))))
                        (if (gx#stx-pair? _%tl4835048989%_)
                            (let ((_%e4835148992%_
                                   (gx#syntax-e _%tl4835048989%_)))
                              (let ((_%tl4835348999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4835148992%_)))
                                    (_%hd4835248996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4835148992%_))))
                                (if (gx#stx-pair? _%hd4835248996%_)
                                    (let ((_%e4835449002%_
                                           (gx#syntax-e _%hd4835248996%_)))
                                      (let ((_%tl4835649009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4835449002%_)))
                                            (_%hd4835549006%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4835449002%_))))
                                        (if (gx#stx-pair? _%tl4835649009%_)
                                            (let ((_%e4835749012%_
                                                   (gx#syntax-e
                                                    _%tl4835649009%_)))
                                              (let ((_%tl4835949019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4835749012%_)))
                                                    (_%hd4835849016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4835749012%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4835949019%_)
                                                    (let ((_%e4836049022%_
                                                           (gx#syntax-e
                                                            _%tl4835949019%_)))
                                                      (let ((_%tl4836249029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4836049022%_)))
                    (_%hd4836149026%_
                     (let () (declare (not safe)) (##car _%e4836049022%_))))
                (if (gx#stx-null? _%tl4836249029%_)
                    (if (gx#stx-pair/null? _%tl4835348999%_)
                        (let ((_%__splice7972679727%_
                               (gx#syntax-split-splice _%tl4835348999%_ '0)))
                          (let ((_%tl4836549035%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7972679727%_ '1)))
                                (_%target4836349032%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7972679727%_ '0))))
                            (if (gx#stx-null? _%tl4836549035%_)
                                (_%__match7978479785%_
                                 _%e4834848982%_
                                 _%hd4834948986%_
                                 _%tl4835048989%_
                                 _%e4835148992%_
                                 _%hd4835248996%_
                                 _%tl4835348999%_
                                 _%e4835449002%_
                                 _%hd4835549006%_
                                 _%tl4835649009%_
                                 _%e4835749012%_
                                 _%hd4835849016%_
                                 _%tl4835949019%_
                                 _%e4836049022%_
                                 _%hd4836149026%_
                                 _%tl4836249029%_
                                 _%__splice7972679727%_
                                 _%target4836349032%_
                                 _%tl4836549035%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4834248485%_)))))
                        (let () (declare (not safe)) (_%g4834248485%_)))
                    (let () (declare (not safe)) (_%g4834248485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4834248485%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4834248485%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4834248485%_)))))
                            (let () (declare (not safe)) (_%g4834248485%_)))))
                    (let () (declare (not safe)) (_%g4834248485%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49460%_)
        (letrec ((_%expand-body49463%_
                  (lambda (_%var50464%_
                           _%Interface50466%_
                           _%body50467%_
                           _%checked?50468%_)
                    (let* ((_%type50470%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49460%_
                               _%Interface50466%_)))
                           (_%g5047350517%_
                            (lambda (_%g5047450513%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5047450513%_)))
                           (_%g5047250675%_
                            (lambda (_%g5047450521%_)
                              (if (gx#stx-pair? _%g5047450521%_)
                                  (let ((_%e5048250524%_
                                         (gx#syntax-e _%g5047450521%_)))
                                    (let ((_%hd5048350528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5048250524%_)))
                                          (_%tl5048450531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5048250524%_))))
                                      (if (gx#stx-pair? _%tl5048450531%_)
                                          (let ((_%e5048550534%_
                                                 (gx#syntax-e
                                                  _%tl5048450531%_)))
                                            (let ((_%hd5048650538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5048550534%_)))
                                                  (_%tl5048750541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5048550534%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5048750541%_)
                                                  (let ((_%e5048850544%_
                                                         (gx#syntax-e
                                                          _%tl5048750541%_)))
                                                    (let ((_%hd5048950548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5048850544%_)))
                                                          (_%tl5049050551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5048850544%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5049050551%_)
                                                          (let ((_%e5049150554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5049050551%_)))
                    (let ((_%hd5049250558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5049150554%_)))
                          (_%tl5049350561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5049150554%_))))
                      (if (gx#stx-pair? _%tl5049350561%_)
                          (let ((_%e5049450564%_
                                 (gx#syntax-e _%tl5049350561%_)))
                            (let ((_%hd5049550568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5049450564%_)))
                                  (_%tl5049650571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5049450564%_))))
                              (if (gx#stx-pair? _%tl5049650571%_)
                                  (let ((_%e5049750574%_
                                         (gx#syntax-e _%tl5049650571%_)))
                                    (let ((_%hd5049850578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049750574%_)))
                                          (_%tl5049950581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049750574%_))))
                                      (if (gx#stx-pair? _%tl5049950581%_)
                                          (let ((_%e5050050584%_
                                                 (gx#syntax-e
                                                  _%tl5049950581%_)))
                                            (let ((_%hd5050150588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5050050584%_)))
                                                  (_%tl5050250591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5050050584%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5050150588%_)
                                                  (let ((_g84931_
                                                         (gx#syntax-split-splice
                                                          _%hd5050150588%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84931_)
                           (##values-length _g84931_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84932_ 2)))
                    (error "Context expects 2 values" _g84932_)))
              (let ((_%target5050350594%_
                     (let () (declare (not safe)) (##values-ref _g84931_ 0)))
                    (_%tl5050550597%_
                     (let () (declare (not safe)) (##values-ref _g84931_ 1))))
                (if (gx#stx-null? _%tl5050550597%_)
                    (letrec ((_%loop5050650600%_
                              (lambda (_%hd5050450604%_ _%body5051050607%_)
                                (if (gx#stx-pair? _%hd5050450604%_)
                                    (let ((_%e5050750610%_
                                           (gx#syntax-e _%hd5050450604%_)))
                                      (let ((_%lp-hd5050850614%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5050750610%_)))
                                            (_%lp-tl5050950617%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5050750610%_))))
                                        (_%loop5050650600%_
                                         _%lp-tl5050950617%_
                                         (cons _%lp-hd5050850614%_
                                               _%body5051050607%_))))
                                    (let ((_%body5051150620%_
                                           (reverse _%body5051050607%_)))
                                      (if (gx#stx-null? _%tl5050250591%_)
                                          ((lambda (_%L50624%_
                                                    _%L50626%_
                                                    _%L50627%_
                                                    _%L50628%_
                                                    _%L50629%_
                                                    _%L50630%_
                                                    _%L50631%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50628%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50629%_ '()))
                                         (cons _%L50628%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50631%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50628%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50630%_ '()))
                               (cons _%L50627%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50626%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5066650669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5066750672%_)
                      (cons _%g5066650669%_ _%g5066750672%_))
                    '()
                    _%L50624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5051150620%_
                                           _%hd5049850578%_
                                           _%hd5049550568%_
                                           _%hd5049250558%_
                                           _%hd5048950548%_
                                           _%hd5048650538%_
                                           _%hd5048350528%_)
                                          (_%g5047350517%_
                                           _%g5047450521%_)))))))
                      (_%loop5050650600%_ _%target5050350594%_ '()))
                    (_%g5047350517%_ _%g5047450521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5047350517%_
                                                   _%g5047450521%_))))
                                          (_%g5047350517%_ _%g5047450521%_))))
                                  (_%g5047350517%_ _%g5047450521%_))))
                          (_%g5047350517%_ _%g5047450521%_))))
                  (_%g5047350517%_ _%g5047450521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5047350517%_
                                                   _%g5047450521%_))))
                                          (_%g5047350517%_ _%g5047450521%_))))
                                  (_%g5047350517%_ _%g5047450521%_)))))
                      (_%g5047250675%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50470%_
                             (let ((__obj84756 _%type50470%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84756
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84756
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj84756
                                    'instance-type)))
                             _%var50464%_
                             _%checked?50468%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50467%_)))))
                 (_%expand49465%_
                  (lambda (_%var50263%_
                           _%Interface50265%_
                           _%body50266%_
                           _%checked?50267%_
                           _%checked-methods?50268%_
                           _%maybe?50269%_)
                    (let* ((_%g5027150279%_
                            (lambda (_%g5027250275%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5027250275%_)))
                           (_%g5027050456%_
                            (lambda (_%g5027250283%_)
                              ((lambda (_%L50286%_)
                                 (if _%checked?50267%_
                                     (if _%maybe?50269%_
                                         (let* ((_%g5029850313%_
                                                 (lambda (_%g5029950309%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5029950309%_)))
                                                (_%g5029750359%_
                                                 (lambda (_%g5029950317%_)
                                                   (if (gx#stx-pair?
                                                        _%g5029950317%_)
                                                       (let ((_%e5030250320%_
                                                              (gx#syntax-e
                                                               _%g5029950317%_)))
                                                         (let ((_%hd5030350324%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5030250320%_)))
                       (_%tl5030450327%_
                        (let () (declare (not safe)) (##cdr _%e5030250320%_))))
                   (if (gx#stx-pair? _%tl5030450327%_)
                       (let ((_%e5030550330%_ (gx#syntax-e _%tl5030450327%_)))
                         (let ((_%hd5030650334%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5030550330%_)))
                               (_%tl5030750337%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5030550330%_))))
                           (if (gx#stx-null? _%tl5030750337%_)
                               ((lambda (_%L50340%_ _%L50342%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50342%_
                                                    (cons (cons _%L50340%_
                                                                (cons _%L50342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50342%_
                                                                (cons _%L50286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50342%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5030650334%_
                                _%hd5030350324%_)
                               (_%g5029850313%_ _%g5029950317%_))))
                       (_%g5029850313%_ _%g5029950317%_))))
               (_%g5029850313%_ _%g5029950317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5029750359%_
                                            (list _%var50263%_
                                                  _%Interface50265%_)))
                                         (let* ((_%g5036350378%_
                                                 (lambda (_%g5036450374%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5036450374%_)))
                                                (_%g5036250422%_
                                                 (lambda (_%g5036450382%_)
                                                   (if (gx#stx-pair?
                                                        _%g5036450382%_)
                                                       (let ((_%e5036750385%_
                                                              (gx#syntax-e
                                                               _%g5036450382%_)))
                                                         (let ((_%hd5036850389%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5036750385%_)))
                       (_%tl5036950392%_
                        (let () (declare (not safe)) (##cdr _%e5036750385%_))))
                   (if (gx#stx-pair? _%tl5036950392%_)
                       (let ((_%e5037050395%_ (gx#syntax-e _%tl5036950392%_)))
                         (let ((_%hd5037150399%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5037050395%_)))
                               (_%tl5037250402%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5037050395%_))))
                           (if (gx#stx-null? _%tl5037250402%_)
                               ((lambda (_%L50405%_ _%L50407%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50407%_
                                                    (cons (cons _%L50405%_
                                                                (cons _%L50407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50286%_ '()))))
                                _%hd5037150399%_
                                _%hd5036850389%_)
                               (_%g5036350378%_ _%g5036450382%_))))
                       (_%g5036350378%_ _%g5036450382%_))))
               (_%g5036350378%_ _%g5036450382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5036250422%_
                                            (list _%var50263%_
                                                  _%Interface50265%_))))
                                     (if _%maybe?50269%_
                                         (let* ((_%g5042650434%_
                                                 (lambda (_%g5042750430%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5042750430%_)))
                                                (_%g5042550452%_
                                                 (lambda (_%g5042750438%_)
                                                   ((lambda (_%L50441%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50286%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50441%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5042750438%_))))
                                           (_%g5042550452%_ _%var50263%_))
                                         _%L50286%_)))
                               _%g5027250283%_))))
                      (_%g5027050456%_
                       (_%expand-body49463%_
                        _%var50263%_
                        _%Interface50265%_
                        _%body50266%_
                        (let ((_%$e50460%_ _%checked?50267%_))
                          (if _%$e50460%_
                              _%$e50460%_
                              _%checked-methods?50268%_))))))))
          (let* ((_%__stx7996379964%_ _%stx49460%_)
                 (_%g4947149614%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7996379964%_))))
            (let ((_%__kont7996679967%_
                   (lambda (_%L50191%_ _%L50193%_ _%L50194%_ _%L50195%_)
                     (let* ((_%g5022050228%_
                             (lambda (_%g5022150224%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5022150224%_)))
                            (_%g5021950255%_
                             (lambda (_%g5022150232%_)
                               ((lambda (_%L50235%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50195%_
                                                    (cons _%L50194%_
                                                          (cons _%L50235%_
                                                                '())))
                                              (foldr (lambda (_%g5024650249%_
                                                              _%g5024750252%_)
                                                       (cons _%g5024650249%_
                                                             _%g5024750252%_))
                                                     '()
                                                     _%L50191%_))))
                                _%g5022150232%_))))
                       (_%g5021950255%_
                        (let ((__obj84757 (gx#syntax-local-value _%L50193%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84757
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84757
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84757
                               'identifier)))))))
                  (_%__kont7997079971%_
                   (lambda (_%L50069%_ _%L50071%_ _%L50072%_)
                     (_%expand49465%_
                      _%L50072%_
                      _%L50071%_
                      (foldr (lambda (_%g5009550098%_ _%g5009650101%_)
                               (cons _%g5009550098%_ _%g5009650101%_))
                             '()
                             _%L50069%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7997479975%_
                   (lambda (_%L49947%_ _%L49949%_ _%L49950%_)
                     (_%expand49465%_
                      _%L49950%_
                      _%L49949%_
                      (foldr (lambda (_%g4997349976%_ _%g4997449979%_)
                               (cons _%g4997349976%_ _%g4997449979%_))
                             '()
                             _%L49947%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7997879979%_
                   (lambda (_%L49825%_ _%L49827%_ _%L49828%_)
                     (_%expand49465%_
                      _%L49828%_
                      _%L49827%_
                      (foldr (lambda (_%g4985149854%_ _%g4985249857%_)
                               (cons _%g4985149854%_ _%g4985249857%_))
                             '()
                             _%L49825%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7998279983%_
                   (lambda (_%L49701%_ _%L49703%_ _%L49704%_)
                     (_%expand49465%_
                      _%L49704%_
                      _%L49703%_
                      (foldr (lambda (_%g4972949732%_ _%g4973049735%_)
                               (cons _%g4972949732%_ _%g4973049735%_))
                             '()
                             _%L49701%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8020280203%_
                      (lambda (_%e4958549621%_
                               _%hd4958649625%_
                               _%tl4958749628%_
                               _%e4958849631%_
                               _%hd4958949635%_
                               _%tl4959049638%_
                               _%e4959149641%_
                               _%hd4959249645%_
                               _%tl4959349648%_
                               _%e4959449651%_
                               _%hd4959549655%_
                               _%tl4959649658%_
                               _%e4959749661%_
                               _%hd4959849665%_
                               _%tl4959949668%_
                               _%__splice7998479985%_
                               _%target4960049671%_
                               _%tl4960249674%_)
                        (letrec ((_%loop4960349677%_
                                  (lambda (_%hd4960149681%_ _%body4960749684%_)
                                    (if (gx#stx-pair? _%hd4960149681%_)
                                        (let ((_%e4960449687%_
                                               (gx#syntax-e _%hd4960149681%_)))
                                          (let ((_%lp-tl4960649694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4960449687%_)))
                                                (_%lp-hd4960549691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4960449687%_))))
                                            (_%loop4960349677%_
                                             _%lp-tl4960649694%_
                                             (cons _%lp-hd4960549691%_
                                                   _%body4960749684%_))))
                                        (let ((_%body4960849697%_
                                               (reverse _%body4960749684%_)))
                                          (let ((_%L49701%_ _%body4960849697%_)
                                                (_%L49703%_ _%hd4959849665%_)
                                                (_%L49704%_ _%hd4959249645%_))
                                            (if (and (gx#identifier?
                                                      _%L49704%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49703%_)))
                                                (_%__kont7998279983%_
                                                 _%L49701%_
                                                 _%L49703%_
                                                 _%L49704%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))))))))
                          (_%loop4960349677%_ _%target4960049671%_ '()))))
                     (_%__match8015880159%_
                      (lambda (_%e4955849745%_
                               _%hd4955949749%_
                               _%tl4956049752%_
                               _%e4956149755%_
                               _%hd4956249759%_
                               _%tl4956349762%_
                               _%e4956449765%_
                               _%hd4956549769%_
                               _%tl4956649772%_
                               _%e4956749775%_
                               _%hd4956849779%_
                               _%tl4956949782%_
                               _%e4957049785%_
                               _%hd4957149789%_
                               _%tl4957249792%_
                               _%__splice7998079981%_
                               _%target4957349795%_
                               _%tl4957549798%_)
                        (letrec ((_%loop4957649801%_
                                  (lambda (_%hd4957449805%_ _%body4958049808%_)
                                    (if (gx#stx-pair? _%hd4957449805%_)
                                        (let ((_%e4957749811%_
                                               (gx#syntax-e _%hd4957449805%_)))
                                          (let ((_%lp-tl4957949818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4957749811%_)))
                                                (_%lp-hd4957849815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4957749811%_))))
                                            (_%loop4957649801%_
                                             _%lp-tl4957949818%_
                                             (cons _%lp-hd4957849815%_
                                                   _%body4958049808%_))))
                                        (let ((_%body4958149821%_
                                               (reverse _%body4958049808%_)))
                                          (let ((_%L49825%_ _%body4958149821%_)
                                                (_%L49827%_ _%hd4957149789%_)
                                                (_%L49828%_ _%hd4956549769%_))
                                            (if (and (gx#identifier?
                                                      _%L49828%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49827%_)))
                                                (_%__kont7997879979%_
                                                 _%L49825%_
                                                 _%L49827%_
                                                 _%L49828%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))))))))
                          (_%loop4957649801%_ _%target4957349795%_ '()))))
                     (_%__match8011480115%_
                      (lambda (_%e4953149867%_
                               _%hd4953249871%_
                               _%tl4953349874%_
                               _%e4953449877%_
                               _%hd4953549881%_
                               _%tl4953649884%_
                               _%e4953749887%_
                               _%hd4953849891%_
                               _%tl4953949894%_
                               _%e4954049897%_
                               _%hd4954149901%_
                               _%tl4954249904%_
                               _%e4954349907%_
                               _%hd4954449911%_
                               _%tl4954549914%_
                               _%__splice7997679977%_
                               _%target4954649917%_
                               _%tl4954849920%_)
                        (letrec ((_%loop4954949923%_
                                  (lambda (_%hd4954749927%_ _%body4955349930%_)
                                    (if (gx#stx-pair? _%hd4954749927%_)
                                        (let ((_%e4955049933%_
                                               (gx#syntax-e _%hd4954749927%_)))
                                          (let ((_%lp-tl4955249940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4955049933%_)))
                                                (_%lp-hd4955149937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4955049933%_))))
                                            (_%loop4954949923%_
                                             _%lp-tl4955249940%_
                                             (cons _%lp-hd4955149937%_
                                                   _%body4955349930%_))))
                                        (let ((_%body4955449943%_
                                               (reverse _%body4955349930%_)))
                                          (let ((_%L49947%_ _%body4955449943%_)
                                                (_%L49949%_ _%hd4954449911%_)
                                                (_%L49950%_ _%hd4953849891%_))
                                            (if (and (gx#identifier?
                                                      _%L49950%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49949%_)))
                                                (_%__kont7997479975%_
                                                 _%L49947%_
                                                 _%L49949%_
                                                 _%L49950%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))))))))
                          (_%loop4954949923%_ _%target4954649917%_ '()))))
                     (_%__match8007080071%_
                      (lambda (_%e4950449989%_
                               _%hd4950549993%_
                               _%tl4950649996%_
                               _%e4950749999%_
                               _%hd4950850003%_
                               _%tl4950950006%_
                               _%e4951050009%_
                               _%hd4951150013%_
                               _%tl4951250016%_
                               _%e4951350019%_
                               _%hd4951450023%_
                               _%tl4951550026%_
                               _%e4951650029%_
                               _%hd4951750033%_
                               _%tl4951850036%_
                               _%__splice7997279973%_
                               _%target4951950039%_
                               _%tl4952150042%_)
                        (letrec ((_%loop4952250045%_
                                  (lambda (_%hd4952050049%_ _%body4952650052%_)
                                    (if (gx#stx-pair? _%hd4952050049%_)
                                        (let ((_%e4952350055%_
                                               (gx#syntax-e _%hd4952050049%_)))
                                          (let ((_%lp-tl4952550062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4952350055%_)))
                                                (_%lp-hd4952450059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4952350055%_))))
                                            (_%loop4952250045%_
                                             _%lp-tl4952550062%_
                                             (cons _%lp-hd4952450059%_
                                                   _%body4952650052%_))))
                                        (let ((_%body4952750065%_
                                               (reverse _%body4952650052%_)))
                                          (let ((_%L50069%_ _%body4952750065%_)
                                                (_%L50071%_ _%hd4951750033%_)
                                                (_%L50072%_ _%hd4951150013%_))
                                            (if (and (gx#identifier?
                                                      _%L50072%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50071%_)))
                                                (_%__kont7997079971%_
                                                 _%L50069%_
                                                 _%L50071%_
                                                 _%L50072%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))))))))
                          (_%loop4952250045%_ _%target4951950039%_ '()))))
                     (_%__match8005080051%_
                      (lambda (_%e4950449989%_
                               _%hd4950549993%_
                               _%tl4950649996%_
                               _%e4950749999%_
                               _%hd4950850003%_
                               _%tl4950950006%_
                               _%e4951050009%_
                               _%hd4951150013%_
                               _%tl4951250016%_
                               _%e4951350019%_
                               _%hd4951450023%_
                               _%tl4951550026%_)
                        (if (gx#identifier? _%hd4951450023%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84933_|
                                 _%hd4951450023%_)
                                (if (gx#stx-pair? _%tl4951550026%_)
                                    (let ((_%e4951650029%_
                                           (gx#syntax-e _%tl4951550026%_)))
                                      (let ((_%tl4951850036%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4951650029%_)))
                                            (_%hd4951750033%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4951650029%_))))
                                        (if (gx#stx-null? _%tl4951850036%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4950950006%_)
                                                (let ((_%__splice7997279973%_
                                                       (gx#syntax-split-splice
                                                        _%tl4950950006%_
                                                        '0)))
                                                  (let ((_%tl4952150042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7997279973%_
                                                            '1)))
                                                        (_%target4951950039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7997279973%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4952150042%_)
                                                        (_%__match8007080071%_
                                                         _%e4950449989%_
                                                         _%hd4950549993%_
                                                         _%tl4950649996%_
                                                         _%e4950749999%_
                                                         _%hd4950850003%_
                                                         _%tl4950950006%_
                                                         _%e4951050009%_
                                                         _%hd4951150013%_
                                                         _%tl4951250016%_
                                                         _%e4951350019%_
                                                         _%hd4951450023%_
                                                         _%tl4951550026%_
                                                         _%e4951650029%_
                                                         _%hd4951750033%_
                                                         _%tl4951850036%_
                                                         _%__splice7997279973%_
                                                         _%target4951950039%_
                                                         _%tl4952150042%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4947149614%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947149614%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4947149614%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84934_|
                                     _%hd4951450023%_)
                                    (if (gx#stx-pair? _%tl4951550026%_)
                                        (let ((_%e4954349907%_
                                               (gx#syntax-e _%tl4951550026%_)))
                                          (let ((_%tl4954549914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4954349907%_)))
                                                (_%hd4954449911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4954349907%_))))
                                            (if (gx#stx-null? _%tl4954549914%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4950950006%_)
                                                    (let ((_%__splice7997679977%_
                                                           (gx#syntax-split-splice
                                                            _%tl4950950006%_
                                                            '0)))
                                                      (let ((_%tl4954849920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7997679977%_ '1)))
                    (_%target4954649917%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7997679977%_ '0))))
                (if (gx#stx-null? _%tl4954849920%_)
                    (_%__match8011480115%_
                     _%e4950449989%_
                     _%hd4950549993%_
                     _%tl4950649996%_
                     _%e4950749999%_
                     _%hd4950850003%_
                     _%tl4950950006%_
                     _%e4951050009%_
                     _%hd4951150013%_
                     _%tl4951250016%_
                     _%e4951350019%_
                     _%hd4951450023%_
                     _%tl4951550026%_
                     _%e4954349907%_
                     _%hd4954449911%_
                     _%tl4954549914%_
                     _%__splice7997679977%_
                     _%target4954649917%_
                     _%tl4954849920%_)
                    (let () (declare (not safe)) (_%g4947149614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4947149614%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4947149614%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84935_|
                                         _%hd4951450023%_)
                                        (if (gx#stx-pair? _%tl4951550026%_)
                                            (let ((_%e4957049785%_
                                                   (gx#syntax-e
                                                    _%tl4951550026%_)))
                                              (let ((_%tl4957249792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4957049785%_)))
                                                    (_%hd4957149789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4957049785%_))))
                                                (if (gx#stx-null?
                                                     _%tl4957249792%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4950950006%_)
                                                        (let ((_%__splice7998079981%_
                                                               (gx#syntax-split-splice
                                                                _%tl4950950006%_
                                                                '0)))
                                                          (let ((_%tl4957549798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7998079981%_ '1)))
                        (_%target4957349795%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7998079981%_ '0))))
                    (if (gx#stx-null? _%tl4957549798%_)
                        (_%__match8015880159%_
                         _%e4950449989%_
                         _%hd4950549993%_
                         _%tl4950649996%_
                         _%e4950749999%_
                         _%hd4950850003%_
                         _%tl4950950006%_
                         _%e4951050009%_
                         _%hd4951150013%_
                         _%tl4951250016%_
                         _%e4951350019%_
                         _%hd4951450023%_
                         _%tl4951550026%_
                         _%e4957049785%_
                         _%hd4957149789%_
                         _%tl4957249792%_
                         _%__splice7998079981%_
                         _%target4957349795%_
                         _%tl4957549798%_)
                        (let () (declare (not safe)) (_%g4947149614%_)))))
                (let () (declare (not safe)) (_%g4947149614%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4947149614%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947149614%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84936_|
                                             _%hd4951450023%_)
                                            (if (gx#stx-pair? _%tl4951550026%_)
                                                (let ((_%e4959749661%_
                                                       (gx#syntax-e
                                                        _%tl4951550026%_)))
                                                  (let ((_%tl4959949668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4959749661%_)))
                                                        (_%hd4959849665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4959749661%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4959949668%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4950950006%_)
                                                            (let ((_%__splice7998479985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4950950006%_ '0)))
                      (let ((_%tl4960249674%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7998479985%_ '1)))
                            (_%target4960049671%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7998479985%_ '0))))
                        (if (gx#stx-null? _%tl4960249674%_)
                            (_%__match8020280203%_
                             _%e4950449989%_
                             _%hd4950549993%_
                             _%tl4950649996%_
                             _%e4950749999%_
                             _%hd4950850003%_
                             _%tl4950950006%_
                             _%e4951050009%_
                             _%hd4951150013%_
                             _%tl4951250016%_
                             _%e4951350019%_
                             _%hd4951450023%_
                             _%tl4951550026%_
                             _%e4959749661%_
                             _%hd4959849665%_
                             _%tl4959949668%_
                             _%__splice7998479985%_
                             _%target4960049671%_
                             _%tl4960249674%_)
                            (let () (declare (not safe)) (_%g4947149614%_)))))
                    (let () (declare (not safe)) (_%g4947149614%_)))
                (let () (declare (not safe)) (_%g4947149614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4947149614%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947149614%_))))))
                            (let () (declare (not safe)) (_%g4947149614%_)))))
                     (_%__match8002680027%_
                      (lambda (_%e4947750111%_
                               _%hd4947850115%_
                               _%tl4947950118%_
                               _%e4948050121%_
                               _%hd4948150125%_
                               _%tl4948250128%_
                               _%e4948350131%_
                               _%hd4948450135%_
                               _%tl4948550138%_
                               _%e4948650141%_
                               _%hd4948750145%_
                               _%tl4948850148%_
                               _%e4948950151%_
                               _%hd4949050155%_
                               _%tl4949150158%_
                               _%__splice7996879969%_
                               _%target4949250161%_
                               _%tl4949450164%_)
                        (letrec ((_%loop4949550167%_
                                  (lambda (_%hd4949350171%_ _%body4949950174%_)
                                    (if (gx#stx-pair? _%hd4949350171%_)
                                        (let ((_%e4949650177%_
                                               (gx#syntax-e _%hd4949350171%_)))
                                          (let ((_%lp-tl4949850184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4949650177%_)))
                                                (_%lp-hd4949750181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4949650177%_))))
                                            (_%loop4949550167%_
                                             _%lp-tl4949850184%_
                                             (cons _%lp-hd4949750181%_
                                                   _%body4949950174%_))))
                                        (let ((_%body4950050187%_
                                               (reverse _%body4949950174%_)))
                                          (let ((_%L50191%_ _%body4950050187%_)
                                                (_%L50193%_ _%hd4949050155%_)
                                                (_%L50194%_ _%hd4948750145%_)
                                                (_%L50195%_ _%hd4948450135%_))
                                            (if (let ((__tmp84937
                                                       (gx#syntax-local-value
                                                        _%L50193%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84937))
                                                (_%__kont7996679967%_
                                                 _%L50191%_
                                                 _%L50193%_
                                                 _%L50194%_
                                                 _%L50195%_)
                                                (_%__match8005080051%_
                                                 _%e4947750111%_
                                                 _%hd4947850115%_
                                                 _%tl4947950118%_
                                                 _%e4948050121%_
                                                 _%hd4948150125%_
                                                 _%tl4948250128%_
                                                 _%e4948350131%_
                                                 _%hd4948450135%_
                                                 _%tl4948550138%_
                                                 _%e4948650141%_
                                                 _%hd4948750145%_
                                                 _%tl4948850148%_))))))))
                          (_%loop4949550167%_ _%target4949250161%_ '())))))
                (if (gx#stx-pair? _%__stx7996379964%_)
                    (let ((_%e4947750111%_ (gx#syntax-e _%__stx7996379964%_)))
                      (let ((_%tl4947950118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4947750111%_)))
                            (_%hd4947850115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4947750111%_))))
                        (if (gx#stx-pair? _%tl4947950118%_)
                            (let ((_%e4948050121%_
                                   (gx#syntax-e _%tl4947950118%_)))
                              (let ((_%tl4948250128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4948050121%_)))
                                    (_%hd4948150125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4948050121%_))))
                                (if (gx#stx-pair? _%hd4948150125%_)
                                    (let ((_%e4948350131%_
                                           (gx#syntax-e _%hd4948150125%_)))
                                      (let ((_%tl4948550138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4948350131%_)))
                                            (_%hd4948450135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4948350131%_))))
                                        (if (gx#stx-pair? _%tl4948550138%_)
                                            (let ((_%e4948650141%_
                                                   (gx#syntax-e
                                                    _%tl4948550138%_)))
                                              (let ((_%tl4948850148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4948650141%_)))
                                                    (_%hd4948750145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4948650141%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4948850148%_)
                                                    (let ((_%e4948950151%_
                                                           (gx#syntax-e
                                                            _%tl4948850148%_)))
                                                      (let ((_%tl4949150158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4948950151%_)))
                    (_%hd4949050155%_
                     (let () (declare (not safe)) (##car _%e4948950151%_))))
                (if (gx#stx-null? _%tl4949150158%_)
                    (if (gx#stx-pair/null? _%tl4948250128%_)
                        (let ((_%__splice7996879969%_
                               (gx#syntax-split-splice _%tl4948250128%_ '0)))
                          (let ((_%tl4949450164%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7996879969%_ '1)))
                                (_%target4949250161%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7996879969%_ '0))))
                            (if (gx#stx-null? _%tl4949450164%_)
                                (_%__match8002680027%_
                                 _%e4947750111%_
                                 _%hd4947850115%_
                                 _%tl4947950118%_
                                 _%e4948050121%_
                                 _%hd4948150125%_
                                 _%tl4948250128%_
                                 _%e4948350131%_
                                 _%hd4948450135%_
                                 _%tl4948550138%_
                                 _%e4948650141%_
                                 _%hd4948750145%_
                                 _%tl4948850148%_
                                 _%e4948950151%_
                                 _%hd4949050155%_
                                 _%tl4949150158%_
                                 _%__splice7996879969%_
                                 _%target4949250161%_
                                 _%tl4949450164%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4947149614%_)))))
                        (let () (declare (not safe)) (_%g4947149614%_)))
                    (let () (declare (not safe)) (_%g4947149614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4947149614%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4947149614%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4947149614%_)))))
                            (let () (declare (not safe)) (_%g4947149614%_)))))
                    (let () (declare (not safe)) (_%g4947149614%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50685%_)
        (let* ((_%__stx8020580206%_ _%stx50685%_)
               (_%g5069050750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8020580206%_))))
          (let ((_%__kont8020880209%_
                 (lambda (_%L51312%_ _%L51314%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51314%_ '()))
                               (foldr (lambda (_%g5133051333%_ _%g5133151336%_)
                                        (cons _%g5133051333%_ _%g5133151336%_))
                                      '()
                                      _%L51312%_)))))
                (_%__kont8021280213%_
                 (lambda (_%L50898%_ _%L50900%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50900%_)
                       (let* ((_%g5092050927%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50685%_
                                _%L50900%_))
                              (_%E5092250933%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5092050927%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5092351231%_
                               (lambda (_%parts50937%_ _%var50939%_)
                                 (let ((_%$e50941%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50939%_))))
                                   (if _%$e50941%_
                                       ((lambda (_%te50945%_)
                                          (let _%loop50948%_ ((_%parts50951%_
                                                               _%parts50937%_)
                                                              (_%type50953%_
                                                               (##direct-structure-ref
                                                                _%te50945%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50954%_
                                                               _%var50939%_)
                                                              (_%checked-method?50955%_
                                                               (##direct-structure-ref
                                                                _%te50945%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50956%_
                                                               '#f))
                                            (let* ((_%parts5095750965%_
                                                    _%parts50951%_)
                                                   (_%else5095951026%_
                                                    (lambda ()
                                                      (let* ((_%g5097750985%_
                                                              (lambda (_%g5097850981%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5097850981%_)))
                     (_%g5097651022%_
                      (lambda (_%g5097850989%_)
                        ((lambda (_%L50992%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50992%_
                                       (foldr (lambda (_%g5101351016%_
                                                       _%g5101451019%_)
                                                (cons _%g5101351016%_
                                                      _%g5101451019%_))
                                              '()
                                              _%L50898%_))))
                         _%g5097850989%_))))
                (_%g5097651022%_ _%object50954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5096151205%_
                                                    (lambda (_%rest51030%_
                                                             _%part51032%_)
                                                      (if (and (not _%nil-check?50956%_)
                                                               (let ((__tmp84938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51032%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp84938)))
                  (let ((_%str51036%_ (symbol->string _%part51032%_)))
                    (_%loop50948%_
                     (cons (let ((__tmp84939
                                  (substring
                                   _%str51036%_
                                   '1
                                   (string-length _%str51036%_))))
                             (declare (not safe))
                             (##string->symbol __tmp84939))
                           _%rest51030%_)
                     _%type50953%_
                     _%object50954%_
                     _%checked-method?50955%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50953%_))
                      (let* ((_%g5104151056%_
                              (lambda (_%g5104251052%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5104251052%_)))
                             (_%g5104051125%_
                              (lambda (_%g5104251060%_)
                                (if (gx#stx-pair? _%g5104251060%_)
                                    (let ((_%e5104551063%_
                                           (gx#syntax-e _%g5104251060%_)))
                                      (let ((_%hd5104651067%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5104551063%_)))
                                            (_%tl5104751070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5104551063%_))))
                                        (if (gx#stx-pair? _%tl5104751070%_)
                                            (let ((_%e5104851073%_
                                                   (gx#syntax-e
                                                    _%tl5104751070%_)))
                                              (let ((_%hd5104951077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5104851073%_)))
                                                    (_%tl5105051080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5104851073%_))))
                                                (if (gx#stx-null?
                                                     _%tl5105051080%_)
                                                    ((lambda (_%L51083%_
                                                              _%L51085%_)
                                                       (if (null? _%rest51030%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51083%_ (cons _%L51085%_ '()))
                               (foldr (lambda (_%g5110451107%_ _%g5110551110%_)
                                        (cons _%g5110451107%_ _%g5110551110%_))
                                      '()
                                      _%L50898%_)))
                   (let ((_%$e51113%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50953%_
                           _%part51032%_)))
                     (if _%$e51113%_
                         ((lambda (_%slot-type51117%_)
                            (let ((_%slot-type51120%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50685%_
                                      _%slot-type51117%_))))
                              (_%loop50948%_
                               _%rest51030%_
                               _%slot-type51120%_
                               (cons _%L51083%_ (cons _%L51085%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50953%_
                                _%part51032%_)
                               '#f)))
                          _%$e51113%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50685%_
                          _%L50900%_
                          _%part51032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5104951077%_
                                                     _%hd5104651067%_)
                                                    (_%g5104151056%_
                                                     _%g5104251060%_))))
                                            (_%g5104151056%_
                                             _%g5104251060%_))))
                                    (_%g5104151056%_ _%g5104251060%_)))))
                        (_%g5104051125%_
                         (list (if _%nil-check?50956%_
                                   (cons 'check-nil!
                                         (cons _%object50954%_ '()))
                                   _%object50954%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50685%_
                                _%type50953%_
                                _%part51032%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50953%_))
                          (if (null? _%rest51030%_)
                              (let* ((_%g5113151146%_
                                      (lambda (_%g5113251142%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5113251142%_)))
                                     (_%g5113051199%_
                                      (lambda (_%g5113251150%_)
                                        (if (gx#stx-pair? _%g5113251150%_)
                                            (let ((_%e5113551153%_
                                                   (gx#syntax-e
                                                    _%g5113251150%_)))
                                              (let ((_%hd5113651157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5113551153%_)))
                                                    (_%tl5113751160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5113551153%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5113751160%_)
                                                    (let ((_%e5113851163%_
                                                           (gx#syntax-e
                                                            _%tl5113751160%_)))
                                                      (let ((_%hd5113951167%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5113851163%_)))
                    (_%tl5114051170%_
                     (let () (declare (not safe)) (##cdr _%e5113851163%_))))
                (if (gx#stx-null? _%tl5114051170%_)
                    ((lambda (_%L51173%_ _%L51175%_)
                       (cons _%L51173%_
                             (cons _%L51175%_
                                   (foldr (lambda (_%g5119051193%_
                                                   _%g5119151196%_)
                                            (cons _%g5119051193%_
                                                  _%g5119151196%_))
                                          '()
                                          _%L50898%_))))
                     _%hd5113951167%_
                     _%hd5113651157%_)
                    (_%g5113151146%_ _%g5113251150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5113151146%_
                                                     _%g5113251150%_))))
                                            (_%g5113151146%_
                                             _%g5113251150%_)))))
                                (_%g5113051199%_
                                 (list (if _%nil-check?50956%_
                                           (cons 'check-nil!
                                                 (cons _%object50954%_ '()))
                                           _%object50954%_)
                                       (gx#stx-identifier
                                        _%L50900%_
                                        (if _%checked-method?50955%_ '"" '"&")
                                        (let ((__obj84758 _%type50953%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj84758
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj84758
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj84758
                                               'name)))
                                        '"-"
                                        _%part51032%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50685%_
                               _%L50900%_
                               _%part51032%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50685%_
                           _%type50953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5095750965%_)
                                                  (let ((_%hd5096251209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5095750965%_)))
                                                        (_%tl5096351212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5095750965%_))))
                                                    (let* ((_%part51215%_
                                                            _%hd5096251209%_)
                                                           (_%rest51218%_
                                                            _%tl5096351212%_))
                                                      (_%K5096151205%_
                                                       _%rest51218%_
                                                       _%part51215%_)))
                                                  (_%else5095951026%_)))))
                                        _%$e50941%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50900%_
                                                   (foldr (lambda (_%g5122251225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5122351228%_)
                    (cons _%g5122251225%_ _%g5122351228%_))
                  '()
                  _%L50898%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5092050927%_)
                             (let ((_%hd5092451235%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5092050927%_)))
                                   (_%tl5092551238%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5092050927%_))))
                               (let* ((_%var51241%_ _%hd5092451235%_)
                                      (_%parts51244%_ _%tl5092551238%_))
                                 (_%K5092351231%_
                                  _%parts51244%_
                                  _%var51241%_)))
                             (_%E5092250933%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50900%_
                                   (foldr (lambda (_%g5124651249%_
                                                   _%g5124751252%_)
                                            (cons _%g5124651249%_
                                                  _%g5124751252%_))
                                          '()
                                          _%L50898%_))))))
                (_%__kont8021680217%_
                 (lambda (_%L50797%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5081250815%_ _%g5081350818%_)
                                  (cons _%g5081250815%_ _%g5081350818%_))
                                '()
                                _%L50797%_)))))
            (let* ((_%__match8029280293%_
                    (lambda (_%e5073350757%_
                             _%hd5073450761%_
                             _%tl5073550764%_
                             _%__splice8021880219%_
                             _%target5073650767%_
                             _%tl5073850770%_)
                      (letrec ((_%loop5073950773%_
                                (lambda (_%hd5073750777%_ _%arg5074350780%_)
                                  (if (gx#stx-pair? _%hd5073750777%_)
                                      (let ((_%e5074050783%_
                                             (gx#syntax-e _%hd5073750777%_)))
                                        (let ((_%lp-tl5074250790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5074050783%_)))
                                              (_%lp-hd5074150787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5074050783%_))))
                                          (_%loop5073950773%_
                                           _%lp-tl5074250790%_
                                           (cons _%lp-hd5074150787%_
                                                 _%arg5074350780%_))))
                                      (let ((_%arg5074450793%_
                                             (reverse _%arg5074350780%_)))
                                        (_%__kont8021680217%_
                                         _%arg5074450793%_))))))
                        (_%loop5073950773%_ _%target5073650767%_ '()))))
                   (_%__match8027880279%_
                    (lambda (_%e5071150828%_
                             _%hd5071250832%_
                             _%tl5071350835%_
                             _%e5071450838%_
                             _%hd5071550842%_
                             _%tl5071650845%_
                             _%e5071750848%_
                             _%hd5071850852%_
                             _%tl5071950855%_
                             _%e5072050858%_
                             _%hd5072150862%_
                             _%tl5072250865%_
                             _%__splice8021480215%_
                             _%target5072350868%_
                             _%tl5072550871%_)
                      (letrec ((_%loop5072650874%_
                                (lambda (_%hd5072450878%_ _%rand5073050881%_)
                                  (if (gx#stx-pair? _%hd5072450878%_)
                                      (let ((_%e5072750884%_
                                             (gx#syntax-e _%hd5072450878%_)))
                                        (let ((_%lp-tl5072950891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5072750884%_)))
                                              (_%lp-hd5072850888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5072750884%_))))
                                          (_%loop5072650874%_
                                           _%lp-tl5072950891%_
                                           (cons _%lp-hd5072850888%_
                                                 _%rand5073050881%_))))
                                      (let ((_%rand5073150894%_
                                             (reverse _%rand5073050881%_)))
                                        (_%__kont8021280213%_
                                         _%rand5073150894%_
                                         _%hd5072150862%_))))))
                        (_%loop5072650874%_ _%target5072350868%_ '()))))
                   (_%__match8025280253%_
                    (lambda (_%e5071150828%_
                             _%hd5071250832%_
                             _%tl5071350835%_
                             _%e5071450838%_
                             _%hd5071550842%_
                             _%tl5071650845%_)
                      (if (gx#stx-pair? _%hd5071550842%_)
                          (let ((_%e5071750848%_
                                 (gx#syntax-e _%hd5071550842%_)))
                            (let ((_%tl5071950855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5071750848%_)))
                                  (_%hd5071850852%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5071750848%_))))
                              (if (gx#identifier? _%hd5071850852%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84940_|
                                       _%hd5071850852%_)
                                      (if (gx#stx-pair? _%tl5071950855%_)
                                          (let ((_%e5072050858%_
                                                 (gx#syntax-e
                                                  _%tl5071950855%_)))
                                            (let ((_%tl5072250865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5072050858%_)))
                                                  (_%hd5072150862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5072050858%_))))
                                              (if (gx#stx-null?
                                                   _%tl5072250865%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5071650845%_)
                                                      (let ((_%__splice8021480215%_
                                                             (gx#syntax-split-splice
                                                              _%tl5071650845%_
                                                              '0)))
                                                        (let ((_%tl5072550871%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8021480215%_ '1)))
                      (_%target5072350868%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8021480215%_ '0))))
                  (if (gx#stx-null? _%tl5072550871%_)
                      (_%__match8027880279%_
                       _%e5071150828%_
                       _%hd5071250832%_
                       _%tl5071350835%_
                       _%e5071450838%_
                       _%hd5071550842%_
                       _%tl5071650845%_
                       _%e5071750848%_
                       _%hd5071850852%_
                       _%tl5071950855%_
                       _%e5072050858%_
                       _%hd5072150862%_
                       _%tl5072250865%_
                       _%__splice8021480215%_
                       _%target5072350868%_
                       _%tl5072550871%_)
                      (if (gx#stx-pair/null? _%tl5071350835%_)
                          (let ((_%__splice8021880219%_
                                 (gx#syntax-split-splice _%tl5071350835%_ '0)))
                            (let ((_%tl5073850770%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8021880219%_ '1)))
                                  (_%target5073650767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8021880219%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073850770%_)
                                  (_%__match8029280293%_
                                   _%e5071150828%_
                                   _%hd5071250832%_
                                   _%tl5071350835%_
                                   _%__splice8021880219%_
                                   _%target5073650767%_
                                   _%tl5073850770%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5069050750%_)))))
                          (let () (declare (not safe)) (_%g5069050750%_))))))
              (if (gx#stx-pair/null? _%tl5071350835%_)
                  (let ((_%__splice8021880219%_
                         (gx#syntax-split-splice _%tl5071350835%_ '0)))
                    (let ((_%tl5073850770%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '1)))
                          (_%target5073650767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '0))))
                      (if (gx#stx-null? _%tl5073850770%_)
                          (_%__match8029280293%_
                           _%e5071150828%_
                           _%hd5071250832%_
                           _%tl5071350835%_
                           _%__splice8021880219%_
                           _%target5073650767%_
                           _%tl5073850770%_)
                          (let () (declare (not safe)) (_%g5069050750%_)))))
                  (let () (declare (not safe)) (_%g5069050750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5071350835%_)
                                                      (let ((_%__splice8021880219%_
                                                             (gx#syntax-split-splice
                                                              _%tl5071350835%_
                                                              '0)))
                                                        (let ((_%tl5073850770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8021880219%_ '1)))
                      (_%target5073650767%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8021880219%_ '0))))
                  (if (gx#stx-null? _%tl5073850770%_)
                      (_%__match8029280293%_
                       _%e5071150828%_
                       _%hd5071250832%_
                       _%tl5071350835%_
                       _%__splice8021880219%_
                       _%target5073650767%_
                       _%tl5073850770%_)
                      (let () (declare (not safe)) (_%g5069050750%_)))))
              (let () (declare (not safe)) (_%g5069050750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5071350835%_)
                                              (let ((_%__splice8021880219%_
                                                     (gx#syntax-split-splice
                                                      _%tl5071350835%_
                                                      '0)))
                                                (let ((_%tl5073850770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8021880219%_
                                                          '1)))
                                                      (_%target5073650767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8021880219%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5073850770%_)
                                                      (_%__match8029280293%_
                                                       _%e5071150828%_
                                                       _%hd5071250832%_
                                                       _%tl5071350835%_
                                                       _%__splice8021880219%_
                                                       _%target5073650767%_
                                                       _%tl5073850770%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5069050750%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5069050750%_))))
                                      (if (gx#stx-pair/null? _%tl5071350835%_)
                                          (let ((_%__splice8021880219%_
                                                 (gx#syntax-split-splice
                                                  _%tl5071350835%_
                                                  '0)))
                                            (let ((_%tl5073850770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021880219%_
                                                      '1)))
                                                  (_%target5073650767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021880219%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073850770%_)
                                                  (_%__match8029280293%_
                                                   _%e5071150828%_
                                                   _%hd5071250832%_
                                                   _%tl5071350835%_
                                                   _%__splice8021880219%_
                                                   _%target5073650767%_
                                                   _%tl5073850770%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5069050750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5069050750%_))))
                                  (if (gx#stx-pair/null? _%tl5071350835%_)
                                      (let ((_%__splice8021880219%_
                                             (gx#syntax-split-splice
                                              _%tl5071350835%_
                                              '0)))
                                        (let ((_%tl5073850770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8021880219%_
                                                  '1)))
                                              (_%target5073650767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8021880219%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5073850770%_)
                                              (_%__match8029280293%_
                                               _%e5071150828%_
                                               _%hd5071250832%_
                                               _%tl5071350835%_
                                               _%__splice8021880219%_
                                               _%target5073650767%_
                                               _%tl5073850770%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5069050750%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5069050750%_))))))
                          (if (gx#stx-pair/null? _%tl5071350835%_)
                              (let ((_%__splice8021880219%_
                                     (gx#syntax-split-splice
                                      _%tl5071350835%_
                                      '0)))
                                (let ((_%tl5073850770%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '1)))
                                      (_%target5073650767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073850770%_)
                                      (_%__match8029280293%_
                                       _%e5071150828%_
                                       _%hd5071250832%_
                                       _%tl5071350835%_
                                       _%__splice8021880219%_
                                       _%target5073650767%_
                                       _%tl5073850770%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5069050750%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5069050750%_))))))
                   (_%__match8024080241%_
                    (lambda (_%e5069451262%_
                             _%hd5069551266%_
                             _%tl5069651269%_
                             _%e5069751272%_
                             _%hd5069851276%_
                             _%tl5069951279%_
                             _%__splice8021080211%_
                             _%target5070051282%_
                             _%tl5070251285%_)
                      (letrec ((_%loop5070351288%_
                                (lambda (_%hd5070151292%_ _%rand5070751295%_)
                                  (if (gx#stx-pair? _%hd5070151292%_)
                                      (let ((_%e5070451298%_
                                             (gx#syntax-e _%hd5070151292%_)))
                                        (let ((_%lp-tl5070651305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5070451298%_)))
                                              (_%lp-hd5070551302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5070451298%_))))
                                          (_%loop5070351288%_
                                           _%lp-tl5070651305%_
                                           (cons _%lp-hd5070551302%_
                                                 _%rand5070751295%_))))
                                      (let ((_%rand5070851308%_
                                             (reverse _%rand5070751295%_)))
                                        (let ((_%L51312%_ _%rand5070851308%_)
                                              (_%L51314%_ _%hd5069851276%_))
                                          (if (gx#identifier? _%L51314%_)
                                              (_%__kont8020880209%_
                                               _%L51312%_
                                               _%L51314%_)
                                              (_%__match8025280253%_
                                               _%e5069451262%_
                                               _%hd5069551266%_
                                               _%tl5069651269%_
                                               _%e5069751272%_
                                               _%hd5069851276%_
                                               _%tl5069951279%_))))))))
                        (_%loop5070351288%_ _%target5070051282%_ '())))))
              (if (gx#stx-pair? _%__stx8020580206%_)
                  (let ((_%e5069451262%_ (gx#syntax-e _%__stx8020580206%_)))
                    (let ((_%tl5069651269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5069451262%_)))
                          (_%hd5069551266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5069451262%_))))
                      (if (gx#stx-pair? _%tl5069651269%_)
                          (let ((_%e5069751272%_
                                 (gx#syntax-e _%tl5069651269%_)))
                            (let ((_%tl5069951279%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5069751272%_)))
                                  (_%hd5069851276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5069751272%_))))
                              (if (gx#stx-pair/null? _%tl5069951279%_)
                                  (let ((_%__splice8021080211%_
                                         (gx#syntax-split-splice
                                          _%tl5069951279%_
                                          '0)))
                                    (let ((_%tl5070251285%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8021080211%_
                                              '1)))
                                          (_%target5070051282%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8021080211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5070251285%_)
                                          (_%__match8024080241%_
                                           _%e5069451262%_
                                           _%hd5069551266%_
                                           _%tl5069651269%_
                                           _%e5069751272%_
                                           _%hd5069851276%_
                                           _%tl5069951279%_
                                           _%__splice8021080211%_
                                           _%target5070051282%_
                                           _%tl5070251285%_)
                                          (if (gx#stx-pair? _%hd5069851276%_)
                                              (let ((_%e5071750848%_
                                                     (gx#syntax-e
                                                      _%hd5069851276%_)))
                                                (let ((_%tl5071950855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5071750848%_)))
                                                      (_%hd5071850852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5071750848%_))))
                                                  (if (gx#identifier?
                                                       _%hd5071850852%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84940_|
                                                           _%hd5071850852%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5071950855%_)
                                                              (let ((_%e5072050858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5071950855%_)))
                        (let ((_%tl5072250865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5072050858%_)))
                              (_%hd5072150862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5072050858%_))))
                          (if (gx#stx-pair/null? _%tl5069651269%_)
                              (let ((_%__splice8021880219%_
                                     (gx#syntax-split-splice
                                      _%tl5069651269%_
                                      '0)))
                                (let ((_%tl5073850770%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '1)))
                                      (_%target5073650767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073850770%_)
                                      (_%__match8029280293%_
                                       _%e5069451262%_
                                       _%hd5069551266%_
                                       _%tl5069651269%_
                                       _%__splice8021880219%_
                                       _%target5073650767%_
                                       _%tl5073850770%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5069050750%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5069050750%_)))))
                      (if (gx#stx-pair/null? _%tl5069651269%_)
                          (let ((_%__splice8021880219%_
                                 (gx#syntax-split-splice _%tl5069651269%_ '0)))
                            (let ((_%tl5073850770%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8021880219%_ '1)))
                                  (_%target5073650767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8021880219%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073850770%_)
                                  (_%__match8029280293%_
                                   _%e5069451262%_
                                   _%hd5069551266%_
                                   _%tl5069651269%_
                                   _%__splice8021880219%_
                                   _%target5073650767%_
                                   _%tl5073850770%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5069050750%_)))))
                          (let () (declare (not safe)) (_%g5069050750%_))))
                  (if (gx#stx-pair/null? _%tl5069651269%_)
                      (let ((_%__splice8021880219%_
                             (gx#syntax-split-splice _%tl5069651269%_ '0)))
                        (let ((_%tl5073850770%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021880219%_ '1)))
                              (_%target5073650767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021880219%_ '0))))
                          (if (gx#stx-null? _%tl5073850770%_)
                              (_%__match8029280293%_
                               _%e5069451262%_
                               _%hd5069551266%_
                               _%tl5069651269%_
                               _%__splice8021880219%_
                               _%target5073650767%_
                               _%tl5073850770%_)
                              (let ()
                                (declare (not safe))
                                (_%g5069050750%_)))))
                      (let () (declare (not safe)) (_%g5069050750%_))))
              (if (gx#stx-pair/null? _%tl5069651269%_)
                  (let ((_%__splice8021880219%_
                         (gx#syntax-split-splice _%tl5069651269%_ '0)))
                    (let ((_%tl5073850770%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '1)))
                          (_%target5073650767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '0))))
                      (if (gx#stx-null? _%tl5073850770%_)
                          (_%__match8029280293%_
                           _%e5069451262%_
                           _%hd5069551266%_
                           _%tl5069651269%_
                           _%__splice8021880219%_
                           _%target5073650767%_
                           _%tl5073850770%_)
                          (let () (declare (not safe)) (_%g5069050750%_)))))
                  (let () (declare (not safe)) (_%g5069050750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069651269%_)
                                                  (let ((_%__splice8021880219%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069651269%_
                                                          '0)))
                                                    (let ((_%tl5073850770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021880219%_
                                                              '1)))
                                                          (_%target5073650767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021880219%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073850770%_)
                                                          (_%__match8029280293%_
                                                           _%e5069451262%_
                                                           _%hd5069551266%_
                                                           _%tl5069651269%_
                                                           _%__splice8021880219%_
                                                           _%target5073650767%_
                                                           _%tl5073850770%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5069050750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5069050750%_)))))))
                                  (if (gx#stx-pair? _%hd5069851276%_)
                                      (let ((_%e5071750848%_
                                             (gx#syntax-e _%hd5069851276%_)))
                                        (let ((_%tl5071950855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5071750848%_)))
                                              (_%hd5071850852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5071750848%_))))
                                          (if (gx#identifier? _%hd5071850852%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g84940_|
                                                   _%hd5071850852%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5071950855%_)
                                                      (let ((_%e5072050858%_
                                                             (gx#syntax-e
                                                              _%tl5071950855%_)))
                                                        (let ((_%tl5072250865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5072050858%_)))
                      (_%hd5072150862%_
                       (let () (declare (not safe)) (##car _%e5072050858%_))))
                  (if (gx#stx-pair/null? _%tl5069651269%_)
                      (let ((_%__splice8021880219%_
                             (gx#syntax-split-splice _%tl5069651269%_ '0)))
                        (let ((_%tl5073850770%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021880219%_ '1)))
                              (_%target5073650767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021880219%_ '0))))
                          (if (gx#stx-null? _%tl5073850770%_)
                              (_%__match8029280293%_
                               _%e5069451262%_
                               _%hd5069551266%_
                               _%tl5069651269%_
                               _%__splice8021880219%_
                               _%target5073650767%_
                               _%tl5073850770%_)
                              (let ()
                                (declare (not safe))
                                (_%g5069050750%_)))))
                      (let () (declare (not safe)) (_%g5069050750%_)))))
              (if (gx#stx-pair/null? _%tl5069651269%_)
                  (let ((_%__splice8021880219%_
                         (gx#syntax-split-splice _%tl5069651269%_ '0)))
                    (let ((_%tl5073850770%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '1)))
                          (_%target5073650767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021880219%_ '0))))
                      (if (gx#stx-null? _%tl5073850770%_)
                          (_%__match8029280293%_
                           _%e5069451262%_
                           _%hd5069551266%_
                           _%tl5069651269%_
                           _%__splice8021880219%_
                           _%target5073650767%_
                           _%tl5073850770%_)
                          (let () (declare (not safe)) (_%g5069050750%_)))))
                  (let () (declare (not safe)) (_%g5069050750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5069651269%_)
                                                      (let ((_%__splice8021880219%_
                                                             (gx#syntax-split-splice
                                                              _%tl5069651269%_
                                                              '0)))
                                                        (let ((_%tl5073850770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8021880219%_ '1)))
                      (_%target5073650767%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8021880219%_ '0))))
                  (if (gx#stx-null? _%tl5073850770%_)
                      (_%__match8029280293%_
                       _%e5069451262%_
                       _%hd5069551266%_
                       _%tl5069651269%_
                       _%__splice8021880219%_
                       _%target5073650767%_
                       _%tl5073850770%_)
                      (let () (declare (not safe)) (_%g5069050750%_)))))
              (let () (declare (not safe)) (_%g5069050750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069651269%_)
                                                  (let ((_%__splice8021880219%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069651269%_
                                                          '0)))
                                                    (let ((_%tl5073850770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021880219%_
                                                              '1)))
                                                          (_%target5073650767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021880219%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073850770%_)
                                                          (_%__match8029280293%_
                                                           _%e5069451262%_
                                                           _%hd5069551266%_
                                                           _%tl5069651269%_
                                                           _%__splice8021880219%_
                                                           _%target5073650767%_
                                                           _%tl5073850770%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5069050750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5069050750%_))))))
                                      (if (gx#stx-pair/null? _%tl5069651269%_)
                                          (let ((_%__splice8021880219%_
                                                 (gx#syntax-split-splice
                                                  _%tl5069651269%_
                                                  '0)))
                                            (let ((_%tl5073850770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021880219%_
                                                      '1)))
                                                  (_%target5073650767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021880219%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073850770%_)
                                                  (_%__match8029280293%_
                                                   _%e5069451262%_
                                                   _%hd5069551266%_
                                                   _%tl5069651269%_
                                                   _%__splice8021880219%_
                                                   _%target5073650767%_
                                                   _%tl5073850770%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5069050750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5069050750%_)))))))
                          (if (gx#stx-pair/null? _%tl5069651269%_)
                              (let ((_%__splice8021880219%_
                                     (gx#syntax-split-splice
                                      _%tl5069651269%_
                                      '0)))
                                (let ((_%tl5073850770%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '1)))
                                      (_%target5073650767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021880219%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073850770%_)
                                      (_%__match8029280293%_
                                       _%e5069451262%_
                                       _%hd5069551266%_
                                       _%tl5069651269%_
                                       _%__splice8021880219%_
                                       _%target5073650767%_
                                       _%tl5073850770%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5069050750%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5069050750%_))))))
                  (let () (declare (not safe)) (_%g5069050750%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51346%_)
        (let* ((_%__stx8029580296%_ _%stx51346%_)
               (_%g5135051371%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8029580296%_))))
          (let ((_%__kont8029880299%_
                 (lambda (_%L51439%_)
                   (let* ((_%g5145151458%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51346%_
                            _%L51439%_))
                          (_%E5145351464%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5145151458%_
                                    '([var . parts]))
                             (void)))
                          (_%K5145451680%_
                           (lambda (_%parts51468%_ _%var51470%_)
                             (let ((_%$e51472%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51470%_))))
                               (if _%$e51472%_
                                   ((lambda (_%te51476%_)
                                      (let _%loop51479%_ ((_%parts51482%_
                                                           _%parts51468%_)
                                                          (_%type51484%_
                                                           (##direct-structure-ref
                                                            _%te51476%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51485%_
                                                           _%var51470%_)
                                                          (_%nil-check?51486%_
                                                           '#f))
                                        (let* ((_%parts5148751495%_
                                                _%parts51482%_)
                                               (_%else5148951507%_
                                                (lambda () _%object51485%_))
                                               (_%K5149151662%_
                                                (lambda (_%rest51511%_
                                                         _%part51513%_)
                                                  (if (and (not _%nil-check?51486%_)
                                                           (let ((__tmp84941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51513%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84941)))
              (let ((_%str51517%_ (symbol->string _%part51513%_)))
                (_%loop51479%_
                 (cons (let ((__tmp84942
                              (substring
                               _%str51517%_
                               '1
                               (string-length _%str51517%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84942))
                       _%rest51511%_)
                 _%type51484%_
                 _%object51485%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51484%_))
                  (let* ((_%g5152251537%_
                          (lambda (_%g5152351533%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5152351533%_)))
                         (_%g5152151654%_
                          (lambda (_%g5152351541%_)
                            (if (gx#stx-pair? _%g5152351541%_)
                                (let ((_%e5152651544%_
                                       (gx#syntax-e _%g5152351541%_)))
                                  (let ((_%hd5152751548%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5152651544%_)))
                                        (_%tl5152851551%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5152651544%_))))
                                    (if (gx#stx-pair? _%tl5152851551%_)
                                        (let ((_%e5152951554%_
                                               (gx#syntax-e _%tl5152851551%_)))
                                          (let ((_%hd5153051558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5152951554%_)))
                                                (_%tl5153151561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5152951554%_))))
                                            (if (gx#stx-null? _%tl5153151561%_)
                                                ((lambda (_%L51564%_
                                                          _%L51566%_)
                                                   (if (null? _%rest51511%_)
                                                       (let ((_%$e51596%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51484%_
                                                               _%part51513%_)))
                                                         (if _%$e51596%_
                                                             ((lambda (_%slot-type51600%_)
                                                                (let* ((_%g5160351611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5160451607%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5160451607%_)))
                               (_%g5160251634%_
                                (lambda (_%g5160451615%_)
                                  ((lambda (_%L51618%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51618%_ '()))
                                                 (cons (cons _%L51564%_
                                                             (cons _%L51566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5160451615%_))))
                          (_%g5160251634%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51346%_
                              _%slot-type51600%_)))))
                      _%$e51596%_)
                     (if _%nil-check?51486%_
                         (cons _%L51564%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51566%_ '()))
                                     '()))
                         (cons _%L51564%_ (cons _%L51566%_ '())))))
               (let ((_%$e51642%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51484%_
                       _%part51513%_)))
                 (if _%$e51642%_
                     ((lambda (_%type51646%_)
                        (let ((_%type51649%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51346%_
                                  _%type51646%_))))
                          (if _%nil-check?51486%_
                              (_%loop51479%_
                               _%rest51511%_
                               _%type51649%_
                               (cons _%L51564%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51566%_ '()))
                                           '()))
                               '#f)
                              (_%loop51479%_
                               _%rest51511%_
                               _%type51649%_
                               (cons _%L51564%_ (cons _%L51566%_ '()))
                               '#f))))
                      _%$e51642%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51346%_
                      _%L51439%_
                      _%part51513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5153051558%_
                                                 _%hd5152751548%_)
                                                (_%g5152251537%_
                                                 _%g5152351541%_))))
                                        (_%g5152251537%_ _%g5152351541%_))))
                                (_%g5152251537%_ _%g5152351541%_)))))
                    (_%g5152151654%_
                     (list (if _%nil-check?51486%_
                               (cons 'check-nil! (cons _%object51485%_ '()))
                               _%object51485%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51346%_
                            _%type51484%_
                            _%part51513%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51484%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51346%_
                       _%type51484%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5148751495%_)
                                              (let ((_%hd5149251666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5148751495%_)))
                                                    (_%tl5149351669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5148751495%_))))
                                                (let* ((_%part51672%_
                                                        _%hd5149251666%_)
                                                       (_%rest51675%_
                                                        _%tl5149351669%_))
                                                  (_%K5149151662%_
                                                   _%rest51675%_
                                                   _%part51672%_)))
                                              (_%else5148951507%_)))))
                                    _%$e51472%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51439%_ '())))))))
                     (if (pair? _%g5145151458%_)
                         (let ((_%hd5145551684%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5145151458%_)))
                               (_%tl5145651687%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5145151458%_))))
                           (let* ((_%var51690%_ _%hd5145551684%_)
                                  (_%parts51693%_ _%tl5145651687%_))
                             (_%K5145451680%_ _%parts51693%_ _%var51690%_)))
                         (_%E5145351464%_)))))
                (_%__kont8030080301%_
                 (lambda (_%L51398%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51398%_ '())))))
            (let ((_%__match8031680317%_
                   (lambda (_%e5135351419%_
                            _%hd5135451423%_
                            _%tl5135551426%_
                            _%e5135651429%_
                            _%hd5135751433%_
                            _%tl5135851436%_)
                     (let ((_%L51439%_ _%hd5135751433%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51439%_)
                           (_%__kont8029880299%_ _%L51439%_)
                           (_%__kont8030080301%_ _%hd5135751433%_))))))
              (if (gx#stx-pair? _%__stx8029580296%_)
                  (let ((_%e5135351419%_ (gx#syntax-e _%__stx8029580296%_)))
                    (let ((_%tl5135551426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5135351419%_)))
                          (_%hd5135451423%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5135351419%_))))
                      (if (gx#stx-pair? _%tl5135551426%_)
                          (let ((_%e5135651429%_
                                 (gx#syntax-e _%tl5135551426%_)))
                            (let ((_%tl5135851436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5135651429%_)))
                                  (_%hd5135751433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5135651429%_))))
                              (if (gx#stx-null? _%tl5135851436%_)
                                  (_%__match8031680317%_
                                   _%e5135351419%_
                                   _%hd5135451423%_
                                   _%tl5135551426%_
                                   _%e5135651429%_
                                   _%hd5135751433%_
                                   _%tl5135851436%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5135051371%_)))))
                          (let () (declare (not safe)) (_%g5135051371%_)))))
                  (let () (declare (not safe)) (_%g5135051371%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51700%_)
        (let* ((_%__stx8033380334%_ _%stx51700%_)
               (_%g5170451733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8033380334%_))))
          (let ((_%__kont8033680337%_
                 (lambda (_%L51825%_ _%L51827%_)
                   (let* ((_%g5184151848%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51700%_
                            _%L51827%_))
                          (_%E5184351854%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5184151848%_
                                    '([var . parts]))
                             (void)))
                          (_%K5184452084%_
                           (lambda (_%parts51858%_ _%var51860%_)
                             (let ((_%$e51862%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51860%_))))
                               (if _%$e51862%_
                                   ((lambda (_%te51866%_)
                                      (let _%loop51869%_ ((_%parts51872%_
                                                           _%parts51858%_)
                                                          (_%type51874%_
                                                           (##direct-structure-ref
                                                            _%te51866%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51875%_
                                                           _%var51860%_)
                                                          (_%checked-mutator?51876%_
                                                           (##direct-structure-ref
                                                            _%te51866%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51877%_
                                                           '#f))
                                        (let* ((_%parts5187851885%_
                                                _%parts51872%_)
                                               (_%E5188051891%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5187851885%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5188152066%_
                                                (lambda (_%rest51895%_
                                                         _%part51897%_)
                                                  (if (and (not _%nil-check?51877%_)
                                                           (let ((__tmp84943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51897%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84943)))
              (let ((_%str51901%_ (symbol->string _%part51897%_)))
                (_%loop51869%_
                 (cons (let ((__tmp84944
                              (substring
                               _%str51901%_
                               '1
                               (string-length _%str51901%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84944))
                       _%rest51895%_)
                 _%type51874%_
                 _%object51875%_
                 _%checked-mutator?51876%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51874%_))
                  (if (null? _%rest51895%_)
                      (let* ((_%g5190851923%_
                              (lambda (_%g5190951919%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5190951919%_)))
                             (_%g5190751980%_
                              (lambda (_%g5190951927%_)
                                (if (gx#stx-pair? _%g5190951927%_)
                                    (let ((_%e5191251930%_
                                           (gx#syntax-e _%g5190951927%_)))
                                      (let ((_%hd5191351934%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5191251930%_)))
                                            (_%tl5191451937%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5191251930%_))))
                                        (if (gx#stx-pair? _%tl5191451937%_)
                                            (let ((_%e5191551940%_
                                                   (gx#syntax-e
                                                    _%tl5191451937%_)))
                                              (let ((_%hd5191651944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5191551940%_)))
                                                    (_%tl5191751947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5191551940%_))))
                                                (if (gx#stx-null?
                                                     _%tl5191751947%_)
                                                    ((lambda (_%L51950%_
                                                              _%L51952%_)
                                                       (if _%nil-check?51877%_
                                                           (cons _%L51950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51952%_ '()))
                               (cons _%L51825%_ '())))
                   (cons _%L51950%_ (cons _%L51952%_ (cons _%L51825%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5191651944%_
                                                     _%hd5191351934%_)
                                                    (_%g5190851923%_
                                                     _%g5190951927%_))))
                                            (_%g5190851923%_
                                             _%g5190951927%_))))
                                    (_%g5190851923%_ _%g5190951927%_)))))
                        (_%g5190751980%_
                         (list _%object51875%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51700%_
                                _%type51874%_
                                _%part51897%_
                                (if _%checked-mutator?51876%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51874%_
                                     _%part51897%_)
                                    '#f)))))
                      (let ((_%$e51984%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51874%_
                              _%part51897%_)))
                        (if _%$e51984%_
                            ((lambda (_%type51988%_)
                               (let* ((_%type51991%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51700%_
                                          _%type51988%_)))
                                      (_%g5199452009%_
                                       (lambda (_%g5199552005%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5199552005%_)))
                                      (_%g5199352056%_
                                       (lambda (_%g5199552013%_)
                                         (if (gx#stx-pair? _%g5199552013%_)
                                             (let ((_%e5199852016%_
                                                    (gx#syntax-e
                                                     _%g5199552013%_)))
                                               (let ((_%hd5199952020%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5199852016%_)))
                                                     (_%tl5200052023%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5199852016%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5200052023%_)
                                                     (let ((_%e5200152026%_
                                                            (gx#syntax-e
                                                             _%tl5200052023%_)))
                                                       (let ((_%hd5200252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5200152026%_)))
                     (_%tl5200352033%_
                      (let () (declare (not safe)) (##cdr _%e5200152026%_))))
                 (if (gx#stx-null? _%tl5200352033%_)
                     ((lambda (_%L52036%_ _%L52038%_)
                        (_%loop51869%_
                         _%rest51895%_
                         _%type51991%_
                         (cons _%L52036%_ (cons _%L52038%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51991%_
                          _%part51897%_)
                         '#f))
                      _%hd5200252030%_
                      _%hd5199952020%_)
                     (_%g5199452009%_ _%g5199552013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5199452009%_
                                                      _%g5199552013%_))))
                                             (_%g5199452009%_
                                              _%g5199552013%_)))))
                                 (_%g5199352056%_
                                  (list (if _%nil-check?51877%_
                                            (cons 'check-nil!
                                                  (cons _%object51875%_ '()))
                                            _%object51875%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51700%_
                                         _%type51991%_
                                         _%part51897%_)))))
                             _%$e51984%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51700%_
                             _%L51827%_
                             _%part51897%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51874%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51700%_
                       _%type51874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5187851885%_)
                                              (let ((_%hd5188252070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5187851885%_)))
                                                    (_%tl5188352073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5187851885%_))))
                                                (let* ((_%part52076%_
                                                        _%hd5188252070%_)
                                                       (_%rest52079%_
                                                        _%tl5188352073%_))
                                                  (_%K5188152066%_
                                                   _%rest52079%_
                                                   _%part52076%_)))
                                              (_%E5188051891%_)))))
                                    _%$e51862%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51700%_)))))))
                     (if (pair? _%g5184151848%_)
                         (let ((_%hd5184552088%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5184151848%_)))
                               (_%tl5184652091%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5184151848%_))))
                           (let* ((_%var52094%_ _%hd5184552088%_)
                                  (_%parts52097%_ _%tl5184652091%_))
                             (_%K5184452084%_ _%parts52097%_ _%var52094%_)))
                         (_%E5184351854%_)))))
                (_%__kont8033880339%_
                 (lambda (_%L51770%_ _%L51772%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51700%_)))))
            (let ((_%__match8036080361%_
                   (lambda (_%e5170851795%_
                            _%hd5170951799%_
                            _%tl5171051802%_
                            _%e5171151805%_
                            _%hd5171251809%_
                            _%tl5171351812%_
                            _%e5171451815%_
                            _%hd5171551819%_
                            _%tl5171651822%_)
                     (let ((_%L51825%_ _%hd5171551819%_)
                           (_%L51827%_ _%hd5171251809%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51827%_)
                           (_%__kont8033680337%_ _%L51825%_ _%L51827%_)
                           (_%__kont8033880339%_
                            _%hd5171551819%_
                            _%hd5171251809%_))))))
              (if (gx#stx-pair? _%__stx8033380334%_)
                  (let ((_%e5170851795%_ (gx#syntax-e _%__stx8033380334%_)))
                    (let ((_%tl5171051802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5170851795%_)))
                          (_%hd5170951799%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5170851795%_))))
                      (if (gx#stx-pair? _%tl5171051802%_)
                          (let ((_%e5171151805%_
                                 (gx#syntax-e _%tl5171051802%_)))
                            (let ((_%tl5171351812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5171151805%_)))
                                  (_%hd5171251809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5171151805%_))))
                              (if (gx#stx-pair? _%tl5171351812%_)
                                  (let ((_%e5171451815%_
                                         (gx#syntax-e _%tl5171351812%_)))
                                    (let ((_%tl5171651822%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5171451815%_)))
                                          (_%hd5171551819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5171451815%_))))
                                      (if (gx#stx-null? _%tl5171651822%_)
                                          (_%__match8036080361%_
                                           _%e5170851795%_
                                           _%hd5170951799%_
                                           _%tl5171051802%_
                                           _%e5171151805%_
                                           _%hd5171251809%_
                                           _%tl5171351812%_
                                           _%e5171451815%_
                                           _%hd5171551819%_
                                           _%tl5171651822%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5170451733%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5170451733%_)))))
                          (let () (declare (not safe)) (_%g5170451733%_)))))
                  (let () (declare (not safe)) (_%g5170451733%_))))))))))

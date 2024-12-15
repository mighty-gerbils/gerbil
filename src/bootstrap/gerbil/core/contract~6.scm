(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g84906_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84907_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84908_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84911_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84912_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84915_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84916_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84917_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84918_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84922_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84923_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84924_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84925_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84929_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46394%_)
        (let* ((_%__stx7922979230%_ _%stx46394%_)
               (_%g4640346612%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7922979230%_))))
          (let ((_%__kont7923279233%_
                 (lambda (_%L47518%_
                          _%L47520%_
                          _%L47521%_
                          _%L47522%_
                          _%L47523%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47523%_ (cons _%L47522%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47523%_
                                                       (cons _%L47521%_
                                                             (cons _%L47520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4756647569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4756747572%_)
                  (cons _%g4756647569%_ _%g4756747572%_))
                '()
                _%L47518%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7923679237%_
                 (lambda (_%L47362%_
                          _%L47364%_
                          _%L47365%_
                          _%L47366%_
                          _%L47367%_
                          _%L47368%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47368%_ (cons _%L47367%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47368%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47365%_ (cons _%L47364%_ '())))
                           (foldr (lambda (_%g4741247415%_ _%g4741347418%_)
                                    (cons _%g4741247415%_ _%g4741347418%_))
                                  '()
                                  _%L47362%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7924079241%_
                 (lambda (_%L47179%_ _%L47181%_ _%L47182%_ _%L47183%_)
                   (let ((_%meta47220%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46394%_
                             _%L47181%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47220%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47183%_
                                           (cons _%L47182%_
                                                 (cons _%L47181%_ '())))
                                     (foldr (lambda (_%g4722447227%_
                                                     _%g4722547230%_)
                                              (cons _%g4722447227%_
                                                    _%g4722547230%_))
                                            '()
                                            _%L47179%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47220%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47183%_
                                               (cons _%L47182%_
                                                     (cons _%L47181%_ '())))
                                         (foldr (lambda (_%g4723447237%_
                                                         _%g4723547240%_)
                                                  (cons _%g4723447237%_
                                                        _%g4723547240%_))
                                                '()
                                                _%L47179%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46394%_
                              _%L47181%_
                              _%meta47220%_))))))
                (_%__kont7924479245%_
                 (lambda (_%L47057%_ _%L47059%_ _%L47060%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47060%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47059%_ '())))
                               (foldr (lambda (_%g4708347086%_ _%g4708447089%_)
                                        (cons _%g4708347086%_ _%g4708447089%_))
                                      '()
                                      _%L47057%_)))))
                (_%__kont7924879249%_
                 (lambda (_%L46915%_
                          _%L46917%_
                          _%L46918%_
                          _%L46919%_
                          _%L46920%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46920%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46919%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46920%_
                                                       (cons _%L46918%_
                                                             (cons _%L46917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4696146964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4696246967%_)
                  (cons _%g4696146964%_ _%g4696246967%_))
                '()
                _%L46915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7925279253%_
                 (lambda (_%L46773%_ _%L46775%_ _%L46776%_ _%L46777%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46777%_ _%L46776%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46775%_
                                                 (foldr (lambda (_%g4679946802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4680046805%_)
                  (cons _%g4679946802%_ _%g4680046805%_))
                '()
                _%L46773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7925679257%_
                 (lambda (_%L46669%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4668746690%_ _%g4668846693%_)
                                        (cons _%g4668746690%_ _%g4668846693%_))
                                      '()
                                      _%L46669%_))))))
            (let* ((_%__match7956279563%_
                    (lambda (_%e4659246619%_
                             _%hd4659346623%_
                             _%tl4659446626%_
                             _%e4659546629%_
                             _%hd4659646633%_
                             _%tl4659746636%_
                             _%__splice7925879259%_
                             _%target4659846639%_
                             _%tl4660046642%_)
                      (letrec ((_%loop4660146645%_
                                (lambda (_%hd4659946649%_ _%body4660546652%_)
                                  (if (gx#stx-pair? _%hd4659946649%_)
                                      (let ((_%e4660246655%_
                                             (gx#syntax-e _%hd4659946649%_)))
                                        (let ((_%lp-tl4660446662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246655%_)))
                                              (_%lp-hd4660346659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246655%_))))
                                          (_%loop4660146645%_
                                           _%lp-tl4660446662%_
                                           (cons _%lp-hd4660346659%_
                                                 _%body4660546652%_))))
                                      (let ((_%body4660646665%_
                                             (reverse _%body4660546652%_)))
                                        (_%__kont7925679257%_
                                         _%body4660646665%_))))))
                        (_%loop4660146645%_ _%target4659846639%_ '()))))
                   (_%__match7954079541%_
                    (lambda (_%e4657046703%_
                             _%hd4657146707%_
                             _%tl4657246710%_
                             _%e4657346713%_
                             _%hd4657446717%_
                             _%tl4657546720%_
                             _%e4657646723%_
                             _%hd4657746727%_
                             _%tl4657846730%_
                             _%e4657946733%_
                             _%hd4658046737%_
                             _%tl4658146740%_
                             _%__splice7925479255%_
                             _%target4658246743%_
                             _%tl4658446746%_)
                      (letrec ((_%loop4658546749%_
                                (lambda (_%hd4658346753%_ _%body4658946756%_)
                                  (if (gx#stx-pair? _%hd4658346753%_)
                                      (let ((_%e4658646759%_
                                             (gx#syntax-e _%hd4658346753%_)))
                                        (let ((_%lp-tl4658846766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658646759%_)))
                                              (_%lp-hd4658746763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658646759%_))))
                                          (_%loop4658546749%_
                                           _%lp-tl4658846766%_
                                           (cons _%lp-hd4658746763%_
                                                 _%body4658946756%_))))
                                      (let ((_%body4659046769%_
                                             (reverse _%body4658946756%_)))
                                        (let ((_%L46773%_ _%body4659046769%_)
                                              (_%L46775%_ _%tl4657846730%_)
                                              (_%L46776%_ _%tl4658146740%_)
                                              (_%L46777%_ _%hd4658046737%_))
                                          (if (gx#identifier? _%L46777%_)
                                              (_%__kont7925279253%_
                                               _%L46773%_
                                               _%L46775%_
                                               _%L46776%_
                                               _%L46777%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_)))))))))
                        (_%loop4658546749%_ _%target4658246743%_ '()))))
                   (_%__match7952679527%_
                    (lambda (_%e4657046703%_
                             _%hd4657146707%_
                             _%tl4657246710%_
                             _%e4657346713%_
                             _%hd4657446717%_
                             _%tl4657546720%_
                             _%e4657646723%_
                             _%hd4657746727%_
                             _%tl4657846730%_)
                      (if (gx#stx-pair? _%hd4657746727%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4657746727%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (if (gx#stx-pair/null? _%tl4657546720%_)
                                  (let ((_%__splice7925479255%_
                                         (gx#syntax-split-splice
                                          _%tl4657546720%_
                                          '0)))
                                    (let ((_%tl4658446746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '1)))
                                          (_%target4658246743%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658446746%_)
                                          (_%__match7954079541%_
                                           _%e4657046703%_
                                           _%hd4657146707%_
                                           _%tl4657246710%_
                                           _%e4657346713%_
                                           _%hd4657446717%_
                                           _%tl4657546720%_
                                           _%e4657646723%_
                                           _%hd4657746727%_
                                           _%tl4657846730%_
                                           _%e4657946733%_
                                           _%hd4658046737%_
                                           _%tl4658146740%_
                                           _%__splice7925479255%_
                                           _%target4658246743%_
                                           _%tl4658446746%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                   (_%__match7950879509%_
                    (lambda (_%e4653646815%_
                             _%hd4653746819%_
                             _%tl4653846822%_
                             _%e4653946825%_
                             _%hd4654046829%_
                             _%tl4654146832%_
                             _%e4654246835%_
                             _%hd4654346839%_
                             _%tl4654446842%_
                             _%e4654546845%_
                             _%hd4654646849%_
                             _%tl4654746852%_
                             _%e4654846855%_
                             _%hd4654946859%_
                             _%tl4655046862%_
                             _%e4655146865%_
                             _%hd4655246869%_
                             _%tl4655346872%_
                             _%e4655446875%_
                             _%hd4655546879%_
                             _%tl4655646882%_
                             _%__splice7925079251%_
                             _%target4655746885%_
                             _%tl4655946888%_)
                      (letrec ((_%loop4656046891%_
                                (lambda (_%hd4655846895%_ _%body4656446898%_)
                                  (if (gx#stx-pair? _%hd4655846895%_)
                                      (let ((_%e4656146901%_
                                             (gx#syntax-e _%hd4655846895%_)))
                                        (let ((_%lp-tl4656346908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4656146901%_)))
                                              (_%lp-hd4656246905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4656146901%_))))
                                          (_%loop4656046891%_
                                           _%lp-tl4656346908%_
                                           (cons _%lp-hd4656246905%_
                                                 _%body4656446898%_))))
                                      (let ((_%body4656546911%_
                                             (reverse _%body4656446898%_)))
                                        (let ((_%L46915%_ _%body4656546911%_)
                                              (_%L46917%_ _%hd4655546879%_)
                                              (_%L46918%_ _%hd4655246869%_)
                                              (_%L46919%_ _%hd4654946859%_)
                                              (_%L46920%_ _%hd4654346839%_))
                                          (if (and (gx#identifier? _%L46920%_)
                                                   (gx#identifier? _%L46917%_)
                                                   (gx#identifier? _%L46918%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46918%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46918%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46918%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46918%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7924879249%_
                                               _%L46915%_
                                               _%L46917%_
                                               _%L46918%_
                                               _%L46919%_
                                               _%L46920%_)
                                              (_%__match7952679527%_
                                               _%e4653646815%_
                                               _%hd4653746819%_
                                               _%tl4653846822%_
                                               _%e4653946825%_
                                               _%hd4654046829%_
                                               _%tl4654146832%_
                                               _%e4654246835%_
                                               _%hd4654346839%_
                                               _%tl4654446842%_))))))))
                        (_%loop4656046891%_ _%target4655746885%_ '()))))
                   (_%__match7945279453%_
                    (lambda (_%e4650746977%_
                             _%hd4650846981%_
                             _%tl4650946984%_
                             _%e4651046987%_
                             _%hd4651146991%_
                             _%tl4651246994%_
                             _%e4651346997%_
                             _%hd4651447001%_
                             _%tl4651547004%_
                             _%e4651647007%_
                             _%hd4651747011%_
                             _%tl4651847014%_
                             _%e4651947017%_
                             _%hd4652047021%_
                             _%tl4652147024%_
                             _%__splice7924679247%_
                             _%target4652247027%_
                             _%tl4652447030%_)
                      (letrec ((_%loop4652547033%_
                                (lambda (_%hd4652347037%_ _%body4652947040%_)
                                  (if (gx#stx-pair? _%hd4652347037%_)
                                      (let ((_%e4652647043%_
                                             (gx#syntax-e _%hd4652347037%_)))
                                        (let ((_%lp-tl4652847050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4652647043%_)))
                                              (_%lp-hd4652747047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4652647043%_))))
                                          (_%loop4652547033%_
                                           _%lp-tl4652847050%_
                                           (cons _%lp-hd4652747047%_
                                                 _%body4652947040%_))))
                                      (let ((_%body4653047053%_
                                             (reverse _%body4652947040%_)))
                                        (let ((_%L47057%_ _%body4653047053%_)
                                              (_%L47059%_ _%hd4652047021%_)
                                              (_%L47060%_ _%hd4651447001%_))
                                          (if (gx#identifier? _%L47060%_)
                                              (_%__kont7924479245%_
                                               _%L47057%_
                                               _%L47059%_
                                               _%L47060%_)
                                              (_%__match7952679527%_
                                               _%e4650746977%_
                                               _%hd4650846981%_
                                               _%tl4650946984%_
                                               _%e4651046987%_
                                               _%hd4651146991%_
                                               _%tl4651246994%_
                                               _%e4651346997%_
                                               _%hd4651447001%_
                                               _%tl4651547004%_))))))))
                        (_%loop4652547033%_ _%target4652247027%_ '()))))
                   (_%__match7943279433%_
                    (lambda (_%e4650746977%_
                             _%hd4650846981%_
                             _%tl4650946984%_
                             _%e4651046987%_
                             _%hd4651146991%_
                             _%tl4651246994%_
                             _%e4651346997%_
                             _%hd4651447001%_
                             _%tl4651547004%_
                             _%e4651647007%_
                             _%hd4651747011%_
                             _%tl4651847014%_)
                      (if (gx#identifier? _%hd4651747011%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84906_|
                               _%hd4651747011%_)
                              (if (gx#stx-pair? _%tl4651847014%_)
                                  (let ((_%e4651947017%_
                                         (gx#syntax-e _%tl4651847014%_)))
                                    (let ((_%tl4652147024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651947017%_)))
                                          (_%hd4652047021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651947017%_))))
                                      (if (gx#stx-null? _%tl4652147024%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4651246994%_)
                                              (let ((_%__splice7924679247%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651246994%_
                                                      '0)))
                                                (let ((_%tl4652447030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7924679247%_
                                                          '1)))
                                                      (_%target4652247027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7924679247%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652447030%_)
                                                      (_%__match7945279453%_
                                                       _%e4650746977%_
                                                       _%hd4650846981%_
                                                       _%tl4650946984%_
                                                       _%e4651046987%_
                                                       _%hd4651146991%_
                                                       _%tl4651246994%_
                                                       _%e4651346997%_
                                                       _%hd4651447001%_
                                                       _%tl4651547004%_
                                                       _%e4651647007%_
                                                       _%hd4651747011%_
                                                       _%tl4651847014%_
                                                       _%e4651947017%_
                                                       _%hd4652047021%_
                                                       _%tl4652147024%_
                                                       _%__splice7924679247%_
                                                       _%target4652247027%_
                                                       _%tl4652447030%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4651447001%_)
                                                          (let ((_%e4657946733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4651447001%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651447001%_)
                                                  (let ((_%e4657946733%_
                                                         (gx#syntax-e
                                                          _%hd4651447001%_)))
                                                    (let ((_%tl4658146740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657946733%_)))
                                                          (_%hd4658046737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657946733%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640346612%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))
                                          (if (gx#stx-pair? _%tl4652147024%_)
                                              (let ((_%e4655146865%_
                                                     (gx#syntax-e
                                                      _%tl4652147024%_)))
                                                (let ((_%tl4655346872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655146865%_)))
                                                      (_%hd4655246869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655146865%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655346872%_)
                                                      (let ((_%e4655446875%_
                                                             (gx#syntax-e
                                                              _%tl4655346872%_)))
                                                        (let ((_%tl4655646882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655446875%_)))
                      (_%hd4655546879%_
                       (let () (declare (not safe)) (##car _%e4655446875%_))))
                  (if (gx#stx-null? _%tl4655646882%_)
                      (if (gx#stx-pair/null? _%tl4651246994%_)
                          (let ((_%__splice7925079251%_
                                 (gx#syntax-split-splice _%tl4651246994%_ '0)))
                            (let ((_%tl4655946888%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925079251%_ '1)))
                                  (_%target4655746885%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925079251%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655946888%_)
                                  (_%__match7950879509%_
                                   _%e4650746977%_
                                   _%hd4650846981%_
                                   _%tl4650946984%_
                                   _%e4651046987%_
                                   _%hd4651146991%_
                                   _%tl4651246994%_
                                   _%e4651346997%_
                                   _%hd4651447001%_
                                   _%tl4651547004%_
                                   _%e4651647007%_
                                   _%hd4651747011%_
                                   _%tl4651847014%_
                                   _%e4651947017%_
                                   _%hd4652047021%_
                                   _%tl4652147024%_
                                   _%e4655146865%_
                                   _%hd4655246869%_
                                   _%tl4655346872%_
                                   _%e4655446875%_
                                   _%hd4655546879%_
                                   _%tl4655646882%_
                                   _%__splice7925079251%_
                                   _%target4655746885%_
                                   _%tl4655946888%_)
                                  (if (gx#stx-pair? _%hd4651447001%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4651447001%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))
                          (if (gx#stx-pair? _%hd4651447001%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4651447001%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                      (if (gx#stx-pair? _%hd4651447001%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4651447001%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (if (gx#stx-pair/null? _%tl4651246994%_)
                                  (let ((_%__splice7925479255%_
                                         (gx#syntax-split-splice
                                          _%tl4651246994%_
                                          '0)))
                                    (let ((_%tl4658446746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '1)))
                                          (_%target4658246743%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658446746%_)
                                          (_%__match7954079541%_
                                           _%e4650746977%_
                                           _%hd4650846981%_
                                           _%tl4650946984%_
                                           _%e4651046987%_
                                           _%hd4651146991%_
                                           _%tl4651246994%_
                                           _%e4651346997%_
                                           _%hd4651447001%_
                                           _%tl4651547004%_
                                           _%e4657946733%_
                                           _%hd4658046737%_
                                           _%tl4658146740%_
                                           _%__splice7925479255%_
                                           _%target4658246743%_
                                           _%tl4658446746%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_))))))
              (if (gx#stx-pair? _%hd4651447001%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4651447001%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4651246994%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4651246994%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4650746977%_
                                   _%hd4650846981%_
                                   _%tl4650946984%_
                                   _%e4651046987%_
                                   _%hd4651146991%_
                                   _%tl4651246994%_
                                   _%e4651346997%_
                                   _%hd4651447001%_
                                   _%tl4651547004%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651447001%_)
                                                  (let ((_%e4657946733%_
                                                         (gx#syntax-e
                                                          _%hd4651447001%_)))
                                                    (let ((_%tl4658146740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657946733%_)))
                                                          (_%hd4658046737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657946733%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4651246994%_)
                                                          (let ((_%__splice7925479255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4651246994%_ '0)))
                    (let ((_%tl4658446746%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '1)))
                          (_%target4658246743%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '0))))
                      (if (gx#stx-null? _%tl4658446746%_)
                          (_%__match7954079541%_
                           _%e4650746977%_
                           _%hd4650846981%_
                           _%tl4650946984%_
                           _%e4651046987%_
                           _%hd4651146991%_
                           _%tl4651246994%_
                           _%e4651346997%_
                           _%hd4651447001%_
                           _%tl4651547004%_
                           _%e4657946733%_
                           _%hd4658046737%_
                           _%tl4658146740%_
                           _%__splice7925479255%_
                           _%target4658246743%_
                           _%tl4658446746%_)
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))))
                                  (if (gx#stx-pair? _%hd4651447001%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4651447001%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4651246994%_)
                                              (let ((_%__splice7925479255%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651246994%_
                                                      '0)))
                                                (let ((_%tl4658446746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '1)))
                                                      (_%target4658246743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658446746%_)
                                                      (_%__match7954079541%_
                                                       _%e4650746977%_
                                                       _%hd4650846981%_
                                                       _%tl4650946984%_
                                                       _%e4651046987%_
                                                       _%hd4651146991%_
                                                       _%tl4651246994%_
                                                       _%e4651346997%_
                                                       _%hd4651447001%_
                                                       _%tl4651547004%_
                                                       _%e4657946733%_
                                                       _%hd4658046737%_
                                                       _%tl4658146740%_
                                                       _%__splice7925479255%_
                                                       _%target4658246743%_
                                                       _%tl4658446746%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640346612%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                              (if (gx#stx-pair? _%hd4651447001%_)
                                  (let ((_%e4657946733%_
                                         (gx#syntax-e _%hd4651447001%_)))
                                    (let ((_%tl4658146740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657946733%_)))
                                          (_%hd4658046737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657946733%_))))
                                      (if (gx#stx-pair/null? _%tl4651246994%_)
                                          (let ((_%__splice7925479255%_
                                                 (gx#syntax-split-splice
                                                  _%tl4651246994%_
                                                  '0)))
                                            (let ((_%tl4658446746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925479255%_
                                                      '1)))
                                                  (_%target4658246743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925479255%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4658446746%_)
                                                  (_%__match7954079541%_
                                                   _%e4650746977%_
                                                   _%hd4650846981%_
                                                   _%tl4650946984%_
                                                   _%e4651046987%_
                                                   _%hd4651146991%_
                                                   _%tl4651246994%_
                                                   _%e4651346997%_
                                                   _%hd4651447001%_
                                                   _%tl4651547004%_
                                                   _%e4657946733%_
                                                   _%hd4658046737%_
                                                   _%tl4658146740%_
                                                   _%__splice7925479255%_
                                                   _%target4658246743%_
                                                   _%tl4658446746%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                          (if (gx#stx-pair? _%hd4651447001%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4651447001%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (if (gx#stx-pair/null? _%tl4651246994%_)
                                      (let ((_%__splice7925479255%_
                                             (gx#syntax-split-splice
                                              _%tl4651246994%_
                                              '0)))
                                        (let ((_%tl4658446746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7925479255%_
                                                  '1)))
                                              (_%target4658246743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7925479255%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4658446746%_)
                                              (_%__match7954079541%_
                                               _%e4650746977%_
                                               _%hd4650846981%_
                                               _%tl4650946984%_
                                               _%e4651046987%_
                                               _%hd4651146991%_
                                               _%tl4651246994%_
                                               _%e4651346997%_
                                               _%hd4651447001%_
                                               _%tl4651547004%_
                                               _%e4657946733%_
                                               _%hd4658046737%_
                                               _%tl4658146740%_
                                               _%__splice7925479255%_
                                               _%target4658246743%_
                                               _%tl4658446746%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_))))))
                   (_%__match7940879409%_
                    (lambda (_%e4648047099%_
                             _%hd4648147103%_
                             _%tl4648247106%_
                             _%e4648347109%_
                             _%hd4648447113%_
                             _%tl4648547116%_
                             _%e4648647119%_
                             _%hd4648747123%_
                             _%tl4648847126%_
                             _%e4648947129%_
                             _%hd4649047133%_
                             _%tl4649147136%_
                             _%e4649247139%_
                             _%hd4649347143%_
                             _%tl4649447146%_
                             _%__splice7924279243%_
                             _%target4649547149%_
                             _%tl4649747152%_)
                      (letrec ((_%loop4649847155%_
                                (lambda (_%hd4649647159%_ _%body4650247162%_)
                                  (if (gx#stx-pair? _%hd4649647159%_)
                                      (let ((_%e4649947165%_
                                             (gx#syntax-e _%hd4649647159%_)))
                                        (let ((_%lp-tl4650147172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649947165%_)))
                                              (_%lp-hd4650047169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649947165%_))))
                                          (_%loop4649847155%_
                                           _%lp-tl4650147172%_
                                           (cons _%lp-hd4650047169%_
                                                 _%body4650247162%_))))
                                      (let ((_%body4650347175%_
                                             (reverse _%body4650247162%_)))
                                        (let ((_%L47179%_ _%body4650347175%_)
                                              (_%L47181%_ _%hd4649347143%_)
                                              (_%L47182%_ _%hd4649047133%_)
                                              (_%L47183%_ _%hd4648747123%_))
                                          (if (and (gx#identifier? _%L47183%_)
                                                   (gx#identifier? _%L47181%_)
                                                   (gx#identifier? _%L47182%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47182%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47182%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47182%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47182%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7924079241%_
                                               _%L47179%_
                                               _%L47181%_
                                               _%L47182%_
                                               _%L47183%_)
                                              (_%__match7943279433%_
                                               _%e4648047099%_
                                               _%hd4648147103%_
                                               _%tl4648247106%_
                                               _%e4648347109%_
                                               _%hd4648447113%_
                                               _%tl4648547116%_
                                               _%e4648647119%_
                                               _%hd4648747123%_
                                               _%tl4648847126%_
                                               _%e4648947129%_
                                               _%hd4649047133%_
                                               _%tl4649147136%_))))))))
                        (_%loop4649847155%_ _%target4649547149%_ '()))))
                   (_%__match7936879369%_
                    (lambda (_%e4644347252%_
                             _%hd4644447256%_
                             _%tl4644547259%_
                             _%e4644647262%_
                             _%hd4644747266%_
                             _%tl4644847269%_
                             _%e4644947272%_
                             _%hd4645047276%_
                             _%tl4645147279%_
                             _%e4645247282%_
                             _%hd4645347286%_
                             _%tl4645447289%_
                             _%e4645547292%_
                             _%hd4645647296%_
                             _%tl4645747299%_
                             _%e4645847302%_
                             _%hd4645947306%_
                             _%tl4646047309%_
                             _%e4646147312%_
                             _%hd4646247316%_
                             _%tl4646347319%_
                             _%e4646447322%_
                             _%hd4646547326%_
                             _%tl4646647329%_
                             _%__splice7923879239%_
                             _%target4646747332%_
                             _%tl4646947335%_)
                      (letrec ((_%loop4647047338%_
                                (lambda (_%hd4646847342%_ _%body4647447345%_)
                                  (if (gx#stx-pair? _%hd4646847342%_)
                                      (let ((_%e4647147348%_
                                             (gx#syntax-e _%hd4646847342%_)))
                                        (let ((_%lp-tl4647347355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4647147348%_)))
                                              (_%lp-hd4647247352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4647147348%_))))
                                          (_%loop4647047338%_
                                           _%lp-tl4647347355%_
                                           (cons _%lp-hd4647247352%_
                                                 _%body4647447345%_))))
                                      (let ((_%body4647547358%_
                                             (reverse _%body4647447345%_)))
                                        (let ((_%L47362%_ _%body4647547358%_)
                                              (_%L47364%_ _%hd4646547326%_)
                                              (_%L47365%_ _%hd4646247316%_)
                                              (_%L47366%_ _%hd4645947306%_)
                                              (_%L47367%_ _%hd4645347286%_)
                                              (_%L47368%_ _%hd4645047276%_))
                                          (if (and (gx#identifier? _%L47368%_)
                                                   (gx#identifier? _%L47364%_)
                                                   (gx#identifier? _%L47365%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47365%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47365%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47365%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47365%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7923679237%_
                                               _%L47362%_
                                               _%L47364%_
                                               _%L47365%_
                                               _%L47366%_
                                               _%L47367%_
                                               _%L47368%_)
                                              (_%__match7943279433%_
                                               _%e4644347252%_
                                               _%hd4644447256%_
                                               _%tl4644547259%_
                                               _%e4644647262%_
                                               _%hd4644747266%_
                                               _%tl4644847269%_
                                               _%e4644947272%_
                                               _%hd4645047276%_
                                               _%tl4645147279%_
                                               _%e4645247282%_
                                               _%hd4645347286%_
                                               _%tl4645447289%_))))))))
                        (_%loop4647047338%_ _%target4646747332%_ '()))))
                   (_%__match7933679337%_
                    (lambda (_%e4644347252%_
                             _%hd4644447256%_
                             _%tl4644547259%_
                             _%e4644647262%_
                             _%hd4644747266%_
                             _%tl4644847269%_
                             _%e4644947272%_
                             _%hd4645047276%_
                             _%tl4645147279%_
                             _%e4645247282%_
                             _%hd4645347286%_
                             _%tl4645447289%_
                             _%e4645547292%_
                             _%hd4645647296%_
                             _%tl4645747299%_)
                      (if (gx#identifier? _%hd4645647296%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84907_|
                               _%hd4645647296%_)
                              (if (gx#stx-pair? _%tl4645747299%_)
                                  (let ((_%e4645847302%_
                                         (gx#syntax-e _%tl4645747299%_)))
                                    (let ((_%tl4646047309%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4645847302%_)))
                                          (_%hd4645947306%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4645847302%_))))
                                      (if (gx#stx-pair? _%tl4646047309%_)
                                          (let ((_%e4646147312%_
                                                 (gx#syntax-e
                                                  _%tl4646047309%_)))
                                            (let ((_%tl4646347319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4646147312%_)))
                                                  (_%hd4646247316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4646147312%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4646347319%_)
                                                  (let ((_%e4646447322%_
                                                         (gx#syntax-e
                                                          _%tl4646347319%_)))
                                                    (let ((_%tl4646647329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4646447322%_)))
                                                          (_%hd4646547326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4646447322%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4646647329%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4644847269%_)
                                                              (let ((_%__splice7923879239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4644847269%_ '0)))
                        (let ((_%tl4646947335%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7923879239%_ '1)))
                              (_%target4646747332%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7923879239%_ '0))))
                          (if (gx#stx-null? _%tl4646947335%_)
                              (_%__match7936879369%_
                               _%e4644347252%_
                               _%hd4644447256%_
                               _%tl4644547259%_
                               _%e4644647262%_
                               _%hd4644747266%_
                               _%tl4644847269%_
                               _%e4644947272%_
                               _%hd4645047276%_
                               _%tl4645147279%_
                               _%e4645247282%_
                               _%hd4645347286%_
                               _%tl4645447289%_
                               _%e4645547292%_
                               _%hd4645647296%_
                               _%tl4645747299%_
                               _%e4645847302%_
                               _%hd4645947306%_
                               _%tl4646047309%_
                               _%e4646147312%_
                               _%hd4646247316%_
                               _%tl4646347319%_
                               _%e4646447322%_
                               _%hd4646547326%_
                               _%tl4646647329%_
                               _%__splice7923879239%_
                               _%target4646747332%_
                               _%tl4646947335%_)
                              (if (gx#stx-pair? _%hd4645047276%_)
                                  (let ((_%e4657946733%_
                                         (gx#syntax-e _%hd4645047276%_)))
                                    (let ((_%tl4658146740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657946733%_)))
                                          (_%hd4658046737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657946733%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))))
                      (if (gx#stx-pair? _%hd4645047276%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4645047276%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                  (if (gx#stx-pair? _%hd4645047276%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4645047276%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (if (gx#stx-pair/null? _%tl4644847269%_)
                              (let ((_%__splice7925479255%_
                                     (gx#syntax-split-splice
                                      _%tl4644847269%_
                                      '0)))
                                (let ((_%tl4658446746%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '1)))
                                      (_%target4658246743%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658446746%_)
                                      (_%__match7954079541%_
                                       _%e4644347252%_
                                       _%hd4644447256%_
                                       _%tl4644547259%_
                                       _%e4644647262%_
                                       _%hd4644747266%_
                                       _%tl4644847269%_
                                       _%e4644947272%_
                                       _%hd4645047276%_
                                       _%tl4645147279%_
                                       _%e4657946733%_
                                       _%hd4658046737%_
                                       _%tl4658146740%_
                                       _%__splice7925479255%_
                                       _%target4658246743%_
                                       _%tl4658446746%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4645347286%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84906_|
                                                           _%hd4645347286%_)
                                                          (if (gx#stx-null?
                                                               _%tl4646347319%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4644847269%_)
                          (let ((_%__splice7925079251%_
                                 (gx#syntax-split-splice _%tl4644847269%_ '0)))
                            (let ((_%tl4655946888%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925079251%_ '1)))
                                  (_%target4655746885%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925079251%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655946888%_)
                                  (_%__match7950879509%_
                                   _%e4644347252%_
                                   _%hd4644447256%_
                                   _%tl4644547259%_
                                   _%e4644647262%_
                                   _%hd4644747266%_
                                   _%tl4644847269%_
                                   _%e4644947272%_
                                   _%hd4645047276%_
                                   _%tl4645147279%_
                                   _%e4645247282%_
                                   _%hd4645347286%_
                                   _%tl4645447289%_
                                   _%e4645547292%_
                                   _%hd4645647296%_
                                   _%tl4645747299%_
                                   _%e4645847302%_
                                   _%hd4645947306%_
                                   _%tl4646047309%_
                                   _%e4646147312%_
                                   _%hd4646247316%_
                                   _%tl4646347319%_
                                   _%__splice7925079251%_
                                   _%target4655746885%_
                                   _%tl4655946888%_)
                                  (if (gx#stx-pair? _%hd4645047276%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4645047276%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))
                          (if (gx#stx-pair? _%hd4645047276%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4645047276%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                      (if (gx#stx-pair? _%hd4645047276%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4645047276%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (if (gx#stx-pair/null? _%tl4644847269%_)
                                  (let ((_%__splice7925479255%_
                                         (gx#syntax-split-splice
                                          _%tl4644847269%_
                                          '0)))
                                    (let ((_%tl4658446746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '1)))
                                          (_%target4658246743%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658446746%_)
                                          (_%__match7954079541%_
                                           _%e4644347252%_
                                           _%hd4644447256%_
                                           _%tl4644547259%_
                                           _%e4644647262%_
                                           _%hd4644747266%_
                                           _%tl4644847269%_
                                           _%e4644947272%_
                                           _%hd4645047276%_
                                           _%tl4645147279%_
                                           _%e4657946733%_
                                           _%hd4658046737%_
                                           _%tl4658146740%_
                                           _%__splice7925479255%_
                                           _%target4658246743%_
                                           _%tl4658446746%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                  (if (gx#stx-pair? _%hd4645047276%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4645047276%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (if (gx#stx-pair/null? _%tl4644847269%_)
                              (let ((_%__splice7925479255%_
                                     (gx#syntax-split-splice
                                      _%tl4644847269%_
                                      '0)))
                                (let ((_%tl4658446746%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '1)))
                                      (_%target4658246743%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658446746%_)
                                      (_%__match7954079541%_
                                       _%e4644347252%_
                                       _%hd4644447256%_
                                       _%tl4644547259%_
                                       _%e4644647262%_
                                       _%hd4644747266%_
                                       _%tl4644847269%_
                                       _%e4644947272%_
                                       _%hd4645047276%_
                                       _%tl4645147279%_
                                       _%e4657946733%_
                                       _%hd4658046737%_
                                       _%tl4658146740%_
                                       _%__splice7925479255%_
                                       _%target4658246743%_
                                       _%tl4658446746%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
              (if (gx#stx-pair? _%hd4645047276%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4645047276%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4644847269%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4644847269%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4644347252%_
                                   _%hd4644447256%_
                                   _%tl4644547259%_
                                   _%e4644647262%_
                                   _%hd4644747266%_
                                   _%tl4644847269%_
                                   _%e4644947272%_
                                   _%hd4645047276%_
                                   _%tl4645147279%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645047276%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4645047276%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644847269%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644847269%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4644347252%_
                       _%hd4644447256%_
                       _%tl4644547259%_
                       _%e4644647262%_
                       _%hd4644747266%_
                       _%tl4644847269%_
                       _%e4644947272%_
                       _%hd4645047276%_
                       _%tl4645147279%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))))
                                  (if (gx#stx-null? _%tl4645747299%_)
                                      (if (gx#stx-pair/null? _%tl4644847269%_)
                                          (let ((_%__splice7924279243%_
                                                 (gx#syntax-split-splice
                                                  _%tl4644847269%_
                                                  '0)))
                                            (let ((_%tl4649747152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7924279243%_
                                                      '1)))
                                                  (_%target4649547149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7924279243%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4649747152%_)
                                                  (_%__match7940879409%_
                                                   _%e4644347252%_
                                                   _%hd4644447256%_
                                                   _%tl4644547259%_
                                                   _%e4644647262%_
                                                   _%hd4644747266%_
                                                   _%tl4644847269%_
                                                   _%e4644947272%_
                                                   _%hd4645047276%_
                                                   _%tl4645147279%_
                                                   _%e4645247282%_
                                                   _%hd4645347286%_
                                                   _%tl4645447289%_
                                                   _%e4645547292%_
                                                   _%hd4645647296%_
                                                   _%tl4645747299%_
                                                   _%__splice7924279243%_
                                                   _%target4649547149%_
                                                   _%tl4649747152%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4645047276%_)
                                                      (let ((_%e4657946733%_
                                                             (gx#syntax-e
                                                              _%hd4645047276%_)))
                                                        (let ((_%tl4658146740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657946733%_)))
                      (_%hd4658046737%_
                       (let () (declare (not safe)) (##car _%e4657946733%_))))
                  (let () (declare (not safe)) (_%g4640346612%_))))
              (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645047276%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4645047276%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                      (if (gx#stx-pair? _%hd4645047276%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4645047276%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644847269%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644847269%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4644347252%_
                                                           _%hd4644447256%_
                                                           _%tl4644547259%_
                                                           _%e4644647262%_
                                                           _%hd4644747266%_
                                                           _%tl4644847269%_
                                                           _%e4644947272%_
                                                           _%hd4645047276%_
                                                           _%tl4645147279%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                              (if (gx#stx-null? _%tl4645747299%_)
                                  (if (gx#stx-pair/null? _%tl4644847269%_)
                                      (let ((_%__splice7924279243%_
                                             (gx#syntax-split-splice
                                              _%tl4644847269%_
                                              '0)))
                                        (let ((_%tl4649747152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7924279243%_
                                                  '1)))
                                              (_%target4649547149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7924279243%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4649747152%_)
                                              (_%__match7940879409%_
                                               _%e4644347252%_
                                               _%hd4644447256%_
                                               _%tl4644547259%_
                                               _%e4644647262%_
                                               _%hd4644747266%_
                                               _%tl4644847269%_
                                               _%e4644947272%_
                                               _%hd4645047276%_
                                               _%tl4645147279%_
                                               _%e4645247282%_
                                               _%hd4645347286%_
                                               _%tl4645447289%_
                                               _%e4645547292%_
                                               _%hd4645647296%_
                                               _%tl4645747299%_
                                               _%__splice7924279243%_
                                               _%target4649547149%_
                                               _%tl4649747152%_)
                                              (if (gx#stx-pair?
                                                   _%hd4645047276%_)
                                                  (let ((_%e4657946733%_
                                                         (gx#syntax-e
                                                          _%hd4645047276%_)))
                                                    (let ((_%tl4658146740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657946733%_)))
                                                          (_%hd4658046737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657946733%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640346612%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))))
                                      (if (gx#stx-pair? _%hd4645047276%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4645047276%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                  (if (gx#identifier? _%hd4645347286%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84906_|
                                           _%hd4645347286%_)
                                          (if (gx#stx-pair? _%tl4645747299%_)
                                              (let ((_%e4655146865%_
                                                     (gx#syntax-e
                                                      _%tl4645747299%_)))
                                                (let ((_%tl4655346872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655146865%_)))
                                                      (_%hd4655246869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655146865%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655346872%_)
                                                      (let ((_%e4655446875%_
                                                             (gx#syntax-e
                                                              _%tl4655346872%_)))
                                                        (let ((_%tl4655646882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655446875%_)))
                      (_%hd4655546879%_
                       (let () (declare (not safe)) (##car _%e4655446875%_))))
                  (if (gx#stx-null? _%tl4655646882%_)
                      (if (gx#stx-pair/null? _%tl4644847269%_)
                          (let ((_%__splice7925079251%_
                                 (gx#syntax-split-splice _%tl4644847269%_ '0)))
                            (let ((_%tl4655946888%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925079251%_ '1)))
                                  (_%target4655746885%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925079251%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655946888%_)
                                  (_%__match7950879509%_
                                   _%e4644347252%_
                                   _%hd4644447256%_
                                   _%tl4644547259%_
                                   _%e4644647262%_
                                   _%hd4644747266%_
                                   _%tl4644847269%_
                                   _%e4644947272%_
                                   _%hd4645047276%_
                                   _%tl4645147279%_
                                   _%e4645247282%_
                                   _%hd4645347286%_
                                   _%tl4645447289%_
                                   _%e4645547292%_
                                   _%hd4645647296%_
                                   _%tl4645747299%_
                                   _%e4655146865%_
                                   _%hd4655246869%_
                                   _%tl4655346872%_
                                   _%e4655446875%_
                                   _%hd4655546879%_
                                   _%tl4655646882%_
                                   _%__splice7925079251%_
                                   _%target4655746885%_
                                   _%tl4655946888%_)
                                  (if (gx#stx-pair? _%hd4645047276%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4645047276%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))
                          (if (gx#stx-pair? _%hd4645047276%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4645047276%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                      (if (gx#stx-pair? _%hd4645047276%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4645047276%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (if (gx#stx-pair/null? _%tl4644847269%_)
                                  (let ((_%__splice7925479255%_
                                         (gx#syntax-split-splice
                                          _%tl4644847269%_
                                          '0)))
                                    (let ((_%tl4658446746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '1)))
                                          (_%target4658246743%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658446746%_)
                                          (_%__match7954079541%_
                                           _%e4644347252%_
                                           _%hd4644447256%_
                                           _%tl4644547259%_
                                           _%e4644647262%_
                                           _%hd4644747266%_
                                           _%tl4644847269%_
                                           _%e4644947272%_
                                           _%hd4645047276%_
                                           _%tl4645147279%_
                                           _%e4657946733%_
                                           _%hd4658046737%_
                                           _%tl4658146740%_
                                           _%__splice7925479255%_
                                           _%target4658246743%_
                                           _%tl4658446746%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_))))))
              (if (gx#stx-pair? _%hd4645047276%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4645047276%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4644847269%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4644847269%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4644347252%_
                                   _%hd4644447256%_
                                   _%tl4644547259%_
                                   _%e4644647262%_
                                   _%hd4644747266%_
                                   _%tl4644847269%_
                                   _%e4644947272%_
                                   _%hd4645047276%_
                                   _%tl4645147279%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4645047276%_)
                                                  (let ((_%e4657946733%_
                                                         (gx#syntax-e
                                                          _%hd4645047276%_)))
                                                    (let ((_%tl4658146740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657946733%_)))
                                                          (_%hd4658046737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657946733%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644847269%_)
                                                          (let ((_%__splice7925479255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644847269%_ '0)))
                    (let ((_%tl4658446746%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '1)))
                          (_%target4658246743%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '0))))
                      (if (gx#stx-null? _%tl4658446746%_)
                          (_%__match7954079541%_
                           _%e4644347252%_
                           _%hd4644447256%_
                           _%tl4644547259%_
                           _%e4644647262%_
                           _%hd4644747266%_
                           _%tl4644847269%_
                           _%e4644947272%_
                           _%hd4645047276%_
                           _%tl4645147279%_
                           _%e4657946733%_
                           _%hd4658046737%_
                           _%tl4658146740%_
                           _%__splice7925479255%_
                           _%target4658246743%_
                           _%tl4658446746%_)
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))
                                          (if (gx#stx-pair? _%hd4645047276%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4645047276%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644847269%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644847269%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4644347252%_
                       _%hd4644447256%_
                       _%tl4644547259%_
                       _%e4644647262%_
                       _%hd4644747266%_
                       _%tl4644847269%_
                       _%e4644947272%_
                       _%hd4645047276%_
                       _%tl4645147279%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                      (if (gx#stx-pair? _%hd4645047276%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4645047276%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644847269%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644847269%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4644347252%_
                                                           _%hd4644447256%_
                                                           _%tl4644547259%_
                                                           _%e4644647262%_
                                                           _%hd4644747266%_
                                                           _%tl4644847269%_
                                                           _%e4644947272%_
                                                           _%hd4645047276%_
                                                           _%tl4645147279%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))))
                          (if (gx#stx-null? _%tl4645747299%_)
                              (if (gx#stx-pair/null? _%tl4644847269%_)
                                  (let ((_%__splice7924279243%_
                                         (gx#syntax-split-splice
                                          _%tl4644847269%_
                                          '0)))
                                    (let ((_%tl4649747152%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7924279243%_
                                              '1)))
                                          (_%target4649547149%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7924279243%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4649747152%_)
                                          (_%__match7940879409%_
                                           _%e4644347252%_
                                           _%hd4644447256%_
                                           _%tl4644547259%_
                                           _%e4644647262%_
                                           _%hd4644747266%_
                                           _%tl4644847269%_
                                           _%e4644947272%_
                                           _%hd4645047276%_
                                           _%tl4645147279%_
                                           _%e4645247282%_
                                           _%hd4645347286%_
                                           _%tl4645447289%_
                                           _%e4645547292%_
                                           _%hd4645647296%_
                                           _%tl4645747299%_
                                           _%__splice7924279243%_
                                           _%target4649547149%_
                                           _%tl4649747152%_)
                                          (if (gx#stx-pair? _%hd4645047276%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4645047276%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))))
                                  (if (gx#stx-pair? _%hd4645047276%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4645047276%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                              (if (gx#identifier? _%hd4645347286%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84906_|
                                       _%hd4645347286%_)
                                      (if (gx#stx-pair? _%tl4645747299%_)
                                          (let ((_%e4655146865%_
                                                 (gx#syntax-e
                                                  _%tl4645747299%_)))
                                            (let ((_%tl4655346872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655146865%_)))
                                                  (_%hd4655246869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655146865%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4655346872%_)
                                                  (let ((_%e4655446875%_
                                                         (gx#syntax-e
                                                          _%tl4655346872%_)))
                                                    (let ((_%tl4655646882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655446875%_)))
                                                          (_%hd4655546879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655446875%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4655646882%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4644847269%_)
                                                              (let ((_%__splice7925079251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4644847269%_ '0)))
                        (let ((_%tl4655946888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925079251%_ '1)))
                              (_%target4655746885%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925079251%_ '0))))
                          (if (gx#stx-null? _%tl4655946888%_)
                              (_%__match7950879509%_
                               _%e4644347252%_
                               _%hd4644447256%_
                               _%tl4644547259%_
                               _%e4644647262%_
                               _%hd4644747266%_
                               _%tl4644847269%_
                               _%e4644947272%_
                               _%hd4645047276%_
                               _%tl4645147279%_
                               _%e4645247282%_
                               _%hd4645347286%_
                               _%tl4645447289%_
                               _%e4645547292%_
                               _%hd4645647296%_
                               _%tl4645747299%_
                               _%e4655146865%_
                               _%hd4655246869%_
                               _%tl4655346872%_
                               _%e4655446875%_
                               _%hd4655546879%_
                               _%tl4655646882%_
                               _%__splice7925079251%_
                               _%target4655746885%_
                               _%tl4655946888%_)
                              (if (gx#stx-pair? _%hd4645047276%_)
                                  (let ((_%e4657946733%_
                                         (gx#syntax-e _%hd4645047276%_)))
                                    (let ((_%tl4658146740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657946733%_)))
                                          (_%hd4658046737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657946733%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))))
                      (if (gx#stx-pair? _%hd4645047276%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4645047276%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                  (if (gx#stx-pair? _%hd4645047276%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4645047276%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (if (gx#stx-pair/null? _%tl4644847269%_)
                              (let ((_%__splice7925479255%_
                                     (gx#syntax-split-splice
                                      _%tl4644847269%_
                                      '0)))
                                (let ((_%tl4658446746%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '1)))
                                      (_%target4658246743%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658446746%_)
                                      (_%__match7954079541%_
                                       _%e4644347252%_
                                       _%hd4644447256%_
                                       _%tl4644547259%_
                                       _%e4644647262%_
                                       _%hd4644747266%_
                                       _%tl4644847269%_
                                       _%e4644947272%_
                                       _%hd4645047276%_
                                       _%tl4645147279%_
                                       _%e4657946733%_
                                       _%hd4658046737%_
                                       _%tl4658146740%_
                                       _%__splice7925479255%_
                                       _%target4658246743%_
                                       _%tl4658446746%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4645047276%_)
                                                      (let ((_%e4657946733%_
                                                             (gx#syntax-e
                                                              _%hd4645047276%_)))
                                                        (let ((_%tl4658146740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657946733%_)))
                      (_%hd4658046737%_
                       (let () (declare (not safe)) (##car _%e4657946733%_))))
                  (if (gx#stx-pair/null? _%tl4644847269%_)
                      (let ((_%__splice7925479255%_
                             (gx#syntax-split-splice _%tl4644847269%_ '0)))
                        (let ((_%tl4658446746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '1)))
                              (_%target4658246743%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '0))))
                          (if (gx#stx-null? _%tl4658446746%_)
                              (_%__match7954079541%_
                               _%e4644347252%_
                               _%hd4644447256%_
                               _%tl4644547259%_
                               _%e4644647262%_
                               _%hd4644747266%_
                               _%tl4644847269%_
                               _%e4644947272%_
                               _%hd4645047276%_
                               _%tl4645147279%_
                               _%e4657946733%_
                               _%hd4658046737%_
                               _%tl4658146740%_
                               _%__splice7925479255%_
                               _%target4658246743%_
                               _%tl4658446746%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645047276%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4645047276%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644847269%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644847269%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4644347252%_
                       _%hd4644447256%_
                       _%tl4644547259%_
                       _%e4644647262%_
                       _%hd4644747266%_
                       _%tl4644847269%_
                       _%e4644947272%_
                       _%hd4645047276%_
                       _%tl4645147279%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                      (if (gx#stx-pair? _%hd4645047276%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4645047276%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644847269%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644847269%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4644347252%_
                                                           _%hd4644447256%_
                                                           _%tl4644547259%_
                                                           _%e4644647262%_
                                                           _%hd4644747266%_
                                                           _%tl4644847269%_
                                                           _%e4644947272%_
                                                           _%hd4645047276%_
                                                           _%tl4645147279%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                  (if (gx#stx-pair? _%hd4645047276%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4645047276%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4644847269%_)
                                              (let ((_%__splice7925479255%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644847269%_
                                                      '0)))
                                                (let ((_%tl4658446746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '1)))
                                                      (_%target4658246743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658446746%_)
                                                      (_%__match7954079541%_
                                                       _%e4644347252%_
                                                       _%hd4644447256%_
                                                       _%tl4644547259%_
                                                       _%e4644647262%_
                                                       _%hd4644747266%_
                                                       _%tl4644847269%_
                                                       _%e4644947272%_
                                                       _%hd4645047276%_
                                                       _%tl4645147279%_
                                                       _%e4657946733%_
                                                       _%hd4658046737%_
                                                       _%tl4658146740%_
                                                       _%__splice7925479255%_
                                                       _%target4658246743%_
                                                       _%tl4658446746%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640346612%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))))
                   (_%__match7930679307%_
                    (lambda (_%e4641047428%_
                             _%hd4641147432%_
                             _%tl4641247435%_
                             _%e4641347438%_
                             _%hd4641447442%_
                             _%tl4641547445%_
                             _%e4641647448%_
                             _%hd4641747452%_
                             _%tl4641847455%_
                             _%e4641947458%_
                             _%hd4642047462%_
                             _%tl4642147465%_
                             _%e4642247468%_
                             _%hd4642347472%_
                             _%tl4642447475%_
                             _%e4642547478%_
                             _%hd4642647482%_
                             _%tl4642747485%_
                             _%__splice7923479235%_
                             _%target4642847488%_
                             _%tl4643047491%_)
                      (letrec ((_%loop4643147494%_
                                (lambda (_%hd4642947498%_ _%body4643547501%_)
                                  (if (gx#stx-pair? _%hd4642947498%_)
                                      (let ((_%e4643247504%_
                                             (gx#syntax-e _%hd4642947498%_)))
                                        (let ((_%lp-tl4643447511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643247504%_)))
                                              (_%lp-hd4643347508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643247504%_))))
                                          (_%loop4643147494%_
                                           _%lp-tl4643447511%_
                                           (cons _%lp-hd4643347508%_
                                                 _%body4643547501%_))))
                                      (let ((_%body4643647514%_
                                             (reverse _%body4643547501%_)))
                                        (let ((_%L47518%_ _%body4643647514%_)
                                              (_%L47520%_ _%hd4642647482%_)
                                              (_%L47521%_ _%hd4642347472%_)
                                              (_%L47522%_ _%hd4642047462%_)
                                              (_%L47523%_ _%hd4641747452%_))
                                          (if (and (gx#identifier? _%L47523%_)
                                                   (gx#identifier? _%L47521%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47521%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47521%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47521%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47521%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47521%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7923279233%_
                                               _%L47518%_
                                               _%L47520%_
                                               _%L47521%_
                                               _%L47522%_
                                               _%L47523%_)
                                              (_%__match7933679337%_
                                               _%e4641047428%_
                                               _%hd4641147432%_
                                               _%tl4641247435%_
                                               _%e4641347438%_
                                               _%hd4641447442%_
                                               _%tl4641547445%_
                                               _%e4641647448%_
                                               _%hd4641747452%_
                                               _%tl4641847455%_
                                               _%e4641947458%_
                                               _%hd4642047462%_
                                               _%tl4642147465%_
                                               _%e4642247468%_
                                               _%hd4642347472%_
                                               _%tl4642447475%_))))))))
                        (_%loop4643147494%_ _%target4642847488%_ '())))))
              (if (gx#stx-pair? _%__stx7922979230%_)
                  (let ((_%e4641047428%_ (gx#syntax-e _%__stx7922979230%_)))
                    (let ((_%tl4641247435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4641047428%_)))
                          (_%hd4641147432%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4641047428%_))))
                      (if (gx#stx-pair? _%tl4641247435%_)
                          (let ((_%e4641347438%_
                                 (gx#syntax-e _%tl4641247435%_)))
                            (let ((_%tl4641547445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4641347438%_)))
                                  (_%hd4641447442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4641347438%_))))
                              (if (gx#stx-pair? _%hd4641447442%_)
                                  (let ((_%e4641647448%_
                                         (gx#syntax-e _%hd4641447442%_)))
                                    (let ((_%tl4641847455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4641647448%_)))
                                          (_%hd4641747452%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4641647448%_))))
                                      (if (gx#stx-pair? _%tl4641847455%_)
                                          (let ((_%e4641947458%_
                                                 (gx#syntax-e
                                                  _%tl4641847455%_)))
                                            (let ((_%tl4642147465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4641947458%_)))
                                                  (_%hd4642047462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4641947458%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4642147465%_)
                                                  (let ((_%e4642247468%_
                                                         (gx#syntax-e
                                                          _%tl4642147465%_)))
                                                    (let ((_%tl4642447475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4642247468%_)))
                                                          (_%hd4642347472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4642247468%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4642447475%_)
                                                          (let ((_%e4642547478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4642447475%_)))
                    (let ((_%tl4642747485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4642547478%_)))
                          (_%hd4642647482%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4642547478%_))))
                      (if (gx#stx-null? _%tl4642747485%_)
                          (if (gx#stx-pair/null? _%tl4641547445%_)
                              (let ((_%__splice7923479235%_
                                     (gx#syntax-split-splice
                                      _%tl4641547445%_
                                      '0)))
                                (let ((_%tl4643047491%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7923479235%_
                                          '1)))
                                      (_%target4642847488%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7923479235%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4643047491%_)
                                      (_%__match7930679307%_
                                       _%e4641047428%_
                                       _%hd4641147432%_
                                       _%tl4641247435%_
                                       _%e4641347438%_
                                       _%hd4641447442%_
                                       _%tl4641547445%_
                                       _%e4641647448%_
                                       _%hd4641747452%_
                                       _%tl4641847455%_
                                       _%e4641947458%_
                                       _%hd4642047462%_
                                       _%tl4642147465%_
                                       _%e4642247468%_
                                       _%hd4642347472%_
                                       _%tl4642447475%_
                                       _%e4642547478%_
                                       _%hd4642647482%_
                                       _%tl4642747485%_
                                       _%__splice7923479235%_
                                       _%target4642847488%_
                                       _%tl4643047491%_)
                                      (if (gx#stx-pair? _%hd4641747452%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4641747452%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))))
                              (if (gx#stx-pair? _%hd4641747452%_)
                                  (let ((_%e4657946733%_
                                         (gx#syntax-e _%hd4641747452%_)))
                                    (let ((_%tl4658146740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657946733%_)))
                                          (_%hd4658046737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657946733%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                          (if (gx#identifier? _%hd4642347472%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g84907_|
                                   _%hd4642347472%_)
                                  (if (gx#stx-pair? _%tl4642747485%_)
                                      (let ((_%e4646147312%_
                                             (gx#syntax-e _%tl4642747485%_)))
                                        (let ((_%tl4646347319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646147312%_)))
                                              (_%hd4646247316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646147312%_))))
                                          (if (gx#stx-pair? _%tl4646347319%_)
                                              (let ((_%e4646447322%_
                                                     (gx#syntax-e
                                                      _%tl4646347319%_)))
                                                (let ((_%tl4646647329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4646447322%_)))
                                                      (_%hd4646547326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4646447322%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4646647329%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641547445%_)
                                                          (let ((_%__splice7923879239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641547445%_ '0)))
                    (let ((_%tl4646947335%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7923879239%_ '1)))
                          (_%target4646747332%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7923879239%_ '0))))
                      (if (gx#stx-null? _%tl4646947335%_)
                          (_%__match7936879369%_
                           _%e4641047428%_
                           _%hd4641147432%_
                           _%tl4641247435%_
                           _%e4641347438%_
                           _%hd4641447442%_
                           _%tl4641547445%_
                           _%e4641647448%_
                           _%hd4641747452%_
                           _%tl4641847455%_
                           _%e4641947458%_
                           _%hd4642047462%_
                           _%tl4642147465%_
                           _%e4642247468%_
                           _%hd4642347472%_
                           _%tl4642447475%_
                           _%e4642547478%_
                           _%hd4642647482%_
                           _%tl4642747485%_
                           _%e4646147312%_
                           _%hd4646247316%_
                           _%tl4646347319%_
                           _%e4646447322%_
                           _%hd4646547326%_
                           _%tl4646647329%_
                           _%__splice7923879239%_
                           _%target4646747332%_
                           _%tl4646947335%_)
                          (if (gx#stx-pair? _%hd4641747452%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4641747452%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_))))))
                  (if (gx#stx-pair? _%hd4641747452%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
              (if (gx#stx-pair? _%hd4641747452%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4641547445%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4641547445%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4641047428%_
                                   _%hd4641147432%_
                                   _%tl4641247435%_
                                   _%e4641347438%_
                                   _%hd4641447442%_
                                   _%tl4641547445%_
                                   _%e4641647448%_
                                   _%hd4641747452%_
                                   _%tl4641847455%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4642047462%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g84906_|
                                                       _%hd4642047462%_)
                                                      (if (gx#stx-null?
                                                           _%tl4646347319%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4641547445%_)
                                                              (let ((_%__splice7925079251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4641547445%_ '0)))
                        (let ((_%tl4655946888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925079251%_ '1)))
                              (_%target4655746885%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925079251%_ '0))))
                          (if (gx#stx-null? _%tl4655946888%_)
                              (_%__match7950879509%_
                               _%e4641047428%_
                               _%hd4641147432%_
                               _%tl4641247435%_
                               _%e4641347438%_
                               _%hd4641447442%_
                               _%tl4641547445%_
                               _%e4641647448%_
                               _%hd4641747452%_
                               _%tl4641847455%_
                               _%e4641947458%_
                               _%hd4642047462%_
                               _%tl4642147465%_
                               _%e4642247468%_
                               _%hd4642347472%_
                               _%tl4642447475%_
                               _%e4642547478%_
                               _%hd4642647482%_
                               _%tl4642747485%_
                               _%e4646147312%_
                               _%hd4646247316%_
                               _%tl4646347319%_
                               _%__splice7925079251%_
                               _%target4655746885%_
                               _%tl4655946888%_)
                              (if (gx#stx-pair? _%hd4641747452%_)
                                  (let ((_%e4657946733%_
                                         (gx#syntax-e _%hd4641747452%_)))
                                    (let ((_%tl4658146740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657946733%_)))
                                          (_%hd4658046737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657946733%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))))
                      (if (gx#stx-pair? _%hd4641747452%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4641747452%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                  (if (gx#stx-pair? _%hd4641747452%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (if (gx#stx-pair/null? _%tl4641547445%_)
                              (let ((_%__splice7925479255%_
                                     (gx#syntax-split-splice
                                      _%tl4641547445%_
                                      '0)))
                                (let ((_%tl4658446746%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '1)))
                                      (_%target4658246743%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7925479255%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658446746%_)
                                      (_%__match7954079541%_
                                       _%e4641047428%_
                                       _%hd4641147432%_
                                       _%tl4641247435%_
                                       _%e4641347438%_
                                       _%hd4641447442%_
                                       _%tl4641547445%_
                                       _%e4641647448%_
                                       _%hd4641747452%_
                                       _%tl4641847455%_
                                       _%e4657946733%_
                                       _%hd4658046737%_
                                       _%tl4658146740%_
                                       _%__splice7925479255%_
                                       _%target4658246743%_
                                       _%tl4658446746%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
              (if (gx#stx-pair? _%hd4641747452%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4641547445%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4641547445%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4641047428%_
                                   _%hd4641147432%_
                                   _%tl4641247435%_
                                   _%e4641347438%_
                                   _%hd4641447442%_
                                   _%tl4641547445%_
                                   _%e4641647448%_
                                   _%hd4641747452%_
                                   _%tl4641847455%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641747452%_)
                                                      (let ((_%e4657946733%_
                                                             (gx#syntax-e
                                                              _%hd4641747452%_)))
                                                        (let ((_%tl4658146740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657946733%_)))
                      (_%hd4658046737%_
                       (let () (declare (not safe)) (##car _%e4657946733%_))))
                  (if (gx#stx-pair/null? _%tl4641547445%_)
                      (let ((_%__splice7925479255%_
                             (gx#syntax-split-splice _%tl4641547445%_ '0)))
                        (let ((_%tl4658446746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '1)))
                              (_%target4658246743%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '0))))
                          (if (gx#stx-null? _%tl4658446746%_)
                              (_%__match7954079541%_
                               _%e4641047428%_
                               _%hd4641147432%_
                               _%tl4641247435%_
                               _%e4641347438%_
                               _%hd4641447442%_
                               _%tl4641547445%_
                               _%e4641647448%_
                               _%hd4641747452%_
                               _%tl4641847455%_
                               _%e4657946733%_
                               _%hd4658046737%_
                               _%tl4658146740%_
                               _%__splice7925479255%_
                               _%target4658246743%_
                               _%tl4658446746%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4641747452%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4641747452%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641547445%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641547445%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4641047428%_
                                                           _%hd4641147432%_
                                                           _%tl4641247435%_
                                                           _%e4641347438%_
                                                           _%hd4641447442%_
                                                           _%tl4641547445%_
                                                           _%e4641647448%_
                                                           _%hd4641747452%_
                                                           _%tl4641847455%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                  (if (gx#identifier? _%hd4642047462%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84906_|
                                           _%hd4642047462%_)
                                          (if (gx#stx-pair? _%tl4642747485%_)
                                              (let ((_%e4655446875%_
                                                     (gx#syntax-e
                                                      _%tl4642747485%_)))
                                                (let ((_%tl4655646882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655446875%_)))
                                                      (_%hd4655546879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655446875%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4655646882%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641547445%_)
                                                          (let ((_%__splice7925079251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641547445%_ '0)))
                    (let ((_%tl4655946888%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925079251%_ '1)))
                          (_%target4655746885%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925079251%_ '0))))
                      (if (gx#stx-null? _%tl4655946888%_)
                          (_%__match7950879509%_
                           _%e4641047428%_
                           _%hd4641147432%_
                           _%tl4641247435%_
                           _%e4641347438%_
                           _%hd4641447442%_
                           _%tl4641547445%_
                           _%e4641647448%_
                           _%hd4641747452%_
                           _%tl4641847455%_
                           _%e4641947458%_
                           _%hd4642047462%_
                           _%tl4642147465%_
                           _%e4642247468%_
                           _%hd4642347472%_
                           _%tl4642447475%_
                           _%e4642547478%_
                           _%hd4642647482%_
                           _%tl4642747485%_
                           _%e4655446875%_
                           _%hd4655546879%_
                           _%tl4655646882%_
                           _%__splice7925079251%_
                           _%target4655746885%_
                           _%tl4655946888%_)
                          (if (gx#stx-pair? _%hd4641747452%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4641747452%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_))))))
                  (if (gx#stx-pair? _%hd4641747452%_)
                      (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                        (let ((_%tl4658146740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657946733%_)))
                              (_%hd4658046737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657946733%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
              (if (gx#stx-pair? _%hd4641747452%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (if (gx#stx-pair/null? _%tl4641547445%_)
                          (let ((_%__splice7925479255%_
                                 (gx#syntax-split-splice _%tl4641547445%_ '0)))
                            (let ((_%tl4658446746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7925479255%_ '1)))
                                  (_%target4658246743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7925479255%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658446746%_)
                                  (_%__match7954079541%_
                                   _%e4641047428%_
                                   _%hd4641147432%_
                                   _%tl4641247435%_
                                   _%e4641347438%_
                                   _%hd4641447442%_
                                   _%tl4641547445%_
                                   _%e4641647448%_
                                   _%hd4641747452%_
                                   _%tl4641847455%_
                                   _%e4657946733%_
                                   _%hd4658046737%_
                                   _%tl4658146740%_
                                   _%__splice7925479255%_
                                   _%target4658246743%_
                                   _%tl4658446746%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4641747452%_)
                                                  (let ((_%e4657946733%_
                                                         (gx#syntax-e
                                                          _%hd4641747452%_)))
                                                    (let ((_%tl4658146740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657946733%_)))
                                                          (_%hd4658046737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657946733%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641547445%_)
                                                          (let ((_%__splice7925479255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641547445%_ '0)))
                    (let ((_%tl4658446746%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '1)))
                          (_%target4658246743%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7925479255%_ '0))))
                      (if (gx#stx-null? _%tl4658446746%_)
                          (_%__match7954079541%_
                           _%e4641047428%_
                           _%hd4641147432%_
                           _%tl4641247435%_
                           _%e4641347438%_
                           _%hd4641447442%_
                           _%tl4641547445%_
                           _%e4641647448%_
                           _%hd4641747452%_
                           _%tl4641847455%_
                           _%e4657946733%_
                           _%hd4658046737%_
                           _%tl4658146740%_
                           _%__splice7925479255%_
                           _%target4658246743%_
                           _%tl4658446746%_)
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_))))
                                          (if (gx#stx-pair? _%hd4641747452%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4641747452%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641547445%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641547445%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4641047428%_
                       _%hd4641147432%_
                       _%tl4641247435%_
                       _%e4641347438%_
                       _%hd4641447442%_
                       _%tl4641547445%_
                       _%e4641647448%_
                       _%hd4641747452%_
                       _%tl4641847455%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                      (if (gx#stx-pair? _%hd4641747452%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4641747452%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641547445%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641547445%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4641047428%_
                                                           _%hd4641147432%_
                                                           _%tl4641247435%_
                                                           _%e4641347438%_
                                                           _%hd4641447442%_
                                                           _%tl4641547445%_
                                                           _%e4641647448%_
                                                           _%hd4641747452%_
                                                           _%tl4641847455%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                              (if (gx#identifier? _%hd4642047462%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84906_|
                                       _%hd4642047462%_)
                                      (if (gx#stx-pair? _%tl4642747485%_)
                                          (let ((_%e4655446875%_
                                                 (gx#syntax-e
                                                  _%tl4642747485%_)))
                                            (let ((_%tl4655646882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655446875%_)))
                                                  (_%hd4655546879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655446875%_))))
                                              (if (gx#stx-null?
                                                   _%tl4655646882%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641547445%_)
                                                      (let ((_%__splice7925079251%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641547445%_
                                                              '0)))
                                                        (let ((_%tl4655946888%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925079251%_ '1)))
                      (_%target4655746885%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925079251%_ '0))))
                  (if (gx#stx-null? _%tl4655946888%_)
                      (_%__match7950879509%_
                       _%e4641047428%_
                       _%hd4641147432%_
                       _%tl4641247435%_
                       _%e4641347438%_
                       _%hd4641447442%_
                       _%tl4641547445%_
                       _%e4641647448%_
                       _%hd4641747452%_
                       _%tl4641847455%_
                       _%e4641947458%_
                       _%hd4642047462%_
                       _%tl4642147465%_
                       _%e4642247468%_
                       _%hd4642347472%_
                       _%tl4642447475%_
                       _%e4642547478%_
                       _%hd4642647482%_
                       _%tl4642747485%_
                       _%e4655446875%_
                       _%hd4655546879%_
                       _%tl4655646882%_
                       _%__splice7925079251%_
                       _%target4655746885%_
                       _%tl4655946888%_)
                      (if (gx#stx-pair? _%hd4641747452%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4641747452%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                          (let () (declare (not safe)) (_%g4640346612%_))))))
              (if (gx#stx-pair? _%hd4641747452%_)
                  (let ((_%e4657946733%_ (gx#syntax-e _%hd4641747452%_)))
                    (let ((_%tl4658146740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657946733%_)))
                          (_%hd4658046737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657946733%_))))
                      (let () (declare (not safe)) (_%g4640346612%_))))
                  (let () (declare (not safe)) (_%g4640346612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641747452%_)
                                                      (let ((_%e4657946733%_
                                                             (gx#syntax-e
                                                              _%hd4641747452%_)))
                                                        (let ((_%tl4658146740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657946733%_)))
                      (_%hd4658046737%_
                       (let () (declare (not safe)) (##car _%e4657946733%_))))
                  (if (gx#stx-pair/null? _%tl4641547445%_)
                      (let ((_%__splice7925479255%_
                             (gx#syntax-split-splice _%tl4641547445%_ '0)))
                        (let ((_%tl4658446746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '1)))
                              (_%target4658246743%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '0))))
                          (if (gx#stx-null? _%tl4658446746%_)
                              (_%__match7954079541%_
                               _%e4641047428%_
                               _%hd4641147432%_
                               _%tl4641247435%_
                               _%e4641347438%_
                               _%hd4641447442%_
                               _%tl4641547445%_
                               _%e4641647448%_
                               _%hd4641747452%_
                               _%tl4641847455%_
                               _%e4657946733%_
                               _%hd4658046737%_
                               _%tl4658146740%_
                               _%__splice7925479255%_
                               _%target4658246743%_
                               _%tl4658446746%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4641747452%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4641747452%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641547445%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641547445%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4641047428%_
                       _%hd4641147432%_
                       _%tl4641247435%_
                       _%e4641347438%_
                       _%hd4641447442%_
                       _%tl4641547445%_
                       _%e4641647448%_
                       _%hd4641747452%_
                       _%tl4641847455%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))
                                      (if (gx#stx-pair? _%hd4641747452%_)
                                          (let ((_%e4657946733%_
                                                 (gx#syntax-e
                                                  _%hd4641747452%_)))
                                            (let ((_%tl4658146740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657946733%_)))
                                                  (_%hd4658046737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657946733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641547445%_)
                                                  (let ((_%__splice7925479255%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641547445%_
                                                          '0)))
                                                    (let ((_%tl4658446746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '1)))
                                                          (_%target4658246743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7925479255%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658446746%_)
                                                          (_%__match7954079541%_
                                                           _%e4641047428%_
                                                           _%hd4641147432%_
                                                           _%tl4641247435%_
                                                           _%e4641347438%_
                                                           _%hd4641447442%_
                                                           _%tl4641547445%_
                                                           _%e4641647448%_
                                                           _%hd4641747452%_
                                                           _%tl4641847455%_
                                                           _%e4657946733%_
                                                           _%hd4658046737%_
                                                           _%tl4658146740%_
                                                           _%__splice7925479255%_
                                                           _%target4658246743%_
                                                           _%tl4658446746%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640346612%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                  (if (gx#stx-pair? _%hd4641747452%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4641747452%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4641547445%_)
                                              (let ((_%__splice7925479255%_
                                                     (gx#syntax-split-splice
                                                      _%tl4641547445%_
                                                      '0)))
                                                (let ((_%tl4658446746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '1)))
                                                      (_%target4658246743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7925479255%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658446746%_)
                                                      (_%__match7954079541%_
                                                       _%e4641047428%_
                                                       _%hd4641147432%_
                                                       _%tl4641247435%_
                                                       _%e4641347438%_
                                                       _%hd4641447442%_
                                                       _%tl4641547445%_
                                                       _%e4641647448%_
                                                       _%hd4641747452%_
                                                       _%tl4641847455%_
                                                       _%e4657946733%_
                                                       _%hd4658046737%_
                                                       _%tl4658146740%_
                                                       _%__splice7925479255%_
                                                       _%target4658246743%_
                                                       _%tl4658446746%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640346612%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))))
                  (if (gx#stx-null? _%tl4642447475%_)
                      (if (gx#stx-pair/null? _%tl4641547445%_)
                          (let ((_%__splice7924279243%_
                                 (gx#syntax-split-splice _%tl4641547445%_ '0)))
                            (let ((_%tl4649747152%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7924279243%_ '1)))
                                  (_%target4649547149%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7924279243%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649747152%_)
                                  (_%__match7940879409%_
                                   _%e4641047428%_
                                   _%hd4641147432%_
                                   _%tl4641247435%_
                                   _%e4641347438%_
                                   _%hd4641447442%_
                                   _%tl4641547445%_
                                   _%e4641647448%_
                                   _%hd4641747452%_
                                   _%tl4641847455%_
                                   _%e4641947458%_
                                   _%hd4642047462%_
                                   _%tl4642147465%_
                                   _%e4642247468%_
                                   _%hd4642347472%_
                                   _%tl4642447475%_
                                   _%__splice7924279243%_
                                   _%target4649547149%_
                                   _%tl4649747152%_)
                                  (if (gx#stx-pair? _%hd4641747452%_)
                                      (let ((_%e4657946733%_
                                             (gx#syntax-e _%hd4641747452%_)))
                                        (let ((_%tl4658146740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657946733%_)))
                                              (_%hd4658046737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657946733%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))
                          (if (gx#stx-pair? _%hd4641747452%_)
                              (let ((_%e4657946733%_
                                     (gx#syntax-e _%hd4641747452%_)))
                                (let ((_%tl4658146740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657946733%_)))
                                      (_%hd4658046737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657946733%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_))))
                              (let () (declare (not safe)) (_%g4640346612%_))))
                      (if (gx#stx-pair? _%hd4641747452%_)
                          (let ((_%e4657946733%_
                                 (gx#syntax-e _%hd4641747452%_)))
                            (let ((_%tl4658146740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657946733%_)))
                                  (_%hd4658046737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657946733%_))))
                              (if (gx#stx-pair/null? _%tl4641547445%_)
                                  (let ((_%__splice7925479255%_
                                         (gx#syntax-split-splice
                                          _%tl4641547445%_
                                          '0)))
                                    (let ((_%tl4658446746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '1)))
                                          (_%target4658246743%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7925479255%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658446746%_)
                                          (_%__match7954079541%_
                                           _%e4641047428%_
                                           _%hd4641147432%_
                                           _%tl4641247435%_
                                           _%e4641347438%_
                                           _%hd4641447442%_
                                           _%tl4641547445%_
                                           _%e4641647448%_
                                           _%hd4641747452%_
                                           _%tl4641847455%_
                                           _%e4657946733%_
                                           _%hd4658046737%_
                                           _%tl4658146740%_
                                           _%__splice7925479255%_
                                           _%target4658246743%_
                                           _%tl4658446746%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640346612%_)))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641747452%_)
                                                      (let ((_%e4657946733%_
                                                             (gx#syntax-e
                                                              _%hd4641747452%_)))
                                                        (let ((_%tl4658146740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657946733%_)))
                      (_%hd4658046737%_
                       (let () (declare (not safe)) (##car _%e4657946733%_))))
                  (if (gx#stx-pair/null? _%tl4641547445%_)
                      (let ((_%__splice7925479255%_
                             (gx#syntax-split-splice _%tl4641547445%_ '0)))
                        (let ((_%tl4658446746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '1)))
                              (_%target4658246743%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7925479255%_ '0))))
                          (if (gx#stx-null? _%tl4658446746%_)
                              (_%__match7954079541%_
                               _%e4641047428%_
                               _%hd4641147432%_
                               _%tl4641247435%_
                               _%e4641347438%_
                               _%hd4641447442%_
                               _%tl4641547445%_
                               _%e4641647448%_
                               _%hd4641747452%_
                               _%tl4641847455%_
                               _%e4657946733%_
                               _%hd4658046737%_
                               _%tl4658146740%_
                               _%__splice7925479255%_
                               _%target4658246743%_
                               _%tl4658446746%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640346612%_)))))
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4641747452%_)
                                              (let ((_%e4657946733%_
                                                     (gx#syntax-e
                                                      _%hd4641747452%_)))
                                                (let ((_%tl4658146740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657946733%_)))
                                                      (_%hd4658046737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657946733%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641547445%_)
                                                      (let ((_%__splice7925479255%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641547445%_
                                                              '0)))
                                                        (let ((_%tl4658446746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '1)))
                      (_%target4658246743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7925479255%_ '0))))
                  (if (gx#stx-null? _%tl4658446746%_)
                      (_%__match7954079541%_
                       _%e4641047428%_
                       _%hd4641147432%_
                       _%tl4641247435%_
                       _%e4641347438%_
                       _%hd4641447442%_
                       _%tl4641547445%_
                       _%e4641647448%_
                       _%hd4641747452%_
                       _%tl4641847455%_
                       _%e4657946733%_
                       _%hd4658046737%_
                       _%tl4658146740%_
                       _%__splice7925479255%_
                       _%target4658246743%_
                       _%tl4658446746%_)
                      (let () (declare (not safe)) (_%g4640346612%_)))))
              (let () (declare (not safe)) (_%g4640346612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640346612%_))))))
                                  (if (gx#stx-null? _%hd4641447442%_)
                                      (if (gx#stx-pair/null? _%tl4641547445%_)
                                          (let ((_%__splice7925879259%_
                                                 (gx#syntax-split-splice
                                                  _%tl4641547445%_
                                                  '0)))
                                            (let ((_%tl4660046642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925879259%_
                                                      '1)))
                                                  (_%target4659846639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7925879259%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660046642%_)
                                                  (_%__match7956279563%_
                                                   _%e4641047428%_
                                                   _%hd4641147432%_
                                                   _%tl4641247435%_
                                                   _%e4641347438%_
                                                   _%hd4641447442%_
                                                   _%tl4641547445%_
                                                   _%__splice7925879259%_
                                                   _%target4659846639%_
                                                   _%tl4660046642%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640346612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640346612%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640346612%_))))))
                          (let () (declare (not safe)) (_%g4640346612%_)))))
                  (let () (declare (not safe)) (_%g4640346612%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47586%_)
        (let* ((_%g4759047624%_
                (lambda (_%g4759147620%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4759147620%_)))
               (_%g4758947747%_
                (lambda (_%g4759147628%_)
                  (if (gx#stx-pair? _%g4759147628%_)
                      (let ((_%e4759547631%_ (gx#syntax-e _%g4759147628%_)))
                        (let ((_%hd4759647635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4759547631%_)))
                              (_%tl4759747638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4759547631%_))))
                          (if (gx#stx-pair? _%tl4759747638%_)
                              (let ((_%e4759847641%_
                                     (gx#syntax-e _%tl4759747638%_)))
                                (let ((_%hd4759947645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4759847641%_)))
                                      (_%tl4760047648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4759847641%_))))
                                  (if (gx#stx-pair? _%hd4759947645%_)
                                      (let ((_%e4760147651%_
                                             (gx#syntax-e _%hd4759947645%_)))
                                        (let ((_%hd4760247655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4760147651%_)))
                                              (_%tl4760347658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4760147651%_))))
                                          (if (gx#stx-pair? _%tl4760347658%_)
                                              (let ((_%e4760447661%_
                                                     (gx#syntax-e
                                                      _%tl4760347658%_)))
                                                (let ((_%hd4760547665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4760447661%_)))
                                                      (_%tl4760647668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4760447661%_))))
                                                  (if (gx#identifier?
                                                       _%hd4760547665%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84908_|
                                                           _%hd4760547665%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4760647668%_)
                                                              (let ((_%e4760747671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4760647668%_)))
                        (let ((_%hd4760847675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4760747671%_)))
                              (_%tl4760947678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4760747671%_))))
                          (if (gx#stx-null? _%tl4760947678%_)
                              (if (gx#stx-pair/null? _%tl4760047648%_)
                                  (let ((_g84909_
                                         (gx#syntax-split-splice
                                          _%tl4760047648%_
                                          '0)))
                                    (begin
                                      (let ((_g84910_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84909_)
                                                   (##values-length _g84909_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84910_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84910_)))
                                      (let ((_%target4761047681%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84909_ 0)))
                                            (_%tl4761247684%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84909_ 1))))
                                        (if (gx#stx-null? _%tl4761247684%_)
                                            (letrec ((_%loop4761347687%_
                                                      (lambda (_%hd4761147691%_
                                                               _%body4761747694%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4761147691%_)
                                                            (let ((_%e4761447697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4761147691%_)))
                      (let ((_%lp-hd4761547701%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4761447697%_)))
                            (_%lp-tl4761647704%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4761447697%_))))
                        (_%loop4761347687%_
                         _%lp-tl4761647704%_
                         (cons _%lp-hd4761547701%_ _%body4761747694%_))))
                    (let ((_%body4761847707%_ (reverse _%body4761747694%_)))
                      ((lambda (_%L47711%_ _%L47713%_ _%L47714%_)
                         (if (gx#identifier? _%L47714%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47713%_
                                               (cons _%L47714%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4773847741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4773947744%_)
                            (cons _%g4773847741%_ _%g4773947744%_))
                          '()
                          _%L47711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47713%_ (cons _%L47714%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4759047624%_ _%g4759147628%_)))
                       _%body4761847707%_
                       _%hd4760847675%_
                       _%hd4760247655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4761347687%_
                                               _%target4761047681%_
                                               '()))
                                            (_%g4759047624%_
                                             _%g4759147628%_)))))
                                  (_%g4759047624%_ _%g4759147628%_))
                              (_%g4759047624%_ _%g4759147628%_))))
                      (_%g4759047624%_ _%g4759147628%_))
                  (_%g4759047624%_ _%g4759147628%_))
              (_%g4759047624%_ _%g4759147628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4759047624%_
                                               _%g4759147628%_))))
                                      (_%g4759047624%_ _%g4759147628%_))))
                              (_%g4759047624%_ _%g4759147628%_))))
                      (_%g4759047624%_ _%g4759147628%_)))))
          (_%g4758947747%_ _%$stx47586%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48314%_ _%slot48316%_)
        (let ((_%$e48318%_
               (let ((__obj84736 _%klass48314%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84736
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84736 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84736
                      'slot-types)))))
          (if _%$e48318%_
              ((lambda (_%slot-types48322%_)
                 (agetq _%slot48316%_ _%slot-types48322%_))
               _%$e48318%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48295%_ _%slot48297%_)
        (let ((_%$e48299%_
               (let ((__obj84737 _%klass48295%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84737
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84737 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84737
                      'slot-defaults)))))
          (if _%$e48299%_
              ((lambda (_%slot-defaults48303%_)
                 (let ((_%$e48306%_
                        (agetq _%slot48297%_ _%slot-defaults48303%_)))
                   (if _%$e48306%_
                       (gx#syntax-local-introduce _%$e48306%_)
                       '#f)))
               _%$e48299%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48276%_ _%slot48278%_)
        (let ((_%$e48280%_
               (let ((__obj84738 _%klass48276%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84738
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84738 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84738
                      'slot-defaults)))))
          (if _%$e48280%_
              ((lambda (_%slot-defaults48284%_)
                 (let ((_%$e48287%_
                        (agetq _%slot48278%_ _%slot-defaults48284%_)))
                   (if _%$e48287%_
                       (gx#syntax-local-introduce _%$e48287%_)
                       '#f)))
               _%$e48280%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48044%_ _%slot48046%_)
        (let ((_%contract4804748049%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48044%_
                _%slot48046%_)))
          (if _%contract4804748049%_
              (let* ((_%contract48053%_ _%contract4804748049%_)
                     (_%__stx7956579566%_ _%contract48053%_)
                     (_%g4805848095%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7956579566%_))))
                (let ((_%__kont7956879569%_
                       (lambda (_%L48245%_ _%L48247%_)
                         (not (gx#free-identifier=?
                               _%L48247%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7957079571%_
                       (lambda (_%L48185%_ _%L48187%_ _%L48188%_)
                         (not (gx#free-identifier=?
                               _%L48187%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7957279573%_ (lambda (_%L48122%_) '#f)))
                  (let* ((_%__match7961879619%_
                          (lambda (_%e4807148145%_
                                   _%hd4807248149%_
                                   _%tl4807348152%_
                                   _%e4807448155%_
                                   _%hd4807548159%_
                                   _%tl4807648162%_
                                   _%e4807748165%_
                                   _%hd4807848169%_
                                   _%tl4807948172%_
                                   _%e4808048175%_
                                   _%hd4808148179%_
                                   _%tl4808248182%_)
                            (let ((_%L48185%_ _%hd4808148179%_)
                                  (_%L48187%_ _%hd4807848169%_)
                                  (_%L48188%_ _%hd4807548159%_))
                              (if (and (gx#identifier? _%L48187%_)
                                       (or (gx#free-identifier=?
                                            _%L48187%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48187%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48187%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48187%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7957079571%_
                                   _%L48185%_
                                   _%L48187%_
                                   _%L48188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4805848095%_))))))
                         (_%__match7958879589%_
                          (lambda (_%e4806248225%_
                                   _%hd4806348229%_
                                   _%tl4806448232%_
                                   _%e4806548235%_
                                   _%hd4806648239%_
                                   _%tl4806748242%_)
                            (let ((_%L48245%_ _%hd4806648239%_)
                                  (_%L48247%_ _%hd4806348229%_))
                              (if (and (gx#identifier? _%L48247%_)
                                       (or (gx#free-identifier=?
                                            _%L48247%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48247%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48247%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48247%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7956879569%_ _%L48245%_ _%L48247%_)
                                  (if (gx#identifier? _%hd4806348229%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84911_|
                                           _%hd4806348229%_)
                                          (_%__kont7957279573%_
                                           _%hd4806648239%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4805848095%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4805848095%_))))))))
                    (if (gx#stx-pair? _%__stx7956579566%_)
                        (let ((_%e4806248225%_
                               (gx#syntax-e _%__stx7956579566%_)))
                          (let ((_%tl4806448232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4806248225%_)))
                                (_%hd4806348229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4806248225%_))))
                            (if (gx#stx-pair? _%tl4806448232%_)
                                (let ((_%e4806548235%_
                                       (gx#syntax-e _%tl4806448232%_)))
                                  (let ((_%tl4806748242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4806548235%_)))
                                        (_%hd4806648239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4806548235%_))))
                                    (if (gx#stx-null? _%tl4806748242%_)
                                        (_%__match7958879589%_
                                         _%e4806248225%_
                                         _%hd4806348229%_
                                         _%tl4806448232%_
                                         _%e4806548235%_
                                         _%hd4806648239%_
                                         _%tl4806748242%_)
                                        (if (gx#identifier? _%hd4806348229%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84911_|
                                                 _%hd4806348229%_)
                                                (if (gx#stx-pair?
                                                     _%tl4806748242%_)
                                                    (let ((_%e4807748165%_
                                                           (gx#syntax-e
                                                            _%tl4806748242%_)))
                                                      (let ((_%tl4807948172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4807748165%_)))
                    (_%hd4807848169%_
                     (let () (declare (not safe)) (##car _%e4807748165%_))))
                (if (gx#stx-pair? _%tl4807948172%_)
                    (let ((_%e4808048175%_ (gx#syntax-e _%tl4807948172%_)))
                      (let ((_%tl4808248182%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4808048175%_)))
                            (_%hd4808148179%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4808048175%_))))
                        (if (gx#stx-null? _%tl4808248182%_)
                            (_%__match7961879619%_
                             _%e4806248225%_
                             _%hd4806348229%_
                             _%tl4806448232%_
                             _%e4806548235%_
                             _%hd4806648239%_
                             _%tl4806748242%_
                             _%e4807748165%_
                             _%hd4807848169%_
                             _%tl4807948172%_
                             _%e4808048175%_
                             _%hd4808148179%_
                             _%tl4808248182%_)
                            (let () (declare (not safe)) (_%g4805848095%_)))))
                    (let () (declare (not safe)) (_%g4805848095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4805848095%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805848095%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4805848095%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4805848095%_)))))
                        (let () (declare (not safe)) (_%g4805848095%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47812%_ _%slot47814%_)
        (let ((_%contract4781547817%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47812%_
                _%slot47814%_)))
          (if _%contract4781547817%_
              (let* ((_%contract47821%_ _%contract4781547817%_)
                     (_%__stx7963979640%_ _%contract47821%_)
                     (_%g4782647863%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7963979640%_))))
                (let ((_%__kont7964279643%_
                       (lambda (_%L48013%_ _%L48015%_)
                         (not (gx#free-identifier=?
                               _%L48015%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7964479645%_
                       (lambda (_%L47953%_ _%L47955%_ _%L47956%_) '#t))
                      (_%__kont7964679647%_ (lambda (_%L47890%_) '#t)))
                  (let* ((_%__match7969279693%_
                          (lambda (_%e4783947913%_
                                   _%hd4784047917%_
                                   _%tl4784147920%_
                                   _%e4784247923%_
                                   _%hd4784347927%_
                                   _%tl4784447930%_
                                   _%e4784547933%_
                                   _%hd4784647937%_
                                   _%tl4784747940%_
                                   _%e4784847943%_
                                   _%hd4784947947%_
                                   _%tl4785047950%_)
                            (let ((_%L47953%_ _%hd4784947947%_)
                                  (_%L47955%_ _%hd4784647937%_)
                                  (_%L47956%_ _%hd4784347927%_))
                              (if (and (gx#identifier? _%L47955%_)
                                       (or (gx#free-identifier=?
                                            _%L47955%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47955%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47955%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47955%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7964479645%_
                                   _%L47953%_
                                   _%L47955%_
                                   _%L47956%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4782647863%_))))))
                         (_%__match7966279663%_
                          (lambda (_%e4783047993%_
                                   _%hd4783147997%_
                                   _%tl4783248000%_
                                   _%e4783348003%_
                                   _%hd4783448007%_
                                   _%tl4783548010%_)
                            (let ((_%L48013%_ _%hd4783448007%_)
                                  (_%L48015%_ _%hd4783147997%_))
                              (if (and (gx#identifier? _%L48015%_)
                                       (or (gx#free-identifier=?
                                            _%L48015%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48015%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48015%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48015%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7964279643%_ _%L48013%_ _%L48015%_)
                                  (if (gx#identifier? _%hd4783147997%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84912_|
                                           _%hd4783147997%_)
                                          (_%__kont7964679647%_
                                           _%hd4783448007%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4782647863%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4782647863%_))))))))
                    (if (gx#stx-pair? _%__stx7963979640%_)
                        (let ((_%e4783047993%_
                               (gx#syntax-e _%__stx7963979640%_)))
                          (let ((_%tl4783248000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4783047993%_)))
                                (_%hd4783147997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4783047993%_))))
                            (if (gx#stx-pair? _%tl4783248000%_)
                                (let ((_%e4783348003%_
                                       (gx#syntax-e _%tl4783248000%_)))
                                  (let ((_%tl4783548010%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4783348003%_)))
                                        (_%hd4783448007%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4783348003%_))))
                                    (if (gx#stx-null? _%tl4783548010%_)
                                        (_%__match7966279663%_
                                         _%e4783047993%_
                                         _%hd4783147997%_
                                         _%tl4783248000%_
                                         _%e4783348003%_
                                         _%hd4783448007%_
                                         _%tl4783548010%_)
                                        (if (gx#identifier? _%hd4783147997%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84912_|
                                                 _%hd4783147997%_)
                                                (if (gx#stx-pair?
                                                     _%tl4783548010%_)
                                                    (let ((_%e4784547933%_
                                                           (gx#syntax-e
                                                            _%tl4783548010%_)))
                                                      (let ((_%tl4784747940%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4784547933%_)))
                    (_%hd4784647937%_
                     (let () (declare (not safe)) (##car _%e4784547933%_))))
                (if (gx#stx-pair? _%tl4784747940%_)
                    (let ((_%e4784847943%_ (gx#syntax-e _%tl4784747940%_)))
                      (let ((_%tl4785047950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4784847943%_)))
                            (_%hd4784947947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4784847943%_))))
                        (if (gx#stx-null? _%tl4785047950%_)
                            (_%__match7969279693%_
                             _%e4783047993%_
                             _%hd4783147997%_
                             _%tl4783248000%_
                             _%e4783348003%_
                             _%hd4783448007%_
                             _%tl4783548010%_
                             _%e4784547933%_
                             _%hd4784647937%_
                             _%tl4784747940%_
                             _%e4784847943%_
                             _%hd4784947947%_
                             _%tl4785047950%_)
                            (let () (declare (not safe)) (_%g4782647863%_)))))
                    (let () (declare (not safe)) (_%g4782647863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4782647863%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4782647863%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4782647863%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4782647863%_)))))
                        (let () (declare (not safe)) (_%g4782647863%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47798%_)
        (if (gx#identifier? _%id47798%_)
            (let* ((_%str47801%_ (symbol->string (gx#stx-e _%id47798%_)))
                   (_%index4780347805%_ (string-index _%str47801%_ '#\.)))
              (if _%index4780347805%_
                  (let ((_%index47809%_ _%index4780347805%_))
                    (if (let () (declare (not safe)) (##fx> _%index47809%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47801%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47791%_ _%id47793%_)
        (let ((_%parts47795%_
               (string-split (symbol->string (gx#stx-e _%id47793%_)) '#\.)))
          (if (find string-empty? _%parts47795%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47791%_
               _%id47793%_)
              (cons (gx#stx-identifier _%id47793%_ (car _%parts47795%_))
                    (map string->symbol (cdr _%parts47795%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47772%_ _%klass-or-id47774%_ _%slot47775%_)
        (let* ((_%klass47777%_
                (if (gx#identifier? _%klass-or-id47774%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47772%_
                       _%klass-or-id47774%_))
                    _%klass-or-id47774%_))
               (_%accessors47780%_
                (let ((__obj84739 _%klass47777%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84739
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84739 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84739
                       'unchecked-accessors))))
               (_%$e47785%_ (agetq _%slot47775%_ _%accessors47780%_)))
          (if _%$e47785%_
              _%$e47785%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47772%_
               _%klass47777%_
               _%slot47775%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47752%_
               _%klass-or-id47754%_
               _%slot47755%_
               _%checked?47756%_)
        (let* ((_%klass47758%_
                (if (gx#identifier? _%klass-or-id47754%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47752%_
                       _%klass-or-id47754%_))
                    _%klass-or-id47754%_))
               (_%mutators47761%_
                (if _%checked?47756%_
                    (let ((__obj84740 _%klass47758%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84740
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84740 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84740
                           'mutators)))
                    (let ((__obj84741 _%klass47758%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84741
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84741 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84741
                           'unchecked-mutators)))))
               (_%$e47766%_ (agetq _%slot47755%_ _%mutators47761%_)))
          (if _%$e47766%_
              _%$e47766%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47752%_
               _%klass47758%_
               _%slot47755%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48327%_)
        (letrec ((_%expand-body48330%_
                  (lambda (_%klass49238%_
                           _%var49240%_
                           _%Type49241%_
                           _%body49242%_
                           _%checked?49243%_)
                    (let* ((_%g4924549289%_
                            (lambda (_%g4924649285%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4924649285%_)))
                           (_%g4924449446%_
                            (lambda (_%g4924649293%_)
                              (if (gx#stx-pair? _%g4924649293%_)
                                  (let ((_%e4925449296%_
                                         (gx#syntax-e _%g4924649293%_)))
                                    (let ((_%hd4925549300%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4925449296%_)))
                                          (_%tl4925649303%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4925449296%_))))
                                      (if (gx#stx-pair? _%tl4925649303%_)
                                          (let ((_%e4925749306%_
                                                 (gx#syntax-e
                                                  _%tl4925649303%_)))
                                            (let ((_%hd4925849310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4925749306%_)))
                                                  (_%tl4925949313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4925749306%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4925949313%_)
                                                  (let ((_%e4926049316%_
                                                         (gx#syntax-e
                                                          _%tl4925949313%_)))
                                                    (let ((_%hd4926149320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4926049316%_)))
                                                          (_%tl4926249323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4926049316%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4926249323%_)
                                                          (let ((_%e4926349326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4926249323%_)))
                    (let ((_%hd4926449330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4926349326%_)))
                          (_%tl4926549333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4926349326%_))))
                      (if (gx#stx-pair? _%tl4926549333%_)
                          (let ((_%e4926649336%_
                                 (gx#syntax-e _%tl4926549333%_)))
                            (let ((_%hd4926749340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4926649336%_)))
                                  (_%tl4926849343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4926649336%_))))
                              (if (gx#stx-pair? _%tl4926849343%_)
                                  (let ((_%e4926949346%_
                                         (gx#syntax-e _%tl4926849343%_)))
                                    (let ((_%hd4927049350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4926949346%_)))
                                          (_%tl4927149353%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4926949346%_))))
                                      (if (gx#stx-pair? _%tl4927149353%_)
                                          (let ((_%e4927249356%_
                                                 (gx#syntax-e
                                                  _%tl4927149353%_)))
                                            (let ((_%hd4927349360%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927249356%_)))
                                                  (_%tl4927449363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927249356%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4927349360%_)
                                                  (let ((_g84913_
                                                         (gx#syntax-split-splice
                                                          _%hd4927349360%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84913_)
                           (##values-length _g84913_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84914_ 2)))
                    (error "Context expects 2 values" _g84914_)))
              (let ((_%target4927549366%_
                     (let () (declare (not safe)) (##values-ref _g84913_ 0)))
                    (_%tl4927749369%_
                     (let () (declare (not safe)) (##values-ref _g84913_ 1))))
                (if (gx#stx-null? _%tl4927749369%_)
                    (letrec ((_%loop4927849372%_
                              (lambda (_%hd4927649376%_ _%body4928249379%_)
                                (if (gx#stx-pair? _%hd4927649376%_)
                                    (let ((_%e4927949382%_
                                           (gx#syntax-e _%hd4927649376%_)))
                                      (let ((_%lp-hd4928049386%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4927949382%_)))
                                            (_%lp-tl4928149389%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4927949382%_))))
                                        (_%loop4927849372%_
                                         _%lp-tl4928149389%_
                                         (cons _%lp-hd4928049386%_
                                               _%body4928249379%_))))
                                    (let ((_%body4928349392%_
                                           (reverse _%body4928249379%_)))
                                      (if (gx#stx-null? _%tl4927449363%_)
                                          ((lambda (_%L49396%_
                                                    _%L49398%_
                                                    _%L49399%_
                                                    _%L49400%_
                                                    _%L49401%_
                                                    _%L49402%_
                                                    _%L49403%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49401%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49402%_ '()))
                                         (cons _%L49401%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49403%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49401%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49400%_ '()))
                               (cons _%L49399%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49398%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4943749440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4943849443%_)
                      (cons _%g4943749440%_ _%g4943849443%_))
                    '()
                    _%L49396%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4928349392%_
                                           _%hd4927049350%_
                                           _%hd4926749340%_
                                           _%hd4926449330%_
                                           _%hd4926149320%_
                                           _%hd4925849310%_
                                           _%hd4925549300%_)
                                          (_%g4924549289%_
                                           _%g4924649293%_)))))))
                      (_%loop4927849372%_ _%target4927549366%_ '()))
                    (_%g4924549289%_ _%g4924649293%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924549289%_
                                                   _%g4924649293%_))))
                                          (_%g4924549289%_ _%g4924649293%_))))
                                  (_%g4924549289%_ _%g4924649293%_))))
                          (_%g4924549289%_ _%g4924649293%_))))
                  (_%g4924549289%_ _%g4924649293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924549289%_
                                                   _%g4924649293%_))))
                                          (_%g4924549289%_ _%g4924649293%_))))
                                  (_%g4924549289%_ _%g4924649293%_)))))
                      (_%g4924449446%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj84742 _%klass49238%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84742
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84742
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj84742
                                    'type-descriptor)))
                             _%var49240%_
                             _%klass49238%_
                             _%checked?49243%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49242%_)))))
                 (_%expand48332%_
                  (lambda (_%var49130%_
                           _%Type49132%_
                           _%body49133%_
                           _%checked?49134%_
                           _%checked-mutators?49135%_
                           _%maybe?49136%_)
                    (let* ((_%klass49138%_
                            (gx#syntax-local-value _%Type49132%_ false))
                           (_%expr-body49145%_
                            (_%expand-body48330%_
                             _%klass49138%_
                             _%var49130%_
                             _%Type49132%_
                             _%body49133%_
                             (let ((_%$e49141%_ _%checked?49134%_))
                               (if _%$e49141%_
                                   _%$e49141%_
                                   _%checked-mutators?49135%_)))))
                      (if _%checked?49134%_
                          (let* ((_%g4915049169%_
                                  (lambda (_%g4915149165%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4915149165%_)))
                                 (_%g4914949231%_
                                  (lambda (_%g4915149173%_)
                                    (if (gx#stx-pair? _%g4915149173%_)
                                        (let ((_%e4915549176%_
                                               (gx#syntax-e _%g4915149173%_)))
                                          (let ((_%hd4915649180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4915549176%_)))
                                                (_%tl4915749183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4915549176%_))))
                                            (if (gx#stx-pair? _%tl4915749183%_)
                                                (let ((_%e4915849186%_
                                                       (gx#syntax-e
                                                        _%tl4915749183%_)))
                                                  (let ((_%hd4915949190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4915849186%_)))
                                                        (_%tl4916049193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4915849186%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4916049193%_)
                                                        (let ((_%e4916149196%_
                                                               (gx#syntax-e
                                                                _%tl4916049193%_)))
                                                          (let ((_%hd4916249200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4916149196%_)))
                        (_%tl4916349203%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4916149196%_))))
                    (if (gx#stx-null? _%tl4916349203%_)
                        ((lambda (_%L49206%_ _%L49208%_ _%L49209%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49208%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49209%_ '())))
                                       (cons _%L49206%_ '()))))
                         _%hd4916249200%_
                         _%hd4915949190%_
                         _%hd4915649180%_)
                        (_%g4915049169%_ _%g4915149173%_))))
                (_%g4915049169%_ _%g4915149173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4915049169%_
                                                 _%g4915149173%_))))
                                        (_%g4915049169%_ _%g4915149173%_)))))
                            (_%g4914949231%_
                             (list (let ((_%instance?49235%_
                                          (let ((__obj84743 _%klass49138%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84743
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84743
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84743
                                                 'predicate)))))
                                     (if _%maybe?49136%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49235%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49235%_))
                                   _%var49130%_
                                   _%expr-body49145%_)))
                          _%expr-body49145%_)))))
          (let* ((_%__stx7971379714%_ _%stx48327%_)
                 (_%g4833848481%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7971379714%_))))
            (let ((_%__kont7971679717%_
                   (lambda (_%L49058%_ _%L49060%_ _%L49061%_ _%L49062%_)
                     (let* ((_%g4908749095%_
                             (lambda (_%g4908849091%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4908849091%_)))
                            (_%g4908649122%_
                             (lambda (_%g4908849099%_)
                               ((lambda (_%L49102%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49062%_
                                                    (cons _%L49061%_
                                                          (cons _%L49102%_
                                                                '())))
                                              (foldr (lambda (_%g4911349116%_
                                                              _%g4911449119%_)
                                                       (cons _%g4911349116%_
                                                             _%g4911449119%_))
                                                     '()
                                                     _%L49058%_))))
                                _%g4908849099%_))))
                       (_%g4908649122%_
                        (let ((__obj84744 (gx#syntax-local-value _%L49060%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84744
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84744
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84744
                               'identifier)))))))
                  (_%__kont7972079721%_
                   (lambda (_%L48936%_ _%L48938%_ _%L48939%_)
                     (_%expand48332%_
                      _%L48939%_
                      _%L48938%_
                      (foldr (lambda (_%g4896248965%_ _%g4896348968%_)
                               (cons _%g4896248965%_ _%g4896348968%_))
                             '()
                             _%L48936%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7972479725%_
                   (lambda (_%L48814%_ _%L48816%_ _%L48817%_)
                     (_%expand48332%_
                      _%L48817%_
                      _%L48816%_
                      (foldr (lambda (_%g4884048843%_ _%g4884148846%_)
                               (cons _%g4884048843%_ _%g4884148846%_))
                             '()
                             _%L48814%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7972879729%_
                   (lambda (_%L48692%_ _%L48694%_ _%L48695%_)
                     (_%expand48332%_
                      _%L48695%_
                      _%L48694%_
                      (foldr (lambda (_%g4871848721%_ _%g4871948724%_)
                               (cons _%g4871848721%_ _%g4871948724%_))
                             '()
                             _%L48692%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7973279733%_
                   (lambda (_%L48568%_ _%L48570%_ _%L48571%_)
                     (_%expand48332%_
                      _%L48571%_
                      _%L48570%_
                      (foldr (lambda (_%g4859648599%_ _%g4859748602%_)
                               (cons _%g4859648599%_ _%g4859748602%_))
                             '()
                             _%L48568%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7995279953%_
                      (lambda (_%e4845248488%_
                               _%hd4845348492%_
                               _%tl4845448495%_
                               _%e4845548498%_
                               _%hd4845648502%_
                               _%tl4845748505%_
                               _%e4845848508%_
                               _%hd4845948512%_
                               _%tl4846048515%_
                               _%e4846148518%_
                               _%hd4846248522%_
                               _%tl4846348525%_
                               _%e4846448528%_
                               _%hd4846548532%_
                               _%tl4846648535%_
                               _%__splice7973479735%_
                               _%target4846748538%_
                               _%tl4846948541%_)
                        (letrec ((_%loop4847048544%_
                                  (lambda (_%hd4846848548%_ _%body4847448551%_)
                                    (if (gx#stx-pair? _%hd4846848548%_)
                                        (let ((_%e4847148554%_
                                               (gx#syntax-e _%hd4846848548%_)))
                                          (let ((_%lp-tl4847348561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4847148554%_)))
                                                (_%lp-hd4847248558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4847148554%_))))
                                            (_%loop4847048544%_
                                             _%lp-tl4847348561%_
                                             (cons _%lp-hd4847248558%_
                                                   _%body4847448551%_))))
                                        (let ((_%body4847548564%_
                                               (reverse _%body4847448551%_)))
                                          (let ((_%L48568%_ _%body4847548564%_)
                                                (_%L48570%_ _%hd4846548532%_)
                                                (_%L48571%_ _%hd4845948512%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48570%_))
                                                (_%__kont7973279733%_
                                                 _%L48568%_
                                                 _%L48570%_
                                                 _%L48571%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))))))))
                          (_%loop4847048544%_ _%target4846748538%_ '()))))
                     (_%__match7990879909%_
                      (lambda (_%e4842548612%_
                               _%hd4842648616%_
                               _%tl4842748619%_
                               _%e4842848622%_
                               _%hd4842948626%_
                               _%tl4843048629%_
                               _%e4843148632%_
                               _%hd4843248636%_
                               _%tl4843348639%_
                               _%e4843448642%_
                               _%hd4843548646%_
                               _%tl4843648649%_
                               _%e4843748652%_
                               _%hd4843848656%_
                               _%tl4843948659%_
                               _%__splice7973079731%_
                               _%target4844048662%_
                               _%tl4844248665%_)
                        (letrec ((_%loop4844348668%_
                                  (lambda (_%hd4844148672%_ _%body4844748675%_)
                                    (if (gx#stx-pair? _%hd4844148672%_)
                                        (let ((_%e4844448678%_
                                               (gx#syntax-e _%hd4844148672%_)))
                                          (let ((_%lp-tl4844648685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4844448678%_)))
                                                (_%lp-hd4844548682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4844448678%_))))
                                            (_%loop4844348668%_
                                             _%lp-tl4844648685%_
                                             (cons _%lp-hd4844548682%_
                                                   _%body4844748675%_))))
                                        (let ((_%body4844848688%_
                                               (reverse _%body4844748675%_)))
                                          (let ((_%L48692%_ _%body4844848688%_)
                                                (_%L48694%_ _%hd4843848656%_)
                                                (_%L48695%_ _%hd4843248636%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48694%_))
                                                (_%__kont7972879729%_
                                                 _%L48692%_
                                                 _%L48694%_
                                                 _%L48695%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))))))))
                          (_%loop4844348668%_ _%target4844048662%_ '()))))
                     (_%__match7986479865%_
                      (lambda (_%e4839848734%_
                               _%hd4839948738%_
                               _%tl4840048741%_
                               _%e4840148744%_
                               _%hd4840248748%_
                               _%tl4840348751%_
                               _%e4840448754%_
                               _%hd4840548758%_
                               _%tl4840648761%_
                               _%e4840748764%_
                               _%hd4840848768%_
                               _%tl4840948771%_
                               _%e4841048774%_
                               _%hd4841148778%_
                               _%tl4841248781%_
                               _%__splice7972679727%_
                               _%target4841348784%_
                               _%tl4841548787%_)
                        (letrec ((_%loop4841648790%_
                                  (lambda (_%hd4841448794%_ _%body4842048797%_)
                                    (if (gx#stx-pair? _%hd4841448794%_)
                                        (let ((_%e4841748800%_
                                               (gx#syntax-e _%hd4841448794%_)))
                                          (let ((_%lp-tl4841948807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841748800%_)))
                                                (_%lp-hd4841848804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841748800%_))))
                                            (_%loop4841648790%_
                                             _%lp-tl4841948807%_
                                             (cons _%lp-hd4841848804%_
                                                   _%body4842048797%_))))
                                        (let ((_%body4842148810%_
                                               (reverse _%body4842048797%_)))
                                          (let ((_%L48814%_ _%body4842148810%_)
                                                (_%L48816%_ _%hd4841148778%_)
                                                (_%L48817%_ _%hd4840548758%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48816%_))
                                                (_%__kont7972479725%_
                                                 _%L48814%_
                                                 _%L48816%_
                                                 _%L48817%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))))))))
                          (_%loop4841648790%_ _%target4841348784%_ '()))))
                     (_%__match7982079821%_
                      (lambda (_%e4837148856%_
                               _%hd4837248860%_
                               _%tl4837348863%_
                               _%e4837448866%_
                               _%hd4837548870%_
                               _%tl4837648873%_
                               _%e4837748876%_
                               _%hd4837848880%_
                               _%tl4837948883%_
                               _%e4838048886%_
                               _%hd4838148890%_
                               _%tl4838248893%_
                               _%e4838348896%_
                               _%hd4838448900%_
                               _%tl4838548903%_
                               _%__splice7972279723%_
                               _%target4838648906%_
                               _%tl4838848909%_)
                        (letrec ((_%loop4838948912%_
                                  (lambda (_%hd4838748916%_ _%body4839348919%_)
                                    (if (gx#stx-pair? _%hd4838748916%_)
                                        (let ((_%e4839048922%_
                                               (gx#syntax-e _%hd4838748916%_)))
                                          (let ((_%lp-tl4839248929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4839048922%_)))
                                                (_%lp-hd4839148926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4839048922%_))))
                                            (_%loop4838948912%_
                                             _%lp-tl4839248929%_
                                             (cons _%lp-hd4839148926%_
                                                   _%body4839348919%_))))
                                        (let ((_%body4839448932%_
                                               (reverse _%body4839348919%_)))
                                          (let ((_%L48936%_ _%body4839448932%_)
                                                (_%L48938%_ _%hd4838448900%_)
                                                (_%L48939%_ _%hd4837848880%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48938%_))
                                                (_%__kont7972079721%_
                                                 _%L48936%_
                                                 _%L48938%_
                                                 _%L48939%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))))))))
                          (_%loop4838948912%_ _%target4838648906%_ '()))))
                     (_%__match7980079801%_
                      (lambda (_%e4837148856%_
                               _%hd4837248860%_
                               _%tl4837348863%_
                               _%e4837448866%_
                               _%hd4837548870%_
                               _%tl4837648873%_
                               _%e4837748876%_
                               _%hd4837848880%_
                               _%tl4837948883%_
                               _%e4838048886%_
                               _%hd4838148890%_
                               _%tl4838248893%_)
                        (if (gx#identifier? _%hd4838148890%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84915_|
                                 _%hd4838148890%_)
                                (if (gx#stx-pair? _%tl4838248893%_)
                                    (let ((_%e4838348896%_
                                           (gx#syntax-e _%tl4838248893%_)))
                                      (let ((_%tl4838548903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4838348896%_)))
                                            (_%hd4838448900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4838348896%_))))
                                        (if (gx#stx-null? _%tl4838548903%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4837648873%_)
                                                (let ((_%__splice7972279723%_
                                                       (gx#syntax-split-splice
                                                        _%tl4837648873%_
                                                        '0)))
                                                  (let ((_%tl4838848909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7972279723%_
                                                            '1)))
                                                        (_%target4838648906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7972279723%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4838848909%_)
                                                        (_%__match7982079821%_
                                                         _%e4837148856%_
                                                         _%hd4837248860%_
                                                         _%tl4837348863%_
                                                         _%e4837448866%_
                                                         _%hd4837548870%_
                                                         _%tl4837648873%_
                                                         _%e4837748876%_
                                                         _%hd4837848880%_
                                                         _%tl4837948883%_
                                                         _%e4838048886%_
                                                         _%hd4838148890%_
                                                         _%tl4838248893%_
                                                         _%e4838348896%_
                                                         _%hd4838448900%_
                                                         _%tl4838548903%_
                                                         _%__splice7972279723%_
                                                         _%target4838648906%_
                                                         _%tl4838848909%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4833848481%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833848481%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4833848481%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84916_|
                                     _%hd4838148890%_)
                                    (if (gx#stx-pair? _%tl4838248893%_)
                                        (let ((_%e4841048774%_
                                               (gx#syntax-e _%tl4838248893%_)))
                                          (let ((_%tl4841248781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841048774%_)))
                                                (_%hd4841148778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841048774%_))))
                                            (if (gx#stx-null? _%tl4841248781%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4837648873%_)
                                                    (let ((_%__splice7972679727%_
                                                           (gx#syntax-split-splice
                                                            _%tl4837648873%_
                                                            '0)))
                                                      (let ((_%tl4841548787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7972679727%_ '1)))
                    (_%target4841348784%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7972679727%_ '0))))
                (if (gx#stx-null? _%tl4841548787%_)
                    (_%__match7986479865%_
                     _%e4837148856%_
                     _%hd4837248860%_
                     _%tl4837348863%_
                     _%e4837448866%_
                     _%hd4837548870%_
                     _%tl4837648873%_
                     _%e4837748876%_
                     _%hd4837848880%_
                     _%tl4837948883%_
                     _%e4838048886%_
                     _%hd4838148890%_
                     _%tl4838248893%_
                     _%e4841048774%_
                     _%hd4841148778%_
                     _%tl4841248781%_
                     _%__splice7972679727%_
                     _%target4841348784%_
                     _%tl4841548787%_)
                    (let () (declare (not safe)) (_%g4833848481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833848481%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4833848481%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84917_|
                                         _%hd4838148890%_)
                                        (if (gx#stx-pair? _%tl4838248893%_)
                                            (let ((_%e4843748652%_
                                                   (gx#syntax-e
                                                    _%tl4838248893%_)))
                                              (let ((_%tl4843948659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4843748652%_)))
                                                    (_%hd4843848656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4843748652%_))))
                                                (if (gx#stx-null?
                                                     _%tl4843948659%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4837648873%_)
                                                        (let ((_%__splice7973079731%_
                                                               (gx#syntax-split-splice
                                                                _%tl4837648873%_
                                                                '0)))
                                                          (let ((_%tl4844248665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7973079731%_ '1)))
                        (_%target4844048662%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7973079731%_ '0))))
                    (if (gx#stx-null? _%tl4844248665%_)
                        (_%__match7990879909%_
                         _%e4837148856%_
                         _%hd4837248860%_
                         _%tl4837348863%_
                         _%e4837448866%_
                         _%hd4837548870%_
                         _%tl4837648873%_
                         _%e4837748876%_
                         _%hd4837848880%_
                         _%tl4837948883%_
                         _%e4838048886%_
                         _%hd4838148890%_
                         _%tl4838248893%_
                         _%e4843748652%_
                         _%hd4843848656%_
                         _%tl4843948659%_
                         _%__splice7973079731%_
                         _%target4844048662%_
                         _%tl4844248665%_)
                        (let () (declare (not safe)) (_%g4833848481%_)))))
                (let () (declare (not safe)) (_%g4833848481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833848481%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833848481%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84918_|
                                             _%hd4838148890%_)
                                            (if (gx#stx-pair? _%tl4838248893%_)
                                                (let ((_%e4846448528%_
                                                       (gx#syntax-e
                                                        _%tl4838248893%_)))
                                                  (let ((_%tl4846648535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4846448528%_)))
                                                        (_%hd4846548532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4846448528%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4846648535%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4837648873%_)
                                                            (let ((_%__splice7973479735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4837648873%_ '0)))
                      (let ((_%tl4846948541%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7973479735%_ '1)))
                            (_%target4846748538%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7973479735%_ '0))))
                        (if (gx#stx-null? _%tl4846948541%_)
                            (_%__match7995279953%_
                             _%e4837148856%_
                             _%hd4837248860%_
                             _%tl4837348863%_
                             _%e4837448866%_
                             _%hd4837548870%_
                             _%tl4837648873%_
                             _%e4837748876%_
                             _%hd4837848880%_
                             _%tl4837948883%_
                             _%e4838048886%_
                             _%hd4838148890%_
                             _%tl4838248893%_
                             _%e4846448528%_
                             _%hd4846548532%_
                             _%tl4846648535%_
                             _%__splice7973479735%_
                             _%target4846748538%_
                             _%tl4846948541%_)
                            (let () (declare (not safe)) (_%g4833848481%_)))))
                    (let () (declare (not safe)) (_%g4833848481%_)))
                (let () (declare (not safe)) (_%g4833848481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833848481%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833848481%_))))))
                            (let () (declare (not safe)) (_%g4833848481%_)))))
                     (_%__match7977679777%_
                      (lambda (_%e4834448978%_
                               _%hd4834548982%_
                               _%tl4834648985%_
                               _%e4834748988%_
                               _%hd4834848992%_
                               _%tl4834948995%_
                               _%e4835048998%_
                               _%hd4835149002%_
                               _%tl4835249005%_
                               _%e4835349008%_
                               _%hd4835449012%_
                               _%tl4835549015%_
                               _%e4835649018%_
                               _%hd4835749022%_
                               _%tl4835849025%_
                               _%__splice7971879719%_
                               _%target4835949028%_
                               _%tl4836149031%_)
                        (letrec ((_%loop4836249034%_
                                  (lambda (_%hd4836049038%_ _%body4836649041%_)
                                    (if (gx#stx-pair? _%hd4836049038%_)
                                        (let ((_%e4836349044%_
                                               (gx#syntax-e _%hd4836049038%_)))
                                          (let ((_%lp-tl4836549051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4836349044%_)))
                                                (_%lp-hd4836449048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4836349044%_))))
                                            (_%loop4836249034%_
                                             _%lp-tl4836549051%_
                                             (cons _%lp-hd4836449048%_
                                                   _%body4836649041%_))))
                                        (let ((_%body4836749054%_
                                               (reverse _%body4836649041%_)))
                                          (let ((_%L49058%_ _%body4836749054%_)
                                                (_%L49060%_ _%hd4835749022%_)
                                                (_%L49061%_ _%hd4835449012%_)
                                                (_%L49062%_ _%hd4835149002%_))
                                            (if (let ((__tmp84919
                                                       (gx#syntax-local-value
                                                        _%L49060%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84919))
                                                (_%__kont7971679717%_
                                                 _%L49058%_
                                                 _%L49060%_
                                                 _%L49061%_
                                                 _%L49062%_)
                                                (_%__match7980079801%_
                                                 _%e4834448978%_
                                                 _%hd4834548982%_
                                                 _%tl4834648985%_
                                                 _%e4834748988%_
                                                 _%hd4834848992%_
                                                 _%tl4834948995%_
                                                 _%e4835048998%_
                                                 _%hd4835149002%_
                                                 _%tl4835249005%_
                                                 _%e4835349008%_
                                                 _%hd4835449012%_
                                                 _%tl4835549015%_))))))))
                          (_%loop4836249034%_ _%target4835949028%_ '())))))
                (if (gx#stx-pair? _%__stx7971379714%_)
                    (let ((_%e4834448978%_ (gx#syntax-e _%__stx7971379714%_)))
                      (let ((_%tl4834648985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4834448978%_)))
                            (_%hd4834548982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4834448978%_))))
                        (if (gx#stx-pair? _%tl4834648985%_)
                            (let ((_%e4834748988%_
                                   (gx#syntax-e _%tl4834648985%_)))
                              (let ((_%tl4834948995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4834748988%_)))
                                    (_%hd4834848992%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4834748988%_))))
                                (if (gx#stx-pair? _%hd4834848992%_)
                                    (let ((_%e4835048998%_
                                           (gx#syntax-e _%hd4834848992%_)))
                                      (let ((_%tl4835249005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4835048998%_)))
                                            (_%hd4835149002%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4835048998%_))))
                                        (if (gx#stx-pair? _%tl4835249005%_)
                                            (let ((_%e4835349008%_
                                                   (gx#syntax-e
                                                    _%tl4835249005%_)))
                                              (let ((_%tl4835549015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4835349008%_)))
                                                    (_%hd4835449012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4835349008%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4835549015%_)
                                                    (let ((_%e4835649018%_
                                                           (gx#syntax-e
                                                            _%tl4835549015%_)))
                                                      (let ((_%tl4835849025%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4835649018%_)))
                    (_%hd4835749022%_
                     (let () (declare (not safe)) (##car _%e4835649018%_))))
                (if (gx#stx-null? _%tl4835849025%_)
                    (if (gx#stx-pair/null? _%tl4834948995%_)
                        (let ((_%__splice7971879719%_
                               (gx#syntax-split-splice _%tl4834948995%_ '0)))
                          (let ((_%tl4836149031%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7971879719%_ '1)))
                                (_%target4835949028%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7971879719%_ '0))))
                            (if (gx#stx-null? _%tl4836149031%_)
                                (_%__match7977679777%_
                                 _%e4834448978%_
                                 _%hd4834548982%_
                                 _%tl4834648985%_
                                 _%e4834748988%_
                                 _%hd4834848992%_
                                 _%tl4834948995%_
                                 _%e4835048998%_
                                 _%hd4835149002%_
                                 _%tl4835249005%_
                                 _%e4835349008%_
                                 _%hd4835449012%_
                                 _%tl4835549015%_
                                 _%e4835649018%_
                                 _%hd4835749022%_
                                 _%tl4835849025%_
                                 _%__splice7971879719%_
                                 _%target4835949028%_
                                 _%tl4836149031%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4833848481%_)))))
                        (let () (declare (not safe)) (_%g4833848481%_)))
                    (let () (declare (not safe)) (_%g4833848481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833848481%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833848481%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4833848481%_)))))
                            (let () (declare (not safe)) (_%g4833848481%_)))))
                    (let () (declare (not safe)) (_%g4833848481%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49456%_)
        (letrec ((_%expand-body49459%_
                  (lambda (_%var50460%_
                           _%Interface50462%_
                           _%body50463%_
                           _%checked?50464%_)
                    (let* ((_%type50466%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49456%_
                               _%Interface50462%_)))
                           (_%g5046950513%_
                            (lambda (_%g5047050509%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5047050509%_)))
                           (_%g5046850671%_
                            (lambda (_%g5047050517%_)
                              (if (gx#stx-pair? _%g5047050517%_)
                                  (let ((_%e5047850520%_
                                         (gx#syntax-e _%g5047050517%_)))
                                    (let ((_%hd5047950524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5047850520%_)))
                                          (_%tl5048050527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5047850520%_))))
                                      (if (gx#stx-pair? _%tl5048050527%_)
                                          (let ((_%e5048150530%_
                                                 (gx#syntax-e
                                                  _%tl5048050527%_)))
                                            (let ((_%hd5048250534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5048150530%_)))
                                                  (_%tl5048350537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5048150530%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5048350537%_)
                                                  (let ((_%e5048450540%_
                                                         (gx#syntax-e
                                                          _%tl5048350537%_)))
                                                    (let ((_%hd5048550544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5048450540%_)))
                                                          (_%tl5048650547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5048450540%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5048650547%_)
                                                          (let ((_%e5048750550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5048650547%_)))
                    (let ((_%hd5048850554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5048750550%_)))
                          (_%tl5048950557%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5048750550%_))))
                      (if (gx#stx-pair? _%tl5048950557%_)
                          (let ((_%e5049050560%_
                                 (gx#syntax-e _%tl5048950557%_)))
                            (let ((_%hd5049150564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5049050560%_)))
                                  (_%tl5049250567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5049050560%_))))
                              (if (gx#stx-pair? _%tl5049250567%_)
                                  (let ((_%e5049350570%_
                                         (gx#syntax-e _%tl5049250567%_)))
                                    (let ((_%hd5049450574%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049350570%_)))
                                          (_%tl5049550577%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049350570%_))))
                                      (if (gx#stx-pair? _%tl5049550577%_)
                                          (let ((_%e5049650580%_
                                                 (gx#syntax-e
                                                  _%tl5049550577%_)))
                                            (let ((_%hd5049750584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5049650580%_)))
                                                  (_%tl5049850587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5049650580%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5049750584%_)
                                                  (let ((_g84920_
                                                         (gx#syntax-split-splice
                                                          _%hd5049750584%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84920_)
                           (##values-length _g84920_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84921_ 2)))
                    (error "Context expects 2 values" _g84921_)))
              (let ((_%target5049950590%_
                     (let () (declare (not safe)) (##values-ref _g84920_ 0)))
                    (_%tl5050150593%_
                     (let () (declare (not safe)) (##values-ref _g84920_ 1))))
                (if (gx#stx-null? _%tl5050150593%_)
                    (letrec ((_%loop5050250596%_
                              (lambda (_%hd5050050600%_ _%body5050650603%_)
                                (if (gx#stx-pair? _%hd5050050600%_)
                                    (let ((_%e5050350606%_
                                           (gx#syntax-e _%hd5050050600%_)))
                                      (let ((_%lp-hd5050450610%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5050350606%_)))
                                            (_%lp-tl5050550613%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5050350606%_))))
                                        (_%loop5050250596%_
                                         _%lp-tl5050550613%_
                                         (cons _%lp-hd5050450610%_
                                               _%body5050650603%_))))
                                    (let ((_%body5050750616%_
                                           (reverse _%body5050650603%_)))
                                      (if (gx#stx-null? _%tl5049850587%_)
                                          ((lambda (_%L50620%_
                                                    _%L50622%_
                                                    _%L50623%_
                                                    _%L50624%_
                                                    _%L50625%_
                                                    _%L50626%_
                                                    _%L50627%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50624%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50625%_ '()))
                                         (cons _%L50624%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50627%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50624%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50626%_ '()))
                               (cons _%L50623%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50622%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5066250665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5066350668%_)
                      (cons _%g5066250665%_ _%g5066350668%_))
                    '()
                    _%L50620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5050750616%_
                                           _%hd5049450574%_
                                           _%hd5049150564%_
                                           _%hd5048850554%_
                                           _%hd5048550544%_
                                           _%hd5048250534%_
                                           _%hd5047950524%_)
                                          (_%g5046950513%_
                                           _%g5047050517%_)))))))
                      (_%loop5050250596%_ _%target5049950590%_ '()))
                    (_%g5046950513%_ _%g5047050517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5046950513%_
                                                   _%g5047050517%_))))
                                          (_%g5046950513%_ _%g5047050517%_))))
                                  (_%g5046950513%_ _%g5047050517%_))))
                          (_%g5046950513%_ _%g5047050517%_))))
                  (_%g5046950513%_ _%g5047050517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5046950513%_
                                                   _%g5047050517%_))))
                                          (_%g5046950513%_ _%g5047050517%_))))
                                  (_%g5046950513%_ _%g5047050517%_)))))
                      (_%g5046850671%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50466%_
                             (let ((__obj84745 _%type50466%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84745
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84745
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj84745
                                    'instance-type)))
                             _%var50460%_
                             _%checked?50464%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50463%_)))))
                 (_%expand49461%_
                  (lambda (_%var50259%_
                           _%Interface50261%_
                           _%body50262%_
                           _%checked?50263%_
                           _%checked-methods?50264%_
                           _%maybe?50265%_)
                    (let* ((_%g5026750275%_
                            (lambda (_%g5026850271%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5026850271%_)))
                           (_%g5026650452%_
                            (lambda (_%g5026850279%_)
                              ((lambda (_%L50282%_)
                                 (if _%checked?50263%_
                                     (if _%maybe?50265%_
                                         (let* ((_%g5029450309%_
                                                 (lambda (_%g5029550305%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5029550305%_)))
                                                (_%g5029350355%_
                                                 (lambda (_%g5029550313%_)
                                                   (if (gx#stx-pair?
                                                        _%g5029550313%_)
                                                       (let ((_%e5029850316%_
                                                              (gx#syntax-e
                                                               _%g5029550313%_)))
                                                         (let ((_%hd5029950320%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5029850316%_)))
                       (_%tl5030050323%_
                        (let () (declare (not safe)) (##cdr _%e5029850316%_))))
                   (if (gx#stx-pair? _%tl5030050323%_)
                       (let ((_%e5030150326%_ (gx#syntax-e _%tl5030050323%_)))
                         (let ((_%hd5030250330%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5030150326%_)))
                               (_%tl5030350333%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5030150326%_))))
                           (if (gx#stx-null? _%tl5030350333%_)
                               ((lambda (_%L50336%_ _%L50338%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50338%_
                                                    (cons (cons _%L50336%_
                                                                (cons _%L50338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50338%_
                                                                (cons _%L50282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50338%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5030250330%_
                                _%hd5029950320%_)
                               (_%g5029450309%_ _%g5029550313%_))))
                       (_%g5029450309%_ _%g5029550313%_))))
               (_%g5029450309%_ _%g5029550313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5029350355%_
                                            (list _%var50259%_
                                                  _%Interface50261%_)))
                                         (let* ((_%g5035950374%_
                                                 (lambda (_%g5036050370%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5036050370%_)))
                                                (_%g5035850418%_
                                                 (lambda (_%g5036050378%_)
                                                   (if (gx#stx-pair?
                                                        _%g5036050378%_)
                                                       (let ((_%e5036350381%_
                                                              (gx#syntax-e
                                                               _%g5036050378%_)))
                                                         (let ((_%hd5036450385%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5036350381%_)))
                       (_%tl5036550388%_
                        (let () (declare (not safe)) (##cdr _%e5036350381%_))))
                   (if (gx#stx-pair? _%tl5036550388%_)
                       (let ((_%e5036650391%_ (gx#syntax-e _%tl5036550388%_)))
                         (let ((_%hd5036750395%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5036650391%_)))
                               (_%tl5036850398%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5036650391%_))))
                           (if (gx#stx-null? _%tl5036850398%_)
                               ((lambda (_%L50401%_ _%L50403%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50403%_
                                                    (cons (cons _%L50401%_
                                                                (cons _%L50403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50282%_ '()))))
                                _%hd5036750395%_
                                _%hd5036450385%_)
                               (_%g5035950374%_ _%g5036050378%_))))
                       (_%g5035950374%_ _%g5036050378%_))))
               (_%g5035950374%_ _%g5036050378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5035850418%_
                                            (list _%var50259%_
                                                  _%Interface50261%_))))
                                     (if _%maybe?50265%_
                                         (let* ((_%g5042250430%_
                                                 (lambda (_%g5042350426%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5042350426%_)))
                                                (_%g5042150448%_
                                                 (lambda (_%g5042350434%_)
                                                   ((lambda (_%L50437%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50282%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50437%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5042350434%_))))
                                           (_%g5042150448%_ _%var50259%_))
                                         _%L50282%_)))
                               _%g5026850279%_))))
                      (_%g5026650452%_
                       (_%expand-body49459%_
                        _%var50259%_
                        _%Interface50261%_
                        _%body50262%_
                        (let ((_%$e50456%_ _%checked?50263%_))
                          (if _%$e50456%_
                              _%$e50456%_
                              _%checked-methods?50264%_))))))))
          (let* ((_%__stx7995579956%_ _%stx49456%_)
                 (_%g4946749610%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7995579956%_))))
            (let ((_%__kont7995879959%_
                   (lambda (_%L50187%_ _%L50189%_ _%L50190%_ _%L50191%_)
                     (let* ((_%g5021650224%_
                             (lambda (_%g5021750220%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5021750220%_)))
                            (_%g5021550251%_
                             (lambda (_%g5021750228%_)
                               ((lambda (_%L50231%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50191%_
                                                    (cons _%L50190%_
                                                          (cons _%L50231%_
                                                                '())))
                                              (foldr (lambda (_%g5024250245%_
                                                              _%g5024350248%_)
                                                       (cons _%g5024250245%_
                                                             _%g5024350248%_))
                                                     '()
                                                     _%L50187%_))))
                                _%g5021750228%_))))
                       (_%g5021550251%_
                        (let ((__obj84746 (gx#syntax-local-value _%L50189%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84746
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84746
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84746
                               'identifier)))))))
                  (_%__kont7996279963%_
                   (lambda (_%L50065%_ _%L50067%_ _%L50068%_)
                     (_%expand49461%_
                      _%L50068%_
                      _%L50067%_
                      (foldr (lambda (_%g5009150094%_ _%g5009250097%_)
                               (cons _%g5009150094%_ _%g5009250097%_))
                             '()
                             _%L50065%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7996679967%_
                   (lambda (_%L49943%_ _%L49945%_ _%L49946%_)
                     (_%expand49461%_
                      _%L49946%_
                      _%L49945%_
                      (foldr (lambda (_%g4996949972%_ _%g4997049975%_)
                               (cons _%g4996949972%_ _%g4997049975%_))
                             '()
                             _%L49943%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7997079971%_
                   (lambda (_%L49821%_ _%L49823%_ _%L49824%_)
                     (_%expand49461%_
                      _%L49824%_
                      _%L49823%_
                      (foldr (lambda (_%g4984749850%_ _%g4984849853%_)
                               (cons _%g4984749850%_ _%g4984849853%_))
                             '()
                             _%L49821%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7997479975%_
                   (lambda (_%L49697%_ _%L49699%_ _%L49700%_)
                     (_%expand49461%_
                      _%L49700%_
                      _%L49699%_
                      (foldr (lambda (_%g4972549728%_ _%g4972649731%_)
                               (cons _%g4972549728%_ _%g4972649731%_))
                             '()
                             _%L49697%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8019480195%_
                      (lambda (_%e4958149617%_
                               _%hd4958249621%_
                               _%tl4958349624%_
                               _%e4958449627%_
                               _%hd4958549631%_
                               _%tl4958649634%_
                               _%e4958749637%_
                               _%hd4958849641%_
                               _%tl4958949644%_
                               _%e4959049647%_
                               _%hd4959149651%_
                               _%tl4959249654%_
                               _%e4959349657%_
                               _%hd4959449661%_
                               _%tl4959549664%_
                               _%__splice7997679977%_
                               _%target4959649667%_
                               _%tl4959849670%_)
                        (letrec ((_%loop4959949673%_
                                  (lambda (_%hd4959749677%_ _%body4960349680%_)
                                    (if (gx#stx-pair? _%hd4959749677%_)
                                        (let ((_%e4960049683%_
                                               (gx#syntax-e _%hd4959749677%_)))
                                          (let ((_%lp-tl4960249690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4960049683%_)))
                                                (_%lp-hd4960149687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4960049683%_))))
                                            (_%loop4959949673%_
                                             _%lp-tl4960249690%_
                                             (cons _%lp-hd4960149687%_
                                                   _%body4960349680%_))))
                                        (let ((_%body4960449693%_
                                               (reverse _%body4960349680%_)))
                                          (let ((_%L49697%_ _%body4960449693%_)
                                                (_%L49699%_ _%hd4959449661%_)
                                                (_%L49700%_ _%hd4958849641%_))
                                            (if (and (gx#identifier?
                                                      _%L49700%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49699%_)))
                                                (_%__kont7997479975%_
                                                 _%L49697%_
                                                 _%L49699%_
                                                 _%L49700%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))))))))
                          (_%loop4959949673%_ _%target4959649667%_ '()))))
                     (_%__match8015080151%_
                      (lambda (_%e4955449741%_
                               _%hd4955549745%_
                               _%tl4955649748%_
                               _%e4955749751%_
                               _%hd4955849755%_
                               _%tl4955949758%_
                               _%e4956049761%_
                               _%hd4956149765%_
                               _%tl4956249768%_
                               _%e4956349771%_
                               _%hd4956449775%_
                               _%tl4956549778%_
                               _%e4956649781%_
                               _%hd4956749785%_
                               _%tl4956849788%_
                               _%__splice7997279973%_
                               _%target4956949791%_
                               _%tl4957149794%_)
                        (letrec ((_%loop4957249797%_
                                  (lambda (_%hd4957049801%_ _%body4957649804%_)
                                    (if (gx#stx-pair? _%hd4957049801%_)
                                        (let ((_%e4957349807%_
                                               (gx#syntax-e _%hd4957049801%_)))
                                          (let ((_%lp-tl4957549814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4957349807%_)))
                                                (_%lp-hd4957449811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4957349807%_))))
                                            (_%loop4957249797%_
                                             _%lp-tl4957549814%_
                                             (cons _%lp-hd4957449811%_
                                                   _%body4957649804%_))))
                                        (let ((_%body4957749817%_
                                               (reverse _%body4957649804%_)))
                                          (let ((_%L49821%_ _%body4957749817%_)
                                                (_%L49823%_ _%hd4956749785%_)
                                                (_%L49824%_ _%hd4956149765%_))
                                            (if (and (gx#identifier?
                                                      _%L49824%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49823%_)))
                                                (_%__kont7997079971%_
                                                 _%L49821%_
                                                 _%L49823%_
                                                 _%L49824%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))))))))
                          (_%loop4957249797%_ _%target4956949791%_ '()))))
                     (_%__match8010680107%_
                      (lambda (_%e4952749863%_
                               _%hd4952849867%_
                               _%tl4952949870%_
                               _%e4953049873%_
                               _%hd4953149877%_
                               _%tl4953249880%_
                               _%e4953349883%_
                               _%hd4953449887%_
                               _%tl4953549890%_
                               _%e4953649893%_
                               _%hd4953749897%_
                               _%tl4953849900%_
                               _%e4953949903%_
                               _%hd4954049907%_
                               _%tl4954149910%_
                               _%__splice7996879969%_
                               _%target4954249913%_
                               _%tl4954449916%_)
                        (letrec ((_%loop4954549919%_
                                  (lambda (_%hd4954349923%_ _%body4954949926%_)
                                    (if (gx#stx-pair? _%hd4954349923%_)
                                        (let ((_%e4954649929%_
                                               (gx#syntax-e _%hd4954349923%_)))
                                          (let ((_%lp-tl4954849936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4954649929%_)))
                                                (_%lp-hd4954749933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4954649929%_))))
                                            (_%loop4954549919%_
                                             _%lp-tl4954849936%_
                                             (cons _%lp-hd4954749933%_
                                                   _%body4954949926%_))))
                                        (let ((_%body4955049939%_
                                               (reverse _%body4954949926%_)))
                                          (let ((_%L49943%_ _%body4955049939%_)
                                                (_%L49945%_ _%hd4954049907%_)
                                                (_%L49946%_ _%hd4953449887%_))
                                            (if (and (gx#identifier?
                                                      _%L49946%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49945%_)))
                                                (_%__kont7996679967%_
                                                 _%L49943%_
                                                 _%L49945%_
                                                 _%L49946%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))))))))
                          (_%loop4954549919%_ _%target4954249913%_ '()))))
                     (_%__match8006280063%_
                      (lambda (_%e4950049985%_
                               _%hd4950149989%_
                               _%tl4950249992%_
                               _%e4950349995%_
                               _%hd4950449999%_
                               _%tl4950550002%_
                               _%e4950650005%_
                               _%hd4950750009%_
                               _%tl4950850012%_
                               _%e4950950015%_
                               _%hd4951050019%_
                               _%tl4951150022%_
                               _%e4951250025%_
                               _%hd4951350029%_
                               _%tl4951450032%_
                               _%__splice7996479965%_
                               _%target4951550035%_
                               _%tl4951750038%_)
                        (letrec ((_%loop4951850041%_
                                  (lambda (_%hd4951650045%_ _%body4952250048%_)
                                    (if (gx#stx-pair? _%hd4951650045%_)
                                        (let ((_%e4951950051%_
                                               (gx#syntax-e _%hd4951650045%_)))
                                          (let ((_%lp-tl4952150058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951950051%_)))
                                                (_%lp-hd4952050055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951950051%_))))
                                            (_%loop4951850041%_
                                             _%lp-tl4952150058%_
                                             (cons _%lp-hd4952050055%_
                                                   _%body4952250048%_))))
                                        (let ((_%body4952350061%_
                                               (reverse _%body4952250048%_)))
                                          (let ((_%L50065%_ _%body4952350061%_)
                                                (_%L50067%_ _%hd4951350029%_)
                                                (_%L50068%_ _%hd4950750009%_))
                                            (if (and (gx#identifier?
                                                      _%L50068%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50067%_)))
                                                (_%__kont7996279963%_
                                                 _%L50065%_
                                                 _%L50067%_
                                                 _%L50068%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))))))))
                          (_%loop4951850041%_ _%target4951550035%_ '()))))
                     (_%__match8004280043%_
                      (lambda (_%e4950049985%_
                               _%hd4950149989%_
                               _%tl4950249992%_
                               _%e4950349995%_
                               _%hd4950449999%_
                               _%tl4950550002%_
                               _%e4950650005%_
                               _%hd4950750009%_
                               _%tl4950850012%_
                               _%e4950950015%_
                               _%hd4951050019%_
                               _%tl4951150022%_)
                        (if (gx#identifier? _%hd4951050019%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84922_|
                                 _%hd4951050019%_)
                                (if (gx#stx-pair? _%tl4951150022%_)
                                    (let ((_%e4951250025%_
                                           (gx#syntax-e _%tl4951150022%_)))
                                      (let ((_%tl4951450032%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4951250025%_)))
                                            (_%hd4951350029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4951250025%_))))
                                        (if (gx#stx-null? _%tl4951450032%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4950550002%_)
                                                (let ((_%__splice7996479965%_
                                                       (gx#syntax-split-splice
                                                        _%tl4950550002%_
                                                        '0)))
                                                  (let ((_%tl4951750038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7996479965%_
                                                            '1)))
                                                        (_%target4951550035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7996479965%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4951750038%_)
                                                        (_%__match8006280063%_
                                                         _%e4950049985%_
                                                         _%hd4950149989%_
                                                         _%tl4950249992%_
                                                         _%e4950349995%_
                                                         _%hd4950449999%_
                                                         _%tl4950550002%_
                                                         _%e4950650005%_
                                                         _%hd4950750009%_
                                                         _%tl4950850012%_
                                                         _%e4950950015%_
                                                         _%hd4951050019%_
                                                         _%tl4951150022%_
                                                         _%e4951250025%_
                                                         _%hd4951350029%_
                                                         _%tl4951450032%_
                                                         _%__splice7996479965%_
                                                         _%target4951550035%_
                                                         _%tl4951750038%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4946749610%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946749610%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4946749610%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84923_|
                                     _%hd4951050019%_)
                                    (if (gx#stx-pair? _%tl4951150022%_)
                                        (let ((_%e4953949903%_
                                               (gx#syntax-e _%tl4951150022%_)))
                                          (let ((_%tl4954149910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953949903%_)))
                                                (_%hd4954049907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953949903%_))))
                                            (if (gx#stx-null? _%tl4954149910%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4950550002%_)
                                                    (let ((_%__splice7996879969%_
                                                           (gx#syntax-split-splice
                                                            _%tl4950550002%_
                                                            '0)))
                                                      (let ((_%tl4954449916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7996879969%_ '1)))
                    (_%target4954249913%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7996879969%_ '0))))
                (if (gx#stx-null? _%tl4954449916%_)
                    (_%__match8010680107%_
                     _%e4950049985%_
                     _%hd4950149989%_
                     _%tl4950249992%_
                     _%e4950349995%_
                     _%hd4950449999%_
                     _%tl4950550002%_
                     _%e4950650005%_
                     _%hd4950750009%_
                     _%tl4950850012%_
                     _%e4950950015%_
                     _%hd4951050019%_
                     _%tl4951150022%_
                     _%e4953949903%_
                     _%hd4954049907%_
                     _%tl4954149910%_
                     _%__splice7996879969%_
                     _%target4954249913%_
                     _%tl4954449916%_)
                    (let () (declare (not safe)) (_%g4946749610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946749610%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4946749610%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84924_|
                                         _%hd4951050019%_)
                                        (if (gx#stx-pair? _%tl4951150022%_)
                                            (let ((_%e4956649781%_
                                                   (gx#syntax-e
                                                    _%tl4951150022%_)))
                                              (let ((_%tl4956849788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4956649781%_)))
                                                    (_%hd4956749785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4956649781%_))))
                                                (if (gx#stx-null?
                                                     _%tl4956849788%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4950550002%_)
                                                        (let ((_%__splice7997279973%_
                                                               (gx#syntax-split-splice
                                                                _%tl4950550002%_
                                                                '0)))
                                                          (let ((_%tl4957149794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7997279973%_ '1)))
                        (_%target4956949791%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7997279973%_ '0))))
                    (if (gx#stx-null? _%tl4957149794%_)
                        (_%__match8015080151%_
                         _%e4950049985%_
                         _%hd4950149989%_
                         _%tl4950249992%_
                         _%e4950349995%_
                         _%hd4950449999%_
                         _%tl4950550002%_
                         _%e4950650005%_
                         _%hd4950750009%_
                         _%tl4950850012%_
                         _%e4950950015%_
                         _%hd4951050019%_
                         _%tl4951150022%_
                         _%e4956649781%_
                         _%hd4956749785%_
                         _%tl4956849788%_
                         _%__splice7997279973%_
                         _%target4956949791%_
                         _%tl4957149794%_)
                        (let () (declare (not safe)) (_%g4946749610%_)))))
                (let () (declare (not safe)) (_%g4946749610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946749610%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946749610%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84925_|
                                             _%hd4951050019%_)
                                            (if (gx#stx-pair? _%tl4951150022%_)
                                                (let ((_%e4959349657%_
                                                       (gx#syntax-e
                                                        _%tl4951150022%_)))
                                                  (let ((_%tl4959549664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4959349657%_)))
                                                        (_%hd4959449661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4959349657%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4959549664%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4950550002%_)
                                                            (let ((_%__splice7997679977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4950550002%_ '0)))
                      (let ((_%tl4959849670%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7997679977%_ '1)))
                            (_%target4959649667%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7997679977%_ '0))))
                        (if (gx#stx-null? _%tl4959849670%_)
                            (_%__match8019480195%_
                             _%e4950049985%_
                             _%hd4950149989%_
                             _%tl4950249992%_
                             _%e4950349995%_
                             _%hd4950449999%_
                             _%tl4950550002%_
                             _%e4950650005%_
                             _%hd4950750009%_
                             _%tl4950850012%_
                             _%e4950950015%_
                             _%hd4951050019%_
                             _%tl4951150022%_
                             _%e4959349657%_
                             _%hd4959449661%_
                             _%tl4959549664%_
                             _%__splice7997679977%_
                             _%target4959649667%_
                             _%tl4959849670%_)
                            (let () (declare (not safe)) (_%g4946749610%_)))))
                    (let () (declare (not safe)) (_%g4946749610%_)))
                (let () (declare (not safe)) (_%g4946749610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946749610%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946749610%_))))))
                            (let () (declare (not safe)) (_%g4946749610%_)))))
                     (_%__match8001880019%_
                      (lambda (_%e4947350107%_
                               _%hd4947450111%_
                               _%tl4947550114%_
                               _%e4947650117%_
                               _%hd4947750121%_
                               _%tl4947850124%_
                               _%e4947950127%_
                               _%hd4948050131%_
                               _%tl4948150134%_
                               _%e4948250137%_
                               _%hd4948350141%_
                               _%tl4948450144%_
                               _%e4948550147%_
                               _%hd4948650151%_
                               _%tl4948750154%_
                               _%__splice7996079961%_
                               _%target4948850157%_
                               _%tl4949050160%_)
                        (letrec ((_%loop4949150163%_
                                  (lambda (_%hd4948950167%_ _%body4949550170%_)
                                    (if (gx#stx-pair? _%hd4948950167%_)
                                        (let ((_%e4949250173%_
                                               (gx#syntax-e _%hd4948950167%_)))
                                          (let ((_%lp-tl4949450180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4949250173%_)))
                                                (_%lp-hd4949350177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4949250173%_))))
                                            (_%loop4949150163%_
                                             _%lp-tl4949450180%_
                                             (cons _%lp-hd4949350177%_
                                                   _%body4949550170%_))))
                                        (let ((_%body4949650183%_
                                               (reverse _%body4949550170%_)))
                                          (let ((_%L50187%_ _%body4949650183%_)
                                                (_%L50189%_ _%hd4948650151%_)
                                                (_%L50190%_ _%hd4948350141%_)
                                                (_%L50191%_ _%hd4948050131%_))
                                            (if (let ((__tmp84926
                                                       (gx#syntax-local-value
                                                        _%L50189%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84926))
                                                (_%__kont7995879959%_
                                                 _%L50187%_
                                                 _%L50189%_
                                                 _%L50190%_
                                                 _%L50191%_)
                                                (_%__match8004280043%_
                                                 _%e4947350107%_
                                                 _%hd4947450111%_
                                                 _%tl4947550114%_
                                                 _%e4947650117%_
                                                 _%hd4947750121%_
                                                 _%tl4947850124%_
                                                 _%e4947950127%_
                                                 _%hd4948050131%_
                                                 _%tl4948150134%_
                                                 _%e4948250137%_
                                                 _%hd4948350141%_
                                                 _%tl4948450144%_))))))))
                          (_%loop4949150163%_ _%target4948850157%_ '())))))
                (if (gx#stx-pair? _%__stx7995579956%_)
                    (let ((_%e4947350107%_ (gx#syntax-e _%__stx7995579956%_)))
                      (let ((_%tl4947550114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4947350107%_)))
                            (_%hd4947450111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4947350107%_))))
                        (if (gx#stx-pair? _%tl4947550114%_)
                            (let ((_%e4947650117%_
                                   (gx#syntax-e _%tl4947550114%_)))
                              (let ((_%tl4947850124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4947650117%_)))
                                    (_%hd4947750121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4947650117%_))))
                                (if (gx#stx-pair? _%hd4947750121%_)
                                    (let ((_%e4947950127%_
                                           (gx#syntax-e _%hd4947750121%_)))
                                      (let ((_%tl4948150134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4947950127%_)))
                                            (_%hd4948050131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4947950127%_))))
                                        (if (gx#stx-pair? _%tl4948150134%_)
                                            (let ((_%e4948250137%_
                                                   (gx#syntax-e
                                                    _%tl4948150134%_)))
                                              (let ((_%tl4948450144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4948250137%_)))
                                                    (_%hd4948350141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4948250137%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4948450144%_)
                                                    (let ((_%e4948550147%_
                                                           (gx#syntax-e
                                                            _%tl4948450144%_)))
                                                      (let ((_%tl4948750154%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4948550147%_)))
                    (_%hd4948650151%_
                     (let () (declare (not safe)) (##car _%e4948550147%_))))
                (if (gx#stx-null? _%tl4948750154%_)
                    (if (gx#stx-pair/null? _%tl4947850124%_)
                        (let ((_%__splice7996079961%_
                               (gx#syntax-split-splice _%tl4947850124%_ '0)))
                          (let ((_%tl4949050160%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7996079961%_ '1)))
                                (_%target4948850157%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7996079961%_ '0))))
                            (if (gx#stx-null? _%tl4949050160%_)
                                (_%__match8001880019%_
                                 _%e4947350107%_
                                 _%hd4947450111%_
                                 _%tl4947550114%_
                                 _%e4947650117%_
                                 _%hd4947750121%_
                                 _%tl4947850124%_
                                 _%e4947950127%_
                                 _%hd4948050131%_
                                 _%tl4948150134%_
                                 _%e4948250137%_
                                 _%hd4948350141%_
                                 _%tl4948450144%_
                                 _%e4948550147%_
                                 _%hd4948650151%_
                                 _%tl4948750154%_
                                 _%__splice7996079961%_
                                 _%target4948850157%_
                                 _%tl4949050160%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4946749610%_)))))
                        (let () (declare (not safe)) (_%g4946749610%_)))
                    (let () (declare (not safe)) (_%g4946749610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946749610%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946749610%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4946749610%_)))))
                            (let () (declare (not safe)) (_%g4946749610%_)))))
                    (let () (declare (not safe)) (_%g4946749610%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50681%_)
        (let* ((_%__stx8019780198%_ _%stx50681%_)
               (_%g5068650746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8019780198%_))))
          (let ((_%__kont8020080201%_
                 (lambda (_%L51308%_ _%L51310%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51310%_ '()))
                               (foldr (lambda (_%g5132651329%_ _%g5132751332%_)
                                        (cons _%g5132651329%_ _%g5132751332%_))
                                      '()
                                      _%L51308%_)))))
                (_%__kont8020480205%_
                 (lambda (_%L50894%_ _%L50896%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50896%_)
                       (let* ((_%g5091650923%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50681%_
                                _%L50896%_))
                              (_%E5091850929%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5091650923%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5091951227%_
                               (lambda (_%parts50933%_ _%var50935%_)
                                 (let ((_%$e50937%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50935%_))))
                                   (if _%$e50937%_
                                       ((lambda (_%te50941%_)
                                          (let _%loop50944%_ ((_%parts50947%_
                                                               _%parts50933%_)
                                                              (_%type50949%_
                                                               (##direct-structure-ref
                                                                _%te50941%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50950%_
                                                               _%var50935%_)
                                                              (_%checked-method?50951%_
                                                               (##direct-structure-ref
                                                                _%te50941%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50952%_
                                                               '#f))
                                            (let* ((_%parts5095350961%_
                                                    _%parts50947%_)
                                                   (_%else5095551022%_
                                                    (lambda ()
                                                      (let* ((_%g5097350981%_
                                                              (lambda (_%g5097450977%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5097450977%_)))
                     (_%g5097251018%_
                      (lambda (_%g5097450985%_)
                        ((lambda (_%L50988%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50988%_
                                       (foldr (lambda (_%g5100951012%_
                                                       _%g5101051015%_)
                                                (cons _%g5100951012%_
                                                      _%g5101051015%_))
                                              '()
                                              _%L50894%_))))
                         _%g5097450985%_))))
                (_%g5097251018%_ _%object50950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5095751201%_
                                                    (lambda (_%rest51026%_
                                                             _%part51028%_)
                                                      (if (and (not _%nil-check?50952%_)
                                                               (let ((__tmp84927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51028%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp84927)))
                  (let ((_%str51032%_ (symbol->string _%part51028%_)))
                    (_%loop50944%_
                     (cons (let ((__tmp84928
                                  (substring
                                   _%str51032%_
                                   '1
                                   (string-length _%str51032%_))))
                             (declare (not safe))
                             (##string->symbol __tmp84928))
                           _%rest51026%_)
                     _%type50949%_
                     _%object50950%_
                     _%checked-method?50951%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50949%_))
                      (let* ((_%g5103751052%_
                              (lambda (_%g5103851048%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5103851048%_)))
                             (_%g5103651121%_
                              (lambda (_%g5103851056%_)
                                (if (gx#stx-pair? _%g5103851056%_)
                                    (let ((_%e5104151059%_
                                           (gx#syntax-e _%g5103851056%_)))
                                      (let ((_%hd5104251063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5104151059%_)))
                                            (_%tl5104351066%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5104151059%_))))
                                        (if (gx#stx-pair? _%tl5104351066%_)
                                            (let ((_%e5104451069%_
                                                   (gx#syntax-e
                                                    _%tl5104351066%_)))
                                              (let ((_%hd5104551073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5104451069%_)))
                                                    (_%tl5104651076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5104451069%_))))
                                                (if (gx#stx-null?
                                                     _%tl5104651076%_)
                                                    ((lambda (_%L51079%_
                                                              _%L51081%_)
                                                       (if (null? _%rest51026%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51079%_ (cons _%L51081%_ '()))
                               (foldr (lambda (_%g5110051103%_ _%g5110151106%_)
                                        (cons _%g5110051103%_ _%g5110151106%_))
                                      '()
                                      _%L50894%_)))
                   (let ((_%$e51109%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50949%_
                           _%part51028%_)))
                     (if _%$e51109%_
                         ((lambda (_%slot-type51113%_)
                            (let ((_%slot-type51116%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50681%_
                                      _%slot-type51113%_))))
                              (_%loop50944%_
                               _%rest51026%_
                               _%slot-type51116%_
                               (cons _%L51079%_ (cons _%L51081%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50949%_
                                _%part51028%_)
                               '#f)))
                          _%$e51109%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50681%_
                          _%L50896%_
                          _%part51028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5104551073%_
                                                     _%hd5104251063%_)
                                                    (_%g5103751052%_
                                                     _%g5103851056%_))))
                                            (_%g5103751052%_
                                             _%g5103851056%_))))
                                    (_%g5103751052%_ _%g5103851056%_)))))
                        (_%g5103651121%_
                         (list (if _%nil-check?50952%_
                                   (cons 'check-nil!
                                         (cons _%object50950%_ '()))
                                   _%object50950%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50681%_
                                _%type50949%_
                                _%part51028%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50949%_))
                          (if (null? _%rest51026%_)
                              (let* ((_%g5112751142%_
                                      (lambda (_%g5112851138%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5112851138%_)))
                                     (_%g5112651195%_
                                      (lambda (_%g5112851146%_)
                                        (if (gx#stx-pair? _%g5112851146%_)
                                            (let ((_%e5113151149%_
                                                   (gx#syntax-e
                                                    _%g5112851146%_)))
                                              (let ((_%hd5113251153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5113151149%_)))
                                                    (_%tl5113351156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5113151149%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5113351156%_)
                                                    (let ((_%e5113451159%_
                                                           (gx#syntax-e
                                                            _%tl5113351156%_)))
                                                      (let ((_%hd5113551163%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5113451159%_)))
                    (_%tl5113651166%_
                     (let () (declare (not safe)) (##cdr _%e5113451159%_))))
                (if (gx#stx-null? _%tl5113651166%_)
                    ((lambda (_%L51169%_ _%L51171%_)
                       (cons _%L51169%_
                             (cons _%L51171%_
                                   (foldr (lambda (_%g5118651189%_
                                                   _%g5118751192%_)
                                            (cons _%g5118651189%_
                                                  _%g5118751192%_))
                                          '()
                                          _%L50894%_))))
                     _%hd5113551163%_
                     _%hd5113251153%_)
                    (_%g5112751142%_ _%g5112851146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5112751142%_
                                                     _%g5112851146%_))))
                                            (_%g5112751142%_
                                             _%g5112851146%_)))))
                                (_%g5112651195%_
                                 (list (if _%nil-check?50952%_
                                           (cons 'check-nil!
                                                 (cons _%object50950%_ '()))
                                           _%object50950%_)
                                       (gx#stx-identifier
                                        _%L50896%_
                                        (if _%checked-method?50951%_ '"" '"&")
                                        (let ((__obj84747 _%type50949%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj84747
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj84747
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj84747
                                               'name)))
                                        '"-"
                                        _%part51028%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50681%_
                               _%L50896%_
                               _%part51028%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50681%_
                           _%type50949%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5095350961%_)
                                                  (let ((_%hd5095851205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5095350961%_)))
                                                        (_%tl5095951208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5095350961%_))))
                                                    (let* ((_%part51211%_
                                                            _%hd5095851205%_)
                                                           (_%rest51214%_
                                                            _%tl5095951208%_))
                                                      (_%K5095751201%_
                                                       _%rest51214%_
                                                       _%part51211%_)))
                                                  (_%else5095551022%_)))))
                                        _%$e50937%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50896%_
                                                   (foldr (lambda (_%g5121851221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5121951224%_)
                    (cons _%g5121851221%_ _%g5121951224%_))
                  '()
                  _%L50894%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5091650923%_)
                             (let ((_%hd5092051231%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5091650923%_)))
                                   (_%tl5092151234%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5091650923%_))))
                               (let* ((_%var51237%_ _%hd5092051231%_)
                                      (_%parts51240%_ _%tl5092151234%_))
                                 (_%K5091951227%_
                                  _%parts51240%_
                                  _%var51237%_)))
                             (_%E5091850929%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50896%_
                                   (foldr (lambda (_%g5124251245%_
                                                   _%g5124351248%_)
                                            (cons _%g5124251245%_
                                                  _%g5124351248%_))
                                          '()
                                          _%L50894%_))))))
                (_%__kont8020880209%_
                 (lambda (_%L50793%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5080850811%_ _%g5080950814%_)
                                  (cons _%g5080850811%_ _%g5080950814%_))
                                '()
                                _%L50793%_)))))
            (let* ((_%__match8028480285%_
                    (lambda (_%e5072950753%_
                             _%hd5073050757%_
                             _%tl5073150760%_
                             _%__splice8021080211%_
                             _%target5073250763%_
                             _%tl5073450766%_)
                      (letrec ((_%loop5073550769%_
                                (lambda (_%hd5073350773%_ _%arg5073950776%_)
                                  (if (gx#stx-pair? _%hd5073350773%_)
                                      (let ((_%e5073650779%_
                                             (gx#syntax-e _%hd5073350773%_)))
                                        (let ((_%lp-tl5073850786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073650779%_)))
                                              (_%lp-hd5073750783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073650779%_))))
                                          (_%loop5073550769%_
                                           _%lp-tl5073850786%_
                                           (cons _%lp-hd5073750783%_
                                                 _%arg5073950776%_))))
                                      (let ((_%arg5074050789%_
                                             (reverse _%arg5073950776%_)))
                                        (_%__kont8020880209%_
                                         _%arg5074050789%_))))))
                        (_%loop5073550769%_ _%target5073250763%_ '()))))
                   (_%__match8027080271%_
                    (lambda (_%e5070750824%_
                             _%hd5070850828%_
                             _%tl5070950831%_
                             _%e5071050834%_
                             _%hd5071150838%_
                             _%tl5071250841%_
                             _%e5071350844%_
                             _%hd5071450848%_
                             _%tl5071550851%_
                             _%e5071650854%_
                             _%hd5071750858%_
                             _%tl5071850861%_
                             _%__splice8020680207%_
                             _%target5071950864%_
                             _%tl5072150867%_)
                      (letrec ((_%loop5072250870%_
                                (lambda (_%hd5072050874%_ _%rand5072650877%_)
                                  (if (gx#stx-pair? _%hd5072050874%_)
                                      (let ((_%e5072350880%_
                                             (gx#syntax-e _%hd5072050874%_)))
                                        (let ((_%lp-tl5072550887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5072350880%_)))
                                              (_%lp-hd5072450884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5072350880%_))))
                                          (_%loop5072250870%_
                                           _%lp-tl5072550887%_
                                           (cons _%lp-hd5072450884%_
                                                 _%rand5072650877%_))))
                                      (let ((_%rand5072750890%_
                                             (reverse _%rand5072650877%_)))
                                        (_%__kont8020480205%_
                                         _%rand5072750890%_
                                         _%hd5071750858%_))))))
                        (_%loop5072250870%_ _%target5071950864%_ '()))))
                   (_%__match8024480245%_
                    (lambda (_%e5070750824%_
                             _%hd5070850828%_
                             _%tl5070950831%_
                             _%e5071050834%_
                             _%hd5071150838%_
                             _%tl5071250841%_)
                      (if (gx#stx-pair? _%hd5071150838%_)
                          (let ((_%e5071350844%_
                                 (gx#syntax-e _%hd5071150838%_)))
                            (let ((_%tl5071550851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5071350844%_)))
                                  (_%hd5071450848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5071350844%_))))
                              (if (gx#identifier? _%hd5071450848%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84929_|
                                       _%hd5071450848%_)
                                      (if (gx#stx-pair? _%tl5071550851%_)
                                          (let ((_%e5071650854%_
                                                 (gx#syntax-e
                                                  _%tl5071550851%_)))
                                            (let ((_%tl5071850861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5071650854%_)))
                                                  (_%hd5071750858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5071650854%_))))
                                              (if (gx#stx-null?
                                                   _%tl5071850861%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5071250841%_)
                                                      (let ((_%__splice8020680207%_
                                                             (gx#syntax-split-splice
                                                              _%tl5071250841%_
                                                              '0)))
                                                        (let ((_%tl5072150867%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8020680207%_ '1)))
                      (_%target5071950864%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8020680207%_ '0))))
                  (if (gx#stx-null? _%tl5072150867%_)
                      (_%__match8027080271%_
                       _%e5070750824%_
                       _%hd5070850828%_
                       _%tl5070950831%_
                       _%e5071050834%_
                       _%hd5071150838%_
                       _%tl5071250841%_
                       _%e5071350844%_
                       _%hd5071450848%_
                       _%tl5071550851%_
                       _%e5071650854%_
                       _%hd5071750858%_
                       _%tl5071850861%_
                       _%__splice8020680207%_
                       _%target5071950864%_
                       _%tl5072150867%_)
                      (if (gx#stx-pair/null? _%tl5070950831%_)
                          (let ((_%__splice8021080211%_
                                 (gx#syntax-split-splice _%tl5070950831%_ '0)))
                            (let ((_%tl5073450766%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8021080211%_ '1)))
                                  (_%target5073250763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8021080211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073450766%_)
                                  (_%__match8028480285%_
                                   _%e5070750824%_
                                   _%hd5070850828%_
                                   _%tl5070950831%_
                                   _%__splice8021080211%_
                                   _%target5073250763%_
                                   _%tl5073450766%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5068650746%_)))))
                          (let () (declare (not safe)) (_%g5068650746%_))))))
              (if (gx#stx-pair/null? _%tl5070950831%_)
                  (let ((_%__splice8021080211%_
                         (gx#syntax-split-splice _%tl5070950831%_ '0)))
                    (let ((_%tl5073450766%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '1)))
                          (_%target5073250763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '0))))
                      (if (gx#stx-null? _%tl5073450766%_)
                          (_%__match8028480285%_
                           _%e5070750824%_
                           _%hd5070850828%_
                           _%tl5070950831%_
                           _%__splice8021080211%_
                           _%target5073250763%_
                           _%tl5073450766%_)
                          (let () (declare (not safe)) (_%g5068650746%_)))))
                  (let () (declare (not safe)) (_%g5068650746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5070950831%_)
                                                      (let ((_%__splice8021080211%_
                                                             (gx#syntax-split-splice
                                                              _%tl5070950831%_
                                                              '0)))
                                                        (let ((_%tl5073450766%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8021080211%_ '1)))
                      (_%target5073250763%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8021080211%_ '0))))
                  (if (gx#stx-null? _%tl5073450766%_)
                      (_%__match8028480285%_
                       _%e5070750824%_
                       _%hd5070850828%_
                       _%tl5070950831%_
                       _%__splice8021080211%_
                       _%target5073250763%_
                       _%tl5073450766%_)
                      (let () (declare (not safe)) (_%g5068650746%_)))))
              (let () (declare (not safe)) (_%g5068650746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5070950831%_)
                                              (let ((_%__splice8021080211%_
                                                     (gx#syntax-split-splice
                                                      _%tl5070950831%_
                                                      '0)))
                                                (let ((_%tl5073450766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8021080211%_
                                                          '1)))
                                                      (_%target5073250763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8021080211%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5073450766%_)
                                                      (_%__match8028480285%_
                                                       _%e5070750824%_
                                                       _%hd5070850828%_
                                                       _%tl5070950831%_
                                                       _%__splice8021080211%_
                                                       _%target5073250763%_
                                                       _%tl5073450766%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5068650746%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5068650746%_))))
                                      (if (gx#stx-pair/null? _%tl5070950831%_)
                                          (let ((_%__splice8021080211%_
                                                 (gx#syntax-split-splice
                                                  _%tl5070950831%_
                                                  '0)))
                                            (let ((_%tl5073450766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021080211%_
                                                      '1)))
                                                  (_%target5073250763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021080211%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073450766%_)
                                                  (_%__match8028480285%_
                                                   _%e5070750824%_
                                                   _%hd5070850828%_
                                                   _%tl5070950831%_
                                                   _%__splice8021080211%_
                                                   _%target5073250763%_
                                                   _%tl5073450766%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068650746%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5068650746%_))))
                                  (if (gx#stx-pair/null? _%tl5070950831%_)
                                      (let ((_%__splice8021080211%_
                                             (gx#syntax-split-splice
                                              _%tl5070950831%_
                                              '0)))
                                        (let ((_%tl5073450766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8021080211%_
                                                  '1)))
                                              (_%target5073250763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8021080211%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5073450766%_)
                                              (_%__match8028480285%_
                                               _%e5070750824%_
                                               _%hd5070850828%_
                                               _%tl5070950831%_
                                               _%__splice8021080211%_
                                               _%target5073250763%_
                                               _%tl5073450766%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5068650746%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068650746%_))))))
                          (if (gx#stx-pair/null? _%tl5070950831%_)
                              (let ((_%__splice8021080211%_
                                     (gx#syntax-split-splice
                                      _%tl5070950831%_
                                      '0)))
                                (let ((_%tl5073450766%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '1)))
                                      (_%target5073250763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073450766%_)
                                      (_%__match8028480285%_
                                       _%e5070750824%_
                                       _%hd5070850828%_
                                       _%tl5070950831%_
                                       _%__splice8021080211%_
                                       _%target5073250763%_
                                       _%tl5073450766%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068650746%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068650746%_))))))
                   (_%__match8023280233%_
                    (lambda (_%e5069051258%_
                             _%hd5069151262%_
                             _%tl5069251265%_
                             _%e5069351268%_
                             _%hd5069451272%_
                             _%tl5069551275%_
                             _%__splice8020280203%_
                             _%target5069651278%_
                             _%tl5069851281%_)
                      (letrec ((_%loop5069951284%_
                                (lambda (_%hd5069751288%_ _%rand5070351291%_)
                                  (if (gx#stx-pair? _%hd5069751288%_)
                                      (let ((_%e5070051294%_
                                             (gx#syntax-e _%hd5069751288%_)))
                                        (let ((_%lp-tl5070251301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5070051294%_)))
                                              (_%lp-hd5070151298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5070051294%_))))
                                          (_%loop5069951284%_
                                           _%lp-tl5070251301%_
                                           (cons _%lp-hd5070151298%_
                                                 _%rand5070351291%_))))
                                      (let ((_%rand5070451304%_
                                             (reverse _%rand5070351291%_)))
                                        (let ((_%L51308%_ _%rand5070451304%_)
                                              (_%L51310%_ _%hd5069451272%_))
                                          (if (gx#identifier? _%L51310%_)
                                              (_%__kont8020080201%_
                                               _%L51308%_
                                               _%L51310%_)
                                              (_%__match8024480245%_
                                               _%e5069051258%_
                                               _%hd5069151262%_
                                               _%tl5069251265%_
                                               _%e5069351268%_
                                               _%hd5069451272%_
                                               _%tl5069551275%_))))))))
                        (_%loop5069951284%_ _%target5069651278%_ '())))))
              (if (gx#stx-pair? _%__stx8019780198%_)
                  (let ((_%e5069051258%_ (gx#syntax-e _%__stx8019780198%_)))
                    (let ((_%tl5069251265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5069051258%_)))
                          (_%hd5069151262%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5069051258%_))))
                      (if (gx#stx-pair? _%tl5069251265%_)
                          (let ((_%e5069351268%_
                                 (gx#syntax-e _%tl5069251265%_)))
                            (let ((_%tl5069551275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5069351268%_)))
                                  (_%hd5069451272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5069351268%_))))
                              (if (gx#stx-pair/null? _%tl5069551275%_)
                                  (let ((_%__splice8020280203%_
                                         (gx#syntax-split-splice
                                          _%tl5069551275%_
                                          '0)))
                                    (let ((_%tl5069851281%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8020280203%_
                                              '1)))
                                          (_%target5069651278%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8020280203%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5069851281%_)
                                          (_%__match8023280233%_
                                           _%e5069051258%_
                                           _%hd5069151262%_
                                           _%tl5069251265%_
                                           _%e5069351268%_
                                           _%hd5069451272%_
                                           _%tl5069551275%_
                                           _%__splice8020280203%_
                                           _%target5069651278%_
                                           _%tl5069851281%_)
                                          (if (gx#stx-pair? _%hd5069451272%_)
                                              (let ((_%e5071350844%_
                                                     (gx#syntax-e
                                                      _%hd5069451272%_)))
                                                (let ((_%tl5071550851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5071350844%_)))
                                                      (_%hd5071450848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5071350844%_))))
                                                  (if (gx#identifier?
                                                       _%hd5071450848%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84929_|
                                                           _%hd5071450848%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5071550851%_)
                                                              (let ((_%e5071650854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5071550851%_)))
                        (let ((_%tl5071850861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5071650854%_)))
                              (_%hd5071750858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5071650854%_))))
                          (if (gx#stx-pair/null? _%tl5069251265%_)
                              (let ((_%__splice8021080211%_
                                     (gx#syntax-split-splice
                                      _%tl5069251265%_
                                      '0)))
                                (let ((_%tl5073450766%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '1)))
                                      (_%target5073250763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073450766%_)
                                      (_%__match8028480285%_
                                       _%e5069051258%_
                                       _%hd5069151262%_
                                       _%tl5069251265%_
                                       _%__splice8021080211%_
                                       _%target5073250763%_
                                       _%tl5073450766%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068650746%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068650746%_)))))
                      (if (gx#stx-pair/null? _%tl5069251265%_)
                          (let ((_%__splice8021080211%_
                                 (gx#syntax-split-splice _%tl5069251265%_ '0)))
                            (let ((_%tl5073450766%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8021080211%_ '1)))
                                  (_%target5073250763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8021080211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073450766%_)
                                  (_%__match8028480285%_
                                   _%e5069051258%_
                                   _%hd5069151262%_
                                   _%tl5069251265%_
                                   _%__splice8021080211%_
                                   _%target5073250763%_
                                   _%tl5073450766%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5068650746%_)))))
                          (let () (declare (not safe)) (_%g5068650746%_))))
                  (if (gx#stx-pair/null? _%tl5069251265%_)
                      (let ((_%__splice8021080211%_
                             (gx#syntax-split-splice _%tl5069251265%_ '0)))
                        (let ((_%tl5073450766%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021080211%_ '1)))
                              (_%target5073250763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021080211%_ '0))))
                          (if (gx#stx-null? _%tl5073450766%_)
                              (_%__match8028480285%_
                               _%e5069051258%_
                               _%hd5069151262%_
                               _%tl5069251265%_
                               _%__splice8021080211%_
                               _%target5073250763%_
                               _%tl5073450766%_)
                              (let ()
                                (declare (not safe))
                                (_%g5068650746%_)))))
                      (let () (declare (not safe)) (_%g5068650746%_))))
              (if (gx#stx-pair/null? _%tl5069251265%_)
                  (let ((_%__splice8021080211%_
                         (gx#syntax-split-splice _%tl5069251265%_ '0)))
                    (let ((_%tl5073450766%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '1)))
                          (_%target5073250763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '0))))
                      (if (gx#stx-null? _%tl5073450766%_)
                          (_%__match8028480285%_
                           _%e5069051258%_
                           _%hd5069151262%_
                           _%tl5069251265%_
                           _%__splice8021080211%_
                           _%target5073250763%_
                           _%tl5073450766%_)
                          (let () (declare (not safe)) (_%g5068650746%_)))))
                  (let () (declare (not safe)) (_%g5068650746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069251265%_)
                                                  (let ((_%__splice8021080211%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069251265%_
                                                          '0)))
                                                    (let ((_%tl5073450766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021080211%_
                                                              '1)))
                                                          (_%target5073250763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021080211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073450766%_)
                                                          (_%__match8028480285%_
                                                           _%e5069051258%_
                                                           _%hd5069151262%_
                                                           _%tl5069251265%_
                                                           _%__splice8021080211%_
                                                           _%target5073250763%_
                                                           _%tl5073450766%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5068650746%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068650746%_)))))))
                                  (if (gx#stx-pair? _%hd5069451272%_)
                                      (let ((_%e5071350844%_
                                             (gx#syntax-e _%hd5069451272%_)))
                                        (let ((_%tl5071550851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5071350844%_)))
                                              (_%hd5071450848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5071350844%_))))
                                          (if (gx#identifier? _%hd5071450848%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g84929_|
                                                   _%hd5071450848%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5071550851%_)
                                                      (let ((_%e5071650854%_
                                                             (gx#syntax-e
                                                              _%tl5071550851%_)))
                                                        (let ((_%tl5071850861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5071650854%_)))
                      (_%hd5071750858%_
                       (let () (declare (not safe)) (##car _%e5071650854%_))))
                  (if (gx#stx-pair/null? _%tl5069251265%_)
                      (let ((_%__splice8021080211%_
                             (gx#syntax-split-splice _%tl5069251265%_ '0)))
                        (let ((_%tl5073450766%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021080211%_ '1)))
                              (_%target5073250763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8021080211%_ '0))))
                          (if (gx#stx-null? _%tl5073450766%_)
                              (_%__match8028480285%_
                               _%e5069051258%_
                               _%hd5069151262%_
                               _%tl5069251265%_
                               _%__splice8021080211%_
                               _%target5073250763%_
                               _%tl5073450766%_)
                              (let ()
                                (declare (not safe))
                                (_%g5068650746%_)))))
                      (let () (declare (not safe)) (_%g5068650746%_)))))
              (if (gx#stx-pair/null? _%tl5069251265%_)
                  (let ((_%__splice8021080211%_
                         (gx#syntax-split-splice _%tl5069251265%_ '0)))
                    (let ((_%tl5073450766%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '1)))
                          (_%target5073250763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8021080211%_ '0))))
                      (if (gx#stx-null? _%tl5073450766%_)
                          (_%__match8028480285%_
                           _%e5069051258%_
                           _%hd5069151262%_
                           _%tl5069251265%_
                           _%__splice8021080211%_
                           _%target5073250763%_
                           _%tl5073450766%_)
                          (let () (declare (not safe)) (_%g5068650746%_)))))
                  (let () (declare (not safe)) (_%g5068650746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5069251265%_)
                                                      (let ((_%__splice8021080211%_
                                                             (gx#syntax-split-splice
                                                              _%tl5069251265%_
                                                              '0)))
                                                        (let ((_%tl5073450766%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8021080211%_ '1)))
                      (_%target5073250763%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8021080211%_ '0))))
                  (if (gx#stx-null? _%tl5073450766%_)
                      (_%__match8028480285%_
                       _%e5069051258%_
                       _%hd5069151262%_
                       _%tl5069251265%_
                       _%__splice8021080211%_
                       _%target5073250763%_
                       _%tl5073450766%_)
                      (let () (declare (not safe)) (_%g5068650746%_)))))
              (let () (declare (not safe)) (_%g5068650746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069251265%_)
                                                  (let ((_%__splice8021080211%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069251265%_
                                                          '0)))
                                                    (let ((_%tl5073450766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021080211%_
                                                              '1)))
                                                          (_%target5073250763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8021080211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073450766%_)
                                                          (_%__match8028480285%_
                                                           _%e5069051258%_
                                                           _%hd5069151262%_
                                                           _%tl5069251265%_
                                                           _%__splice8021080211%_
                                                           _%target5073250763%_
                                                           _%tl5073450766%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5068650746%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068650746%_))))))
                                      (if (gx#stx-pair/null? _%tl5069251265%_)
                                          (let ((_%__splice8021080211%_
                                                 (gx#syntax-split-splice
                                                  _%tl5069251265%_
                                                  '0)))
                                            (let ((_%tl5073450766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021080211%_
                                                      '1)))
                                                  (_%target5073250763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8021080211%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073450766%_)
                                                  (_%__match8028480285%_
                                                   _%e5069051258%_
                                                   _%hd5069151262%_
                                                   _%tl5069251265%_
                                                   _%__splice8021080211%_
                                                   _%target5073250763%_
                                                   _%tl5073450766%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068650746%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5068650746%_)))))))
                          (if (gx#stx-pair/null? _%tl5069251265%_)
                              (let ((_%__splice8021080211%_
                                     (gx#syntax-split-splice
                                      _%tl5069251265%_
                                      '0)))
                                (let ((_%tl5073450766%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '1)))
                                      (_%target5073250763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8021080211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073450766%_)
                                      (_%__match8028480285%_
                                       _%e5069051258%_
                                       _%hd5069151262%_
                                       _%tl5069251265%_
                                       _%__splice8021080211%_
                                       _%target5073250763%_
                                       _%tl5073450766%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068650746%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068650746%_))))))
                  (let () (declare (not safe)) (_%g5068650746%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51342%_)
        (let* ((_%__stx8028780288%_ _%stx51342%_)
               (_%g5134651367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8028780288%_))))
          (let ((_%__kont8029080291%_
                 (lambda (_%L51435%_)
                   (let* ((_%g5144751454%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51342%_
                            _%L51435%_))
                          (_%E5144951460%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5144751454%_
                                    '([var . parts]))
                             (void)))
                          (_%K5145051676%_
                           (lambda (_%parts51464%_ _%var51466%_)
                             (let ((_%$e51468%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51466%_))))
                               (if _%$e51468%_
                                   ((lambda (_%te51472%_)
                                      (let _%loop51475%_ ((_%parts51478%_
                                                           _%parts51464%_)
                                                          (_%type51480%_
                                                           (##direct-structure-ref
                                                            _%te51472%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51481%_
                                                           _%var51466%_)
                                                          (_%nil-check?51482%_
                                                           '#f))
                                        (let* ((_%parts5148351491%_
                                                _%parts51478%_)
                                               (_%else5148551503%_
                                                (lambda () _%object51481%_))
                                               (_%K5148751658%_
                                                (lambda (_%rest51507%_
                                                         _%part51509%_)
                                                  (if (and (not _%nil-check?51482%_)
                                                           (let ((__tmp84930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51509%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84930)))
              (let ((_%str51513%_ (symbol->string _%part51509%_)))
                (_%loop51475%_
                 (cons (let ((__tmp84931
                              (substring
                               _%str51513%_
                               '1
                               (string-length _%str51513%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84931))
                       _%rest51507%_)
                 _%type51480%_
                 _%object51481%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51480%_))
                  (let* ((_%g5151851533%_
                          (lambda (_%g5151951529%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5151951529%_)))
                         (_%g5151751650%_
                          (lambda (_%g5151951537%_)
                            (if (gx#stx-pair? _%g5151951537%_)
                                (let ((_%e5152251540%_
                                       (gx#syntax-e _%g5151951537%_)))
                                  (let ((_%hd5152351544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5152251540%_)))
                                        (_%tl5152451547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5152251540%_))))
                                    (if (gx#stx-pair? _%tl5152451547%_)
                                        (let ((_%e5152551550%_
                                               (gx#syntax-e _%tl5152451547%_)))
                                          (let ((_%hd5152651554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5152551550%_)))
                                                (_%tl5152751557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5152551550%_))))
                                            (if (gx#stx-null? _%tl5152751557%_)
                                                ((lambda (_%L51560%_
                                                          _%L51562%_)
                                                   (if (null? _%rest51507%_)
                                                       (let ((_%$e51592%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51480%_
                                                               _%part51509%_)))
                                                         (if _%$e51592%_
                                                             ((lambda (_%slot-type51596%_)
                                                                (let* ((_%g5159951607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5160051603%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5160051603%_)))
                               (_%g5159851630%_
                                (lambda (_%g5160051611%_)
                                  ((lambda (_%L51614%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51614%_ '()))
                                                 (cons (cons _%L51560%_
                                                             (cons _%L51562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5160051611%_))))
                          (_%g5159851630%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51342%_
                              _%slot-type51596%_)))))
                      _%$e51592%_)
                     (if _%nil-check?51482%_
                         (cons _%L51560%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51562%_ '()))
                                     '()))
                         (cons _%L51560%_ (cons _%L51562%_ '())))))
               (let ((_%$e51638%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51480%_
                       _%part51509%_)))
                 (if _%$e51638%_
                     ((lambda (_%type51642%_)
                        (let ((_%type51645%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51342%_
                                  _%type51642%_))))
                          (if _%nil-check?51482%_
                              (_%loop51475%_
                               _%rest51507%_
                               _%type51645%_
                               (cons _%L51560%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51562%_ '()))
                                           '()))
                               '#f)
                              (_%loop51475%_
                               _%rest51507%_
                               _%type51645%_
                               (cons _%L51560%_ (cons _%L51562%_ '()))
                               '#f))))
                      _%$e51638%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51342%_
                      _%L51435%_
                      _%part51509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5152651554%_
                                                 _%hd5152351544%_)
                                                (_%g5151851533%_
                                                 _%g5151951537%_))))
                                        (_%g5151851533%_ _%g5151951537%_))))
                                (_%g5151851533%_ _%g5151951537%_)))))
                    (_%g5151751650%_
                     (list (if _%nil-check?51482%_
                               (cons 'check-nil! (cons _%object51481%_ '()))
                               _%object51481%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51342%_
                            _%type51480%_
                            _%part51509%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51480%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51342%_
                       _%type51480%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5148351491%_)
                                              (let ((_%hd5148851662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5148351491%_)))
                                                    (_%tl5148951665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5148351491%_))))
                                                (let* ((_%part51668%_
                                                        _%hd5148851662%_)
                                                       (_%rest51671%_
                                                        _%tl5148951665%_))
                                                  (_%K5148751658%_
                                                   _%rest51671%_
                                                   _%part51668%_)))
                                              (_%else5148551503%_)))))
                                    _%$e51468%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51435%_ '())))))))
                     (if (pair? _%g5144751454%_)
                         (let ((_%hd5145151680%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5144751454%_)))
                               (_%tl5145251683%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5144751454%_))))
                           (let* ((_%var51686%_ _%hd5145151680%_)
                                  (_%parts51689%_ _%tl5145251683%_))
                             (_%K5145051676%_ _%parts51689%_ _%var51686%_)))
                         (_%E5144951460%_)))))
                (_%__kont8029280293%_
                 (lambda (_%L51394%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51394%_ '())))))
            (let ((_%__match8030880309%_
                   (lambda (_%e5134951415%_
                            _%hd5135051419%_
                            _%tl5135151422%_
                            _%e5135251425%_
                            _%hd5135351429%_
                            _%tl5135451432%_)
                     (let ((_%L51435%_ _%hd5135351429%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51435%_)
                           (_%__kont8029080291%_ _%L51435%_)
                           (_%__kont8029280293%_ _%hd5135351429%_))))))
              (if (gx#stx-pair? _%__stx8028780288%_)
                  (let ((_%e5134951415%_ (gx#syntax-e _%__stx8028780288%_)))
                    (let ((_%tl5135151422%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5134951415%_)))
                          (_%hd5135051419%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5134951415%_))))
                      (if (gx#stx-pair? _%tl5135151422%_)
                          (let ((_%e5135251425%_
                                 (gx#syntax-e _%tl5135151422%_)))
                            (let ((_%tl5135451432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5135251425%_)))
                                  (_%hd5135351429%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5135251425%_))))
                              (if (gx#stx-null? _%tl5135451432%_)
                                  (_%__match8030880309%_
                                   _%e5134951415%_
                                   _%hd5135051419%_
                                   _%tl5135151422%_
                                   _%e5135251425%_
                                   _%hd5135351429%_
                                   _%tl5135451432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5134651367%_)))))
                          (let () (declare (not safe)) (_%g5134651367%_)))))
                  (let () (declare (not safe)) (_%g5134651367%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51696%_)
        (let* ((_%__stx8032580326%_ _%stx51696%_)
               (_%g5170051729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8032580326%_))))
          (let ((_%__kont8032880329%_
                 (lambda (_%L51821%_ _%L51823%_)
                   (let* ((_%g5183751844%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51696%_
                            _%L51823%_))
                          (_%E5183951850%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5183751844%_
                                    '([var . parts]))
                             (void)))
                          (_%K5184052080%_
                           (lambda (_%parts51854%_ _%var51856%_)
                             (let ((_%$e51858%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51856%_))))
                               (if _%$e51858%_
                                   ((lambda (_%te51862%_)
                                      (let _%loop51865%_ ((_%parts51868%_
                                                           _%parts51854%_)
                                                          (_%type51870%_
                                                           (##direct-structure-ref
                                                            _%te51862%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51871%_
                                                           _%var51856%_)
                                                          (_%checked-mutator?51872%_
                                                           (##direct-structure-ref
                                                            _%te51862%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51873%_
                                                           '#f))
                                        (let* ((_%parts5187451881%_
                                                _%parts51868%_)
                                               (_%E5187651887%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5187451881%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5187752062%_
                                                (lambda (_%rest51891%_
                                                         _%part51893%_)
                                                  (if (and (not _%nil-check?51873%_)
                                                           (let ((__tmp84932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51893%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84932)))
              (let ((_%str51897%_ (symbol->string _%part51893%_)))
                (_%loop51865%_
                 (cons (let ((__tmp84933
                              (substring
                               _%str51897%_
                               '1
                               (string-length _%str51897%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84933))
                       _%rest51891%_)
                 _%type51870%_
                 _%object51871%_
                 _%checked-mutator?51872%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51870%_))
                  (if (null? _%rest51891%_)
                      (let* ((_%g5190451919%_
                              (lambda (_%g5190551915%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5190551915%_)))
                             (_%g5190351976%_
                              (lambda (_%g5190551923%_)
                                (if (gx#stx-pair? _%g5190551923%_)
                                    (let ((_%e5190851926%_
                                           (gx#syntax-e _%g5190551923%_)))
                                      (let ((_%hd5190951930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5190851926%_)))
                                            (_%tl5191051933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5190851926%_))))
                                        (if (gx#stx-pair? _%tl5191051933%_)
                                            (let ((_%e5191151936%_
                                                   (gx#syntax-e
                                                    _%tl5191051933%_)))
                                              (let ((_%hd5191251940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5191151936%_)))
                                                    (_%tl5191351943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5191151936%_))))
                                                (if (gx#stx-null?
                                                     _%tl5191351943%_)
                                                    ((lambda (_%L51946%_
                                                              _%L51948%_)
                                                       (if _%nil-check?51873%_
                                                           (cons _%L51946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51948%_ '()))
                               (cons _%L51821%_ '())))
                   (cons _%L51946%_ (cons _%L51948%_ (cons _%L51821%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5191251940%_
                                                     _%hd5190951930%_)
                                                    (_%g5190451919%_
                                                     _%g5190551923%_))))
                                            (_%g5190451919%_
                                             _%g5190551923%_))))
                                    (_%g5190451919%_ _%g5190551923%_)))))
                        (_%g5190351976%_
                         (list _%object51871%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51696%_
                                _%type51870%_
                                _%part51893%_
                                (if _%checked-mutator?51872%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51870%_
                                     _%part51893%_)
                                    '#f)))))
                      (let ((_%$e51980%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51870%_
                              _%part51893%_)))
                        (if _%$e51980%_
                            ((lambda (_%type51984%_)
                               (let* ((_%type51987%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51696%_
                                          _%type51984%_)))
                                      (_%g5199052005%_
                                       (lambda (_%g5199152001%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5199152001%_)))
                                      (_%g5198952052%_
                                       (lambda (_%g5199152009%_)
                                         (if (gx#stx-pair? _%g5199152009%_)
                                             (let ((_%e5199452012%_
                                                    (gx#syntax-e
                                                     _%g5199152009%_)))
                                               (let ((_%hd5199552016%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5199452012%_)))
                                                     (_%tl5199652019%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5199452012%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5199652019%_)
                                                     (let ((_%e5199752022%_
                                                            (gx#syntax-e
                                                             _%tl5199652019%_)))
                                                       (let ((_%hd5199852026%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5199752022%_)))
                     (_%tl5199952029%_
                      (let () (declare (not safe)) (##cdr _%e5199752022%_))))
                 (if (gx#stx-null? _%tl5199952029%_)
                     ((lambda (_%L52032%_ _%L52034%_)
                        (_%loop51865%_
                         _%rest51891%_
                         _%type51987%_
                         (cons _%L52032%_ (cons _%L52034%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51987%_
                          _%part51893%_)
                         '#f))
                      _%hd5199852026%_
                      _%hd5199552016%_)
                     (_%g5199052005%_ _%g5199152009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5199052005%_
                                                      _%g5199152009%_))))
                                             (_%g5199052005%_
                                              _%g5199152009%_)))))
                                 (_%g5198952052%_
                                  (list (if _%nil-check?51873%_
                                            (cons 'check-nil!
                                                  (cons _%object51871%_ '()))
                                            _%object51871%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51696%_
                                         _%type51987%_
                                         _%part51893%_)))))
                             _%$e51980%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51696%_
                             _%L51823%_
                             _%part51893%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51870%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51696%_
                       _%type51870%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5187451881%_)
                                              (let ((_%hd5187852066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5187451881%_)))
                                                    (_%tl5187952069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5187451881%_))))
                                                (let* ((_%part52072%_
                                                        _%hd5187852066%_)
                                                       (_%rest52075%_
                                                        _%tl5187952069%_))
                                                  (_%K5187752062%_
                                                   _%rest52075%_
                                                   _%part52072%_)))
                                              (_%E5187651887%_)))))
                                    _%$e51858%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51696%_)))))))
                     (if (pair? _%g5183751844%_)
                         (let ((_%hd5184152084%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5183751844%_)))
                               (_%tl5184252087%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5183751844%_))))
                           (let* ((_%var52090%_ _%hd5184152084%_)
                                  (_%parts52093%_ _%tl5184252087%_))
                             (_%K5184052080%_ _%parts52093%_ _%var52090%_)))
                         (_%E5183951850%_)))))
                (_%__kont8033080331%_
                 (lambda (_%L51766%_ _%L51768%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51696%_)))))
            (let ((_%__match8035280353%_
                   (lambda (_%e5170451791%_
                            _%hd5170551795%_
                            _%tl5170651798%_
                            _%e5170751801%_
                            _%hd5170851805%_
                            _%tl5170951808%_
                            _%e5171051811%_
                            _%hd5171151815%_
                            _%tl5171251818%_)
                     (let ((_%L51821%_ _%hd5171151815%_)
                           (_%L51823%_ _%hd5170851805%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51823%_)
                           (_%__kont8032880329%_ _%L51821%_ _%L51823%_)
                           (_%__kont8033080331%_
                            _%hd5171151815%_
                            _%hd5170851805%_))))))
              (if (gx#stx-pair? _%__stx8032580326%_)
                  (let ((_%e5170451791%_ (gx#syntax-e _%__stx8032580326%_)))
                    (let ((_%tl5170651798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5170451791%_)))
                          (_%hd5170551795%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5170451791%_))))
                      (if (gx#stx-pair? _%tl5170651798%_)
                          (let ((_%e5170751801%_
                                 (gx#syntax-e _%tl5170651798%_)))
                            (let ((_%tl5170951808%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5170751801%_)))
                                  (_%hd5170851805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5170751801%_))))
                              (if (gx#stx-pair? _%tl5170951808%_)
                                  (let ((_%e5171051811%_
                                         (gx#syntax-e _%tl5170951808%_)))
                                    (let ((_%tl5171251818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5171051811%_)))
                                          (_%hd5171151815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5171051811%_))))
                                      (if (gx#stx-null? _%tl5171251818%_)
                                          (_%__match8035280353%_
                                           _%e5170451791%_
                                           _%hd5170551795%_
                                           _%tl5170651798%_
                                           _%e5170751801%_
                                           _%hd5170851805%_
                                           _%tl5170951808%_
                                           _%e5171051811%_
                                           _%hd5171151815%_
                                           _%tl5171251818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5170051729%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5170051729%_)))))
                          (let () (declare (not safe)) (_%g5170051729%_)))))
                  (let () (declare (not safe)) (_%g5170051729%_))))))))))

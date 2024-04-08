(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80521_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80522_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80523_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80526_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80527_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80530_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80531_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80532_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80533_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80536_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80537_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80538_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80539_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80542_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46415%_)
        (let* ((_%__stx7546775468%_ _%stx46415%_)
               (_%g4642446633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7546775468%_))))
          (let ((_%__kont7547075471%_
                 (lambda (_%L47539%_
                          _%L47541%_
                          _%L47542%_
                          _%L47543%_
                          _%L47544%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47544%_ (cons _%L47543%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47544%_
                                                       (cons _%L47542%_
                                                             (cons _%L47541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4758747590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4758847593%_)
                  (cons _%g4758747590%_ _%g4758847593%_))
                '()
                _%L47539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7547475475%_
                 (lambda (_%L47383%_
                          _%L47385%_
                          _%L47386%_
                          _%L47387%_
                          _%L47388%_
                          _%L47389%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47389%_ (cons _%L47388%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47389%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47386%_ (cons _%L47385%_ '())))
                           (foldr (lambda (_%g4743347436%_ _%g4743447439%_)
                                    (cons _%g4743347436%_ _%g4743447439%_))
                                  '()
                                  _%L47383%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7547875479%_
                 (lambda (_%L47200%_ _%L47202%_ _%L47203%_ _%L47204%_)
                   (let ((_%meta47241%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46415%_
                             _%L47202%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47241%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47204%_
                                           (cons _%L47203%_
                                                 (cons _%L47202%_ '())))
                                     (foldr (lambda (_%g4724547248%_
                                                     _%g4724647251%_)
                                              (cons _%g4724547248%_
                                                    _%g4724647251%_))
                                            '()
                                            _%L47200%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47241%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47204%_
                                               (cons _%L47203%_
                                                     (cons _%L47202%_ '())))
                                         (foldr (lambda (_%g4725547258%_
                                                         _%g4725647261%_)
                                                  (cons _%g4725547258%_
                                                        _%g4725647261%_))
                                                '()
                                                _%L47200%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46415%_
                              _%L47202%_
                              _%meta47241%_))))))
                (_%__kont7548275483%_
                 (lambda (_%L47078%_ _%L47080%_ _%L47081%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47081%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47080%_ '())))
                               (foldr (lambda (_%g4710447107%_ _%g4710547110%_)
                                        (cons _%g4710447107%_ _%g4710547110%_))
                                      '()
                                      _%L47078%_)))))
                (_%__kont7548675487%_
                 (lambda (_%L46936%_
                          _%L46938%_
                          _%L46939%_
                          _%L46940%_
                          _%L46941%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46941%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46940%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46941%_
                                                       (cons _%L46939%_
                                                             (cons _%L46938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4698246985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4698346988%_)
                  (cons _%g4698246985%_ _%g4698346988%_))
                '()
                _%L46936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7549075491%_
                 (lambda (_%L46794%_ _%L46796%_ _%L46797%_ _%L46798%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46798%_ _%L46797%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46796%_
                                                 (foldr (lambda (_%g4682046823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4682146826%_)
                  (cons _%g4682046823%_ _%g4682146826%_))
                '()
                _%L46794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7549475495%_
                 (lambda (_%L46690%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4670846711%_ _%g4670946714%_)
                                        (cons _%g4670846711%_ _%g4670946714%_))
                                      '()
                                      _%L46690%_))))))
            (let* ((_%__match7580075801%_
                    (lambda (_%e4661546640%_
                             _%hd4661446644%_
                             _%tl4661346647%_
                             _%e4661846650%_
                             _%hd4661746654%_
                             _%tl4661646657%_
                             _%__splice7549675497%_
                             _%target4661946660%_
                             _%tl4662146663%_)
                      (letrec ((_%loop4662246666%_
                                (lambda (_%hd4662046670%_ _%body4662646673%_)
                                  (if (gx#stx-pair? _%hd4662046670%_)
                                      (let ((_%e4662346676%_
                                             (gx#syntax-e _%hd4662046670%_)))
                                        (let ((_%lp-tl4662546683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4662346676%_)))
                                              (_%lp-hd4662446680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4662346676%_))))
                                          (_%loop4662246666%_
                                           _%lp-tl4662546683%_
                                           (cons _%lp-hd4662446680%_
                                                 _%body4662646673%_))))
                                      (let ((_%body4662746686%_
                                             (reverse _%body4662646673%_)))
                                        (_%__kont7549475495%_
                                         _%body4662746686%_))))))
                        (_%loop4662246666%_ _%target4661946660%_ '()))))
                   (_%__match7577875779%_
                    (lambda (_%e4659346724%_
                             _%hd4659246728%_
                             _%tl4659146731%_
                             _%e4659646734%_
                             _%hd4659546738%_
                             _%tl4659446741%_
                             _%e4659946744%_
                             _%hd4659846748%_
                             _%tl4659746751%_
                             _%e4660246754%_
                             _%hd4660146758%_
                             _%tl4660046761%_
                             _%__splice7549275493%_
                             _%target4660346764%_
                             _%tl4660546767%_)
                      (letrec ((_%loop4660646770%_
                                (lambda (_%hd4660446774%_ _%body4661046777%_)
                                  (if (gx#stx-pair? _%hd4660446774%_)
                                      (let ((_%e4660746780%_
                                             (gx#syntax-e _%hd4660446774%_)))
                                        (let ((_%lp-tl4660946787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660746780%_)))
                                              (_%lp-hd4660846784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660746780%_))))
                                          (_%loop4660646770%_
                                           _%lp-tl4660946787%_
                                           (cons _%lp-hd4660846784%_
                                                 _%body4661046777%_))))
                                      (let ((_%body4661146790%_
                                             (reverse _%body4661046777%_)))
                                        (let ((_%L46794%_ _%body4661146790%_)
                                              (_%L46796%_ _%tl4659746751%_)
                                              (_%L46797%_ _%tl4660046761%_)
                                              (_%L46798%_ _%hd4660146758%_))
                                          (if (gx#identifier? _%L46798%_)
                                              (_%__kont7549075491%_
                                               _%L46794%_
                                               _%L46796%_
                                               _%L46797%_
                                               _%L46798%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))))))
                        (_%loop4660646770%_ _%target4660346764%_ '()))))
                   (_%__match7576475765%_
                    (lambda (_%e4659346724%_
                             _%hd4659246728%_
                             _%tl4659146731%_
                             _%e4659646734%_
                             _%hd4659546738%_
                             _%tl4659446741%_
                             _%e4659946744%_
                             _%hd4659846748%_
                             _%tl4659746751%_)
                      (if (gx#stx-pair? _%hd4659846748%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4659846748%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (if (gx#stx-pair/null? _%tl4659446741%_)
                                  (let ((_%__splice7549275493%_
                                         (gx#syntax-split-splice
                                          _%tl4659446741%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7577875779%_
                                           _%e4659346724%_
                                           _%hd4659246728%_
                                           _%tl4659146731%_
                                           _%e4659646734%_
                                           _%hd4659546738%_
                                           _%tl4659446741%_
                                           _%e4659946744%_
                                           _%hd4659846748%_
                                           _%tl4659746751%_
                                           _%e4660246754%_
                                           _%hd4660146758%_
                                           _%tl4660046761%_
                                           _%__splice7549275493%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                   (_%__match7574675747%_
                    (lambda (_%e4655946836%_
                             _%hd4655846840%_
                             _%tl4655746843%_
                             _%e4656246846%_
                             _%hd4656146850%_
                             _%tl4656046853%_
                             _%e4656546856%_
                             _%hd4656446860%_
                             _%tl4656346863%_
                             _%e4656846866%_
                             _%hd4656746870%_
                             _%tl4656646873%_
                             _%e4657146876%_
                             _%hd4657046880%_
                             _%tl4656946883%_
                             _%e4657446886%_
                             _%hd4657346890%_
                             _%tl4657246893%_
                             _%e4657746896%_
                             _%hd4657646900%_
                             _%tl4657546903%_
                             _%__splice7548875489%_
                             _%target4657846906%_
                             _%tl4658046909%_)
                      (letrec ((_%loop4658146912%_
                                (lambda (_%hd4657946916%_ _%body4658546919%_)
                                  (if (gx#stx-pair? _%hd4657946916%_)
                                      (let ((_%e4658246922%_
                                             (gx#syntax-e _%hd4657946916%_)))
                                        (let ((_%lp-tl4658446929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658246922%_)))
                                              (_%lp-hd4658346926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658246922%_))))
                                          (_%loop4658146912%_
                                           _%lp-tl4658446929%_
                                           (cons _%lp-hd4658346926%_
                                                 _%body4658546919%_))))
                                      (let ((_%body4658646932%_
                                             (reverse _%body4658546919%_)))
                                        (let ((_%L46936%_ _%body4658646932%_)
                                              (_%L46938%_ _%hd4657646900%_)
                                              (_%L46939%_ _%hd4657346890%_)
                                              (_%L46940%_ _%hd4657046880%_)
                                              (_%L46941%_ _%hd4656446860%_))
                                          (if (and (gx#identifier? _%L46941%_)
                                                   (gx#identifier? _%L46938%_)
                                                   (gx#identifier? _%L46939%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46939%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46939%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46939%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46939%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7548675487%_
                                               _%L46936%_
                                               _%L46938%_
                                               _%L46939%_
                                               _%L46940%_
                                               _%L46941%_)
                                              (_%__match7576475765%_
                                               _%e4655946836%_
                                               _%hd4655846840%_
                                               _%tl4655746843%_
                                               _%e4656246846%_
                                               _%hd4656146850%_
                                               _%tl4656046853%_
                                               _%e4656546856%_
                                               _%hd4656446860%_
                                               _%tl4656346863%_))))))))
                        (_%loop4658146912%_ _%target4657846906%_ '()))))
                   (_%__match7569075691%_
                    (lambda (_%e4653046998%_
                             _%hd4652947002%_
                             _%tl4652847005%_
                             _%e4653347008%_
                             _%hd4653247012%_
                             _%tl4653147015%_
                             _%e4653647018%_
                             _%hd4653547022%_
                             _%tl4653447025%_
                             _%e4653947028%_
                             _%hd4653847032%_
                             _%tl4653747035%_
                             _%e4654247038%_
                             _%hd4654147042%_
                             _%tl4654047045%_
                             _%__splice7548475485%_
                             _%target4654347048%_
                             _%tl4654547051%_)
                      (letrec ((_%loop4654647054%_
                                (lambda (_%hd4654447058%_ _%body4655047061%_)
                                  (if (gx#stx-pair? _%hd4654447058%_)
                                      (let ((_%e4654747064%_
                                             (gx#syntax-e _%hd4654447058%_)))
                                        (let ((_%lp-tl4654947071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4654747064%_)))
                                              (_%lp-hd4654847068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4654747064%_))))
                                          (_%loop4654647054%_
                                           _%lp-tl4654947071%_
                                           (cons _%lp-hd4654847068%_
                                                 _%body4655047061%_))))
                                      (let ((_%body4655147074%_
                                             (reverse _%body4655047061%_)))
                                        (let ((_%L47078%_ _%body4655147074%_)
                                              (_%L47080%_ _%hd4654147042%_)
                                              (_%L47081%_ _%hd4653547022%_))
                                          (if (gx#identifier? _%L47081%_)
                                              (_%__kont7548275483%_
                                               _%L47078%_
                                               _%L47080%_
                                               _%L47081%_)
                                              (_%__match7576475765%_
                                               _%e4653046998%_
                                               _%hd4652947002%_
                                               _%tl4652847005%_
                                               _%e4653347008%_
                                               _%hd4653247012%_
                                               _%tl4653147015%_
                                               _%e4653647018%_
                                               _%hd4653547022%_
                                               _%tl4653447025%_))))))))
                        (_%loop4654647054%_ _%target4654347048%_ '()))))
                   (_%__match7567075671%_
                    (lambda (_%e4653046998%_
                             _%hd4652947002%_
                             _%tl4652847005%_
                             _%e4653347008%_
                             _%hd4653247012%_
                             _%tl4653147015%_
                             _%e4653647018%_
                             _%hd4653547022%_
                             _%tl4653447025%_
                             _%e4653947028%_
                             _%hd4653847032%_
                             _%tl4653747035%_)
                      (if (gx#identifier? _%hd4653847032%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80521_|
                               _%hd4653847032%_)
                              (if (gx#stx-pair? _%tl4653747035%_)
                                  (let ((_%e4654247038%_
                                         (gx#syntax-e _%tl4653747035%_)))
                                    (let ((_%tl4654047045%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4654247038%_)))
                                          (_%hd4654147042%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4654247038%_))))
                                      (if (gx#stx-null? _%tl4654047045%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4653147015%_)
                                              (let ((_%__splice7548475485%_
                                                     (gx#syntax-split-splice
                                                      _%tl4653147015%_
                                                      '0)))
                                                (let ((_%tl4654547051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7548475485%_
                                                          '1)))
                                                      (_%target4654347048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7548475485%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4654547051%_)
                                                      (_%__match7569075691%_
                                                       _%e4653046998%_
                                                       _%hd4652947002%_
                                                       _%tl4652847005%_
                                                       _%e4653347008%_
                                                       _%hd4653247012%_
                                                       _%tl4653147015%_
                                                       _%e4653647018%_
                                                       _%hd4653547022%_
                                                       _%tl4653447025%_
                                                       _%e4653947028%_
                                                       _%hd4653847032%_
                                                       _%tl4653747035%_
                                                       _%e4654247038%_
                                                       _%hd4654147042%_
                                                       _%tl4654047045%_
                                                       _%__splice7548475485%_
                                                       _%target4654347048%_
                                                       _%tl4654547051%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4653547022%_)
                                                          (let ((_%e4660246754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4653547022%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653547022%_)
                                                  (let ((_%e4660246754%_
                                                         (gx#syntax-e
                                                          _%hd4653547022%_)))
                                                    (let ((_%tl4660046761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660246754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660246754%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%tl4654047045%_)
                                              (let ((_%e4657446886%_
                                                     (gx#syntax-e
                                                      _%tl4654047045%_)))
                                                (let ((_%tl4657246893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657446886%_)))
                                                      (_%hd4657346890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657446886%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657246893%_)
                                                      (let ((_%e4657746896%_
                                                             (gx#syntax-e
                                                              _%tl4657246893%_)))
                                                        (let ((_%tl4657546903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746896%_)))
                      (_%hd4657646900%_
                       (let () (declare (not safe)) (##car _%e4657746896%_))))
                  (if (gx#stx-null? _%tl4657546903%_)
                      (if (gx#stx-pair/null? _%tl4653147015%_)
                          (let ((_%__splice7548875489%_
                                 (gx#syntax-split-splice _%tl4653147015%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7548875489%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7548875489%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7574675747%_
                                   _%e4653046998%_
                                   _%hd4652947002%_
                                   _%tl4652847005%_
                                   _%e4653347008%_
                                   _%hd4653247012%_
                                   _%tl4653147015%_
                                   _%e4653647018%_
                                   _%hd4653547022%_
                                   _%tl4653447025%_
                                   _%e4653947028%_
                                   _%hd4653847032%_
                                   _%tl4653747035%_
                                   _%e4654247038%_
                                   _%hd4654147042%_
                                   _%tl4654047045%_
                                   _%e4657446886%_
                                   _%hd4657346890%_
                                   _%tl4657246893%_
                                   _%e4657746896%_
                                   _%hd4657646900%_
                                   _%tl4657546903%_
                                   _%__splice7548875489%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4653547022%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4653547022%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4653547022%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4653547022%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4653547022%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4653547022%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (if (gx#stx-pair/null? _%tl4653147015%_)
                                  (let ((_%__splice7549275493%_
                                         (gx#syntax-split-splice
                                          _%tl4653147015%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7577875779%_
                                           _%e4653046998%_
                                           _%hd4652947002%_
                                           _%tl4652847005%_
                                           _%e4653347008%_
                                           _%hd4653247012%_
                                           _%tl4653147015%_
                                           _%e4653647018%_
                                           _%hd4653547022%_
                                           _%tl4653447025%_
                                           _%e4660246754%_
                                           _%hd4660146758%_
                                           _%tl4660046761%_
                                           _%__splice7549275493%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_))))))
              (if (gx#stx-pair? _%hd4653547022%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4653547022%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4653147015%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4653147015%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4653046998%_
                                   _%hd4652947002%_
                                   _%tl4652847005%_
                                   _%e4653347008%_
                                   _%hd4653247012%_
                                   _%tl4653147015%_
                                   _%e4653647018%_
                                   _%hd4653547022%_
                                   _%tl4653447025%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653547022%_)
                                                  (let ((_%e4660246754%_
                                                         (gx#syntax-e
                                                          _%hd4653547022%_)))
                                                    (let ((_%tl4660046761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660246754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660246754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4653147015%_)
                                                          (let ((_%__splice7549275493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4653147015%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7577875779%_
                           _%e4653046998%_
                           _%hd4652947002%_
                           _%tl4652847005%_
                           _%e4653347008%_
                           _%hd4653247012%_
                           _%tl4653147015%_
                           _%e4653647018%_
                           _%hd4653547022%_
                           _%tl4653447025%_
                           _%e4660246754%_
                           _%hd4660146758%_
                           _%tl4660046761%_
                           _%__splice7549275493%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))))
                                  (if (gx#stx-pair? _%hd4653547022%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4653547022%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4653147015%_)
                                              (let ((_%__splice7549275493%_
                                                     (gx#syntax-split-splice
                                                      _%tl4653147015%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7577875779%_
                                                       _%e4653046998%_
                                                       _%hd4652947002%_
                                                       _%tl4652847005%_
                                                       _%e4653347008%_
                                                       _%hd4653247012%_
                                                       _%tl4653147015%_
                                                       _%e4653647018%_
                                                       _%hd4653547022%_
                                                       _%tl4653447025%_
                                                       _%e4660246754%_
                                                       _%hd4660146758%_
                                                       _%tl4660046761%_
                                                       _%__splice7549275493%_
                                                       _%target4660346764%_
                                                       _%tl4660546767%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                              (if (gx#stx-pair? _%hd4653547022%_)
                                  (let ((_%e4660246754%_
                                         (gx#syntax-e _%hd4653547022%_)))
                                    (let ((_%tl4660046761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660246754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660246754%_))))
                                      (if (gx#stx-pair/null? _%tl4653147015%_)
                                          (let ((_%__splice7549275493%_
                                                 (gx#syntax-split-splice
                                                  _%tl4653147015%_
                                                  '0)))
                                            (let ((_%tl4660546767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7549275493%_
                                                      '1)))
                                                  (_%target4660346764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7549275493%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660546767%_)
                                                  (_%__match7577875779%_
                                                   _%e4653046998%_
                                                   _%hd4652947002%_
                                                   _%tl4652847005%_
                                                   _%e4653347008%_
                                                   _%hd4653247012%_
                                                   _%tl4653147015%_
                                                   _%e4653647018%_
                                                   _%hd4653547022%_
                                                   _%tl4653447025%_
                                                   _%e4660246754%_
                                                   _%hd4660146758%_
                                                   _%tl4660046761%_
                                                   _%__splice7549275493%_
                                                   _%target4660346764%_
                                                   _%tl4660546767%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                          (if (gx#stx-pair? _%hd4653547022%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4653547022%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (if (gx#stx-pair/null? _%tl4653147015%_)
                                      (let ((_%__splice7549275493%_
                                             (gx#syntax-split-splice
                                              _%tl4653147015%_
                                              '0)))
                                        (let ((_%tl4660546767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7549275493%_
                                                  '1)))
                                              (_%target4660346764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7549275493%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4660546767%_)
                                              (_%__match7577875779%_
                                               _%e4653046998%_
                                               _%hd4652947002%_
                                               _%tl4652847005%_
                                               _%e4653347008%_
                                               _%hd4653247012%_
                                               _%tl4653147015%_
                                               _%e4653647018%_
                                               _%hd4653547022%_
                                               _%tl4653447025%_
                                               _%e4660246754%_
                                               _%hd4660146758%_
                                               _%tl4660046761%_
                                               _%__splice7549275493%_
                                               _%target4660346764%_
                                               _%tl4660546767%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_))))))
                   (_%__match7564675647%_
                    (lambda (_%e4650347120%_
                             _%hd4650247124%_
                             _%tl4650147127%_
                             _%e4650647130%_
                             _%hd4650547134%_
                             _%tl4650447137%_
                             _%e4650947140%_
                             _%hd4650847144%_
                             _%tl4650747147%_
                             _%e4651247150%_
                             _%hd4651147154%_
                             _%tl4651047157%_
                             _%e4651547160%_
                             _%hd4651447164%_
                             _%tl4651347167%_
                             _%__splice7548075481%_
                             _%target4651647170%_
                             _%tl4651847173%_)
                      (letrec ((_%loop4651947176%_
                                (lambda (_%hd4651747180%_ _%body4652347183%_)
                                  (if (gx#stx-pair? _%hd4651747180%_)
                                      (let ((_%e4652047186%_
                                             (gx#syntax-e _%hd4651747180%_)))
                                        (let ((_%lp-tl4652247193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4652047186%_)))
                                              (_%lp-hd4652147190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4652047186%_))))
                                          (_%loop4651947176%_
                                           _%lp-tl4652247193%_
                                           (cons _%lp-hd4652147190%_
                                                 _%body4652347183%_))))
                                      (let ((_%body4652447196%_
                                             (reverse _%body4652347183%_)))
                                        (let ((_%L47200%_ _%body4652447196%_)
                                              (_%L47202%_ _%hd4651447164%_)
                                              (_%L47203%_ _%hd4651147154%_)
                                              (_%L47204%_ _%hd4650847144%_))
                                          (if (and (gx#identifier? _%L47204%_)
                                                   (gx#identifier? _%L47202%_)
                                                   (gx#identifier? _%L47203%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47203%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47203%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47203%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47203%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7547875479%_
                                               _%L47200%_
                                               _%L47202%_
                                               _%L47203%_
                                               _%L47204%_)
                                              (_%__match7567075671%_
                                               _%e4650347120%_
                                               _%hd4650247124%_
                                               _%tl4650147127%_
                                               _%e4650647130%_
                                               _%hd4650547134%_
                                               _%tl4650447137%_
                                               _%e4650947140%_
                                               _%hd4650847144%_
                                               _%tl4650747147%_
                                               _%e4651247150%_
                                               _%hd4651147154%_
                                               _%tl4651047157%_))))))))
                        (_%loop4651947176%_ _%target4651647170%_ '()))))
                   (_%__match7560675607%_
                    (lambda (_%e4646647273%_
                             _%hd4646547277%_
                             _%tl4646447280%_
                             _%e4646947283%_
                             _%hd4646847287%_
                             _%tl4646747290%_
                             _%e4647247293%_
                             _%hd4647147297%_
                             _%tl4647047300%_
                             _%e4647547303%_
                             _%hd4647447307%_
                             _%tl4647347310%_
                             _%e4647847313%_
                             _%hd4647747317%_
                             _%tl4647647320%_
                             _%e4648147323%_
                             _%hd4648047327%_
                             _%tl4647947330%_
                             _%e4648447333%_
                             _%hd4648347337%_
                             _%tl4648247340%_
                             _%e4648747343%_
                             _%hd4648647347%_
                             _%tl4648547350%_
                             _%__splice7547675477%_
                             _%target4648847353%_
                             _%tl4649047356%_)
                      (letrec ((_%loop4649147359%_
                                (lambda (_%hd4648947363%_ _%body4649547366%_)
                                  (if (gx#stx-pair? _%hd4648947363%_)
                                      (let ((_%e4649247369%_
                                             (gx#syntax-e _%hd4648947363%_)))
                                        (let ((_%lp-tl4649447376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649247369%_)))
                                              (_%lp-hd4649347373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649247369%_))))
                                          (_%loop4649147359%_
                                           _%lp-tl4649447376%_
                                           (cons _%lp-hd4649347373%_
                                                 _%body4649547366%_))))
                                      (let ((_%body4649647379%_
                                             (reverse _%body4649547366%_)))
                                        (let ((_%L47383%_ _%body4649647379%_)
                                              (_%L47385%_ _%hd4648647347%_)
                                              (_%L47386%_ _%hd4648347337%_)
                                              (_%L47387%_ _%hd4648047327%_)
                                              (_%L47388%_ _%hd4647447307%_)
                                              (_%L47389%_ _%hd4647147297%_))
                                          (if (and (gx#identifier? _%L47389%_)
                                                   (gx#identifier? _%L47385%_)
                                                   (gx#identifier? _%L47386%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47386%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47386%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47386%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47386%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7547475475%_
                                               _%L47383%_
                                               _%L47385%_
                                               _%L47386%_
                                               _%L47387%_
                                               _%L47388%_
                                               _%L47389%_)
                                              (_%__match7567075671%_
                                               _%e4646647273%_
                                               _%hd4646547277%_
                                               _%tl4646447280%_
                                               _%e4646947283%_
                                               _%hd4646847287%_
                                               _%tl4646747290%_
                                               _%e4647247293%_
                                               _%hd4647147297%_
                                               _%tl4647047300%_
                                               _%e4647547303%_
                                               _%hd4647447307%_
                                               _%tl4647347310%_))))))))
                        (_%loop4649147359%_ _%target4648847353%_ '()))))
                   (_%__match7557475575%_
                    (lambda (_%e4646647273%_
                             _%hd4646547277%_
                             _%tl4646447280%_
                             _%e4646947283%_
                             _%hd4646847287%_
                             _%tl4646747290%_
                             _%e4647247293%_
                             _%hd4647147297%_
                             _%tl4647047300%_
                             _%e4647547303%_
                             _%hd4647447307%_
                             _%tl4647347310%_
                             _%e4647847313%_
                             _%hd4647747317%_
                             _%tl4647647320%_)
                      (if (gx#identifier? _%hd4647747317%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80522_|
                               _%hd4647747317%_)
                              (if (gx#stx-pair? _%tl4647647320%_)
                                  (let ((_%e4648147323%_
                                         (gx#syntax-e _%tl4647647320%_)))
                                    (let ((_%tl4647947330%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4648147323%_)))
                                          (_%hd4648047327%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4648147323%_))))
                                      (if (gx#stx-pair? _%tl4647947330%_)
                                          (let ((_%e4648447333%_
                                                 (gx#syntax-e
                                                  _%tl4647947330%_)))
                                            (let ((_%tl4648247340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4648447333%_)))
                                                  (_%hd4648347337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4648447333%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4648247340%_)
                                                  (let ((_%e4648747343%_
                                                         (gx#syntax-e
                                                          _%tl4648247340%_)))
                                                    (let ((_%tl4648547350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4648747343%_)))
                                                          (_%hd4648647347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4648747343%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4648547350%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646747290%_)
                                                              (let ((_%__splice7547675477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646747290%_ '0)))
                        (let ((_%tl4649047356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7547675477%_ '1)))
                              (_%target4648847353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7547675477%_ '0))))
                          (if (gx#stx-null? _%tl4649047356%_)
                              (_%__match7560675607%_
                               _%e4646647273%_
                               _%hd4646547277%_
                               _%tl4646447280%_
                               _%e4646947283%_
                               _%hd4646847287%_
                               _%tl4646747290%_
                               _%e4647247293%_
                               _%hd4647147297%_
                               _%tl4647047300%_
                               _%e4647547303%_
                               _%hd4647447307%_
                               _%tl4647347310%_
                               _%e4647847313%_
                               _%hd4647747317%_
                               _%tl4647647320%_
                               _%e4648147323%_
                               _%hd4648047327%_
                               _%tl4647947330%_
                               _%e4648447333%_
                               _%hd4648347337%_
                               _%tl4648247340%_
                               _%e4648747343%_
                               _%hd4648647347%_
                               _%tl4648547350%_
                               _%__splice7547675477%_
                               _%target4648847353%_
                               _%tl4649047356%_)
                              (if (gx#stx-pair? _%hd4647147297%_)
                                  (let ((_%e4660246754%_
                                         (gx#syntax-e _%hd4647147297%_)))
                                    (let ((_%tl4660046761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660246754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660246754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4647147297%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (if (gx#stx-pair/null? _%tl4646747290%_)
                              (let ((_%__splice7549275493%_
                                     (gx#syntax-split-splice
                                      _%tl4646747290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7577875779%_
                                       _%e4646647273%_
                                       _%hd4646547277%_
                                       _%tl4646447280%_
                                       _%e4646947283%_
                                       _%hd4646847287%_
                                       _%tl4646747290%_
                                       _%e4647247293%_
                                       _%hd4647147297%_
                                       _%tl4647047300%_
                                       _%e4660246754%_
                                       _%hd4660146758%_
                                       _%tl4660046761%_
                                       _%__splice7549275493%_
                                       _%target4660346764%_
                                       _%tl4660546767%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4647447307%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80521_|
                                                           _%hd4647447307%_)
                                                          (if (gx#stx-null?
                                                               _%tl4648247340%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4646747290%_)
                          (let ((_%__splice7548875489%_
                                 (gx#syntax-split-splice _%tl4646747290%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7548875489%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7548875489%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7574675747%_
                                   _%e4646647273%_
                                   _%hd4646547277%_
                                   _%tl4646447280%_
                                   _%e4646947283%_
                                   _%hd4646847287%_
                                   _%tl4646747290%_
                                   _%e4647247293%_
                                   _%hd4647147297%_
                                   _%tl4647047300%_
                                   _%e4647547303%_
                                   _%hd4647447307%_
                                   _%tl4647347310%_
                                   _%e4647847313%_
                                   _%hd4647747317%_
                                   _%tl4647647320%_
                                   _%e4648147323%_
                                   _%hd4648047327%_
                                   _%tl4647947330%_
                                   _%e4648447333%_
                                   _%hd4648347337%_
                                   _%tl4648247340%_
                                   _%__splice7548875489%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4647147297%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4647147297%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (if (gx#stx-pair/null? _%tl4646747290%_)
                                  (let ((_%__splice7549275493%_
                                         (gx#syntax-split-splice
                                          _%tl4646747290%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7577875779%_
                                           _%e4646647273%_
                                           _%hd4646547277%_
                                           _%tl4646447280%_
                                           _%e4646947283%_
                                           _%hd4646847287%_
                                           _%tl4646747290%_
                                           _%e4647247293%_
                                           _%hd4647147297%_
                                           _%tl4647047300%_
                                           _%e4660246754%_
                                           _%hd4660146758%_
                                           _%tl4660046761%_
                                           _%__splice7549275493%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4647147297%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (if (gx#stx-pair/null? _%tl4646747290%_)
                              (let ((_%__splice7549275493%_
                                     (gx#syntax-split-splice
                                      _%tl4646747290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7577875779%_
                                       _%e4646647273%_
                                       _%hd4646547277%_
                                       _%tl4646447280%_
                                       _%e4646947283%_
                                       _%hd4646847287%_
                                       _%tl4646747290%_
                                       _%e4647247293%_
                                       _%hd4647147297%_
                                       _%tl4647047300%_
                                       _%e4660246754%_
                                       _%hd4660146758%_
                                       _%tl4660046761%_
                                       _%__splice7549275493%_
                                       _%target4660346764%_
                                       _%tl4660546767%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4647147297%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4647147297%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4646747290%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4646747290%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4646647273%_
                                   _%hd4646547277%_
                                   _%tl4646447280%_
                                   _%e4646947283%_
                                   _%hd4646847287%_
                                   _%tl4646747290%_
                                   _%e4647247293%_
                                   _%hd4647147297%_
                                   _%tl4647047300%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646747290%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646747290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4646647273%_
                       _%hd4646547277%_
                       _%tl4646447280%_
                       _%e4646947283%_
                       _%hd4646847287%_
                       _%tl4646747290%_
                       _%e4647247293%_
                       _%hd4647147297%_
                       _%tl4647047300%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-null? _%tl4647647320%_)
                                      (if (gx#stx-pair/null? _%tl4646747290%_)
                                          (let ((_%__splice7548075481%_
                                                 (gx#syntax-split-splice
                                                  _%tl4646747290%_
                                                  '0)))
                                            (let ((_%tl4651847173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7548075481%_
                                                      '1)))
                                                  (_%target4651647170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7548075481%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4651847173%_)
                                                  (_%__match7564675647%_
                                                   _%e4646647273%_
                                                   _%hd4646547277%_
                                                   _%tl4646447280%_
                                                   _%e4646947283%_
                                                   _%hd4646847287%_
                                                   _%tl4646747290%_
                                                   _%e4647247293%_
                                                   _%hd4647147297%_
                                                   _%tl4647047300%_
                                                   _%e4647547303%_
                                                   _%hd4647447307%_
                                                   _%tl4647347310%_
                                                   _%e4647847313%_
                                                   _%hd4647747317%_
                                                   _%tl4647647320%_
                                                   _%__splice7548075481%_
                                                   _%target4651647170%_
                                                   _%tl4651847173%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4647147297%_)
                                                      (let ((_%e4660246754%_
                                                             (gx#syntax-e
                                                              _%hd4647147297%_)))
                                                        (let ((_%tl4660046761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660246754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660246754%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646747290%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646747290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4646647273%_
                                                           _%hd4646547277%_
                                                           _%tl4646447280%_
                                                           _%e4646947283%_
                                                           _%hd4646847287%_
                                                           _%tl4646747290%_
                                                           _%e4647247293%_
                                                           _%hd4647147297%_
                                                           _%tl4647047300%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                              (if (gx#stx-null? _%tl4647647320%_)
                                  (if (gx#stx-pair/null? _%tl4646747290%_)
                                      (let ((_%__splice7548075481%_
                                             (gx#syntax-split-splice
                                              _%tl4646747290%_
                                              '0)))
                                        (let ((_%tl4651847173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7548075481%_
                                                  '1)))
                                              (_%target4651647170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7548075481%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4651847173%_)
                                              (_%__match7564675647%_
                                               _%e4646647273%_
                                               _%hd4646547277%_
                                               _%tl4646447280%_
                                               _%e4646947283%_
                                               _%hd4646847287%_
                                               _%tl4646747290%_
                                               _%e4647247293%_
                                               _%hd4647147297%_
                                               _%tl4647047300%_
                                               _%e4647547303%_
                                               _%hd4647447307%_
                                               _%tl4647347310%_
                                               _%e4647847313%_
                                               _%hd4647747317%_
                                               _%tl4647647320%_
                                               _%__splice7548075481%_
                                               _%target4651647170%_
                                               _%tl4651847173%_)
                                              (if (gx#stx-pair?
                                                   _%hd4647147297%_)
                                                  (let ((_%e4660246754%_
                                                         (gx#syntax-e
                                                          _%hd4647147297%_)))
                                                    (let ((_%tl4660046761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660246754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660246754%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                  (if (gx#identifier? _%hd4647447307%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80521_|
                                           _%hd4647447307%_)
                                          (if (gx#stx-pair? _%tl4647647320%_)
                                              (let ((_%e4657446886%_
                                                     (gx#syntax-e
                                                      _%tl4647647320%_)))
                                                (let ((_%tl4657246893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657446886%_)))
                                                      (_%hd4657346890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657446886%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657246893%_)
                                                      (let ((_%e4657746896%_
                                                             (gx#syntax-e
                                                              _%tl4657246893%_)))
                                                        (let ((_%tl4657546903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746896%_)))
                      (_%hd4657646900%_
                       (let () (declare (not safe)) (##car _%e4657746896%_))))
                  (if (gx#stx-null? _%tl4657546903%_)
                      (if (gx#stx-pair/null? _%tl4646747290%_)
                          (let ((_%__splice7548875489%_
                                 (gx#syntax-split-splice _%tl4646747290%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7548875489%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7548875489%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7574675747%_
                                   _%e4646647273%_
                                   _%hd4646547277%_
                                   _%tl4646447280%_
                                   _%e4646947283%_
                                   _%hd4646847287%_
                                   _%tl4646747290%_
                                   _%e4647247293%_
                                   _%hd4647147297%_
                                   _%tl4647047300%_
                                   _%e4647547303%_
                                   _%hd4647447307%_
                                   _%tl4647347310%_
                                   _%e4647847313%_
                                   _%hd4647747317%_
                                   _%tl4647647320%_
                                   _%e4657446886%_
                                   _%hd4657346890%_
                                   _%tl4657246893%_
                                   _%e4657746896%_
                                   _%hd4657646900%_
                                   _%tl4657546903%_
                                   _%__splice7548875489%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4647147297%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4647147297%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (if (gx#stx-pair/null? _%tl4646747290%_)
                                  (let ((_%__splice7549275493%_
                                         (gx#syntax-split-splice
                                          _%tl4646747290%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7577875779%_
                                           _%e4646647273%_
                                           _%hd4646547277%_
                                           _%tl4646447280%_
                                           _%e4646947283%_
                                           _%hd4646847287%_
                                           _%tl4646747290%_
                                           _%e4647247293%_
                                           _%hd4647147297%_
                                           _%tl4647047300%_
                                           _%e4660246754%_
                                           _%hd4660146758%_
                                           _%tl4660046761%_
                                           _%__splice7549275493%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_))))))
              (if (gx#stx-pair? _%hd4647147297%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4647147297%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4646747290%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4646747290%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4646647273%_
                                   _%hd4646547277%_
                                   _%tl4646447280%_
                                   _%e4646947283%_
                                   _%hd4646847287%_
                                   _%tl4646747290%_
                                   _%e4647247293%_
                                   _%hd4647147297%_
                                   _%tl4647047300%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4647147297%_)
                                                  (let ((_%e4660246754%_
                                                         (gx#syntax-e
                                                          _%hd4647147297%_)))
                                                    (let ((_%tl4660046761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660246754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660246754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4646747290%_)
                                                          (let ((_%__splice7549275493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4646747290%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7577875779%_
                           _%e4646647273%_
                           _%hd4646547277%_
                           _%tl4646447280%_
                           _%e4646947283%_
                           _%hd4646847287%_
                           _%tl4646747290%_
                           _%e4647247293%_
                           _%hd4647147297%_
                           _%tl4647047300%_
                           _%e4660246754%_
                           _%hd4660146758%_
                           _%tl4660046761%_
                           _%__splice7549275493%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646747290%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646747290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4646647273%_
                       _%hd4646547277%_
                       _%tl4646447280%_
                       _%e4646947283%_
                       _%hd4646847287%_
                       _%tl4646747290%_
                       _%e4647247293%_
                       _%hd4647147297%_
                       _%tl4647047300%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646747290%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646747290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4646647273%_
                                                           _%hd4646547277%_
                                                           _%tl4646447280%_
                                                           _%e4646947283%_
                                                           _%hd4646847287%_
                                                           _%tl4646747290%_
                                                           _%e4647247293%_
                                                           _%hd4647147297%_
                                                           _%tl4647047300%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))))
                          (if (gx#stx-null? _%tl4647647320%_)
                              (if (gx#stx-pair/null? _%tl4646747290%_)
                                  (let ((_%__splice7548075481%_
                                         (gx#syntax-split-splice
                                          _%tl4646747290%_
                                          '0)))
                                    (let ((_%tl4651847173%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7548075481%_
                                              '1)))
                                          (_%target4651647170%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7548075481%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651847173%_)
                                          (_%__match7564675647%_
                                           _%e4646647273%_
                                           _%hd4646547277%_
                                           _%tl4646447280%_
                                           _%e4646947283%_
                                           _%hd4646847287%_
                                           _%tl4646747290%_
                                           _%e4647247293%_
                                           _%hd4647147297%_
                                           _%tl4647047300%_
                                           _%e4647547303%_
                                           _%hd4647447307%_
                                           _%tl4647347310%_
                                           _%e4647847313%_
                                           _%hd4647747317%_
                                           _%tl4647647320%_
                                           _%__splice7548075481%_
                                           _%target4651647170%_
                                           _%tl4651847173%_)
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                              (if (gx#identifier? _%hd4647447307%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80521_|
                                       _%hd4647447307%_)
                                      (if (gx#stx-pair? _%tl4647647320%_)
                                          (let ((_%e4657446886%_
                                                 (gx#syntax-e
                                                  _%tl4647647320%_)))
                                            (let ((_%tl4657246893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657446886%_)))
                                                  (_%hd4657346890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657446886%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4657246893%_)
                                                  (let ((_%e4657746896%_
                                                         (gx#syntax-e
                                                          _%tl4657246893%_)))
                                                    (let ((_%tl4657546903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746896%_)))
                                                          (_%hd4657646900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746896%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4657546903%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646747290%_)
                                                              (let ((_%__splice7548875489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646747290%_ '0)))
                        (let ((_%tl4658046909%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7548875489%_ '1)))
                              (_%target4657846906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7548875489%_ '0))))
                          (if (gx#stx-null? _%tl4658046909%_)
                              (_%__match7574675747%_
                               _%e4646647273%_
                               _%hd4646547277%_
                               _%tl4646447280%_
                               _%e4646947283%_
                               _%hd4646847287%_
                               _%tl4646747290%_
                               _%e4647247293%_
                               _%hd4647147297%_
                               _%tl4647047300%_
                               _%e4647547303%_
                               _%hd4647447307%_
                               _%tl4647347310%_
                               _%e4647847313%_
                               _%hd4647747317%_
                               _%tl4647647320%_
                               _%e4657446886%_
                               _%hd4657346890%_
                               _%tl4657246893%_
                               _%e4657746896%_
                               _%hd4657646900%_
                               _%tl4657546903%_
                               _%__splice7548875489%_
                               _%target4657846906%_
                               _%tl4658046909%_)
                              (if (gx#stx-pair? _%hd4647147297%_)
                                  (let ((_%e4660246754%_
                                         (gx#syntax-e _%hd4647147297%_)))
                                    (let ((_%tl4660046761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660246754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660246754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4647147297%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (if (gx#stx-pair/null? _%tl4646747290%_)
                              (let ((_%__splice7549275493%_
                                     (gx#syntax-split-splice
                                      _%tl4646747290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7577875779%_
                                       _%e4646647273%_
                                       _%hd4646547277%_
                                       _%tl4646447280%_
                                       _%e4646947283%_
                                       _%hd4646847287%_
                                       _%tl4646747290%_
                                       _%e4647247293%_
                                       _%hd4647147297%_
                                       _%tl4647047300%_
                                       _%e4660246754%_
                                       _%hd4660146758%_
                                       _%tl4660046761%_
                                       _%__splice7549275493%_
                                       _%target4660346764%_
                                       _%tl4660546767%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4647147297%_)
                                                      (let ((_%e4660246754%_
                                                             (gx#syntax-e
                                                              _%hd4647147297%_)))
                                                        (let ((_%tl4660046761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660246754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660246754%_))))
                  (if (gx#stx-pair/null? _%tl4646747290%_)
                      (let ((_%__splice7549275493%_
                             (gx#syntax-split-splice _%tl4646747290%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7577875779%_
                               _%e4646647273%_
                               _%hd4646547277%_
                               _%tl4646447280%_
                               _%e4646947283%_
                               _%hd4646847287%_
                               _%tl4646747290%_
                               _%e4647247293%_
                               _%hd4647147297%_
                               _%tl4647047300%_
                               _%e4660246754%_
                               _%hd4660146758%_
                               _%tl4660046761%_
                               _%__splice7549275493%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646747290%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646747290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4646647273%_
                       _%hd4646547277%_
                       _%tl4646447280%_
                       _%e4646947283%_
                       _%hd4646847287%_
                       _%tl4646747290%_
                       _%e4647247293%_
                       _%hd4647147297%_
                       _%tl4647047300%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646747290%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646747290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4646647273%_
                                                           _%hd4646547277%_
                                                           _%tl4646447280%_
                                                           _%e4646947283%_
                                                           _%hd4646847287%_
                                                           _%tl4646747290%_
                                                           _%e4647247293%_
                                                           _%hd4647147297%_
                                                           _%tl4647047300%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4646747290%_)
                                              (let ((_%__splice7549275493%_
                                                     (gx#syntax-split-splice
                                                      _%tl4646747290%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7577875779%_
                                                       _%e4646647273%_
                                                       _%hd4646547277%_
                                                       _%tl4646447280%_
                                                       _%e4646947283%_
                                                       _%hd4646847287%_
                                                       _%tl4646747290%_
                                                       _%e4647247293%_
                                                       _%hd4647147297%_
                                                       _%tl4647047300%_
                                                       _%e4660246754%_
                                                       _%hd4660146758%_
                                                       _%tl4660046761%_
                                                       _%__splice7549275493%_
                                                       _%target4660346764%_
                                                       _%tl4660546767%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))))
                   (_%__match7554475545%_
                    (lambda (_%e4643347449%_
                             _%hd4643247453%_
                             _%tl4643147456%_
                             _%e4643647459%_
                             _%hd4643547463%_
                             _%tl4643447466%_
                             _%e4643947469%_
                             _%hd4643847473%_
                             _%tl4643747476%_
                             _%e4644247479%_
                             _%hd4644147483%_
                             _%tl4644047486%_
                             _%e4644547489%_
                             _%hd4644447493%_
                             _%tl4644347496%_
                             _%e4644847499%_
                             _%hd4644747503%_
                             _%tl4644647506%_
                             _%__splice7547275473%_
                             _%target4644947509%_
                             _%tl4645147512%_)
                      (letrec ((_%loop4645247515%_
                                (lambda (_%hd4645047519%_ _%body4645647522%_)
                                  (if (gx#stx-pair? _%hd4645047519%_)
                                      (let ((_%e4645347525%_
                                             (gx#syntax-e _%hd4645047519%_)))
                                        (let ((_%lp-tl4645547532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4645347525%_)))
                                              (_%lp-hd4645447529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4645347525%_))))
                                          (_%loop4645247515%_
                                           _%lp-tl4645547532%_
                                           (cons _%lp-hd4645447529%_
                                                 _%body4645647522%_))))
                                      (let ((_%body4645747535%_
                                             (reverse _%body4645647522%_)))
                                        (let ((_%L47539%_ _%body4645747535%_)
                                              (_%L47541%_ _%hd4644747503%_)
                                              (_%L47542%_ _%hd4644447493%_)
                                              (_%L47543%_ _%hd4644147483%_)
                                              (_%L47544%_ _%hd4643847473%_))
                                          (if (and (gx#identifier? _%L47544%_)
                                                   (gx#identifier? _%L47542%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47542%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47542%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47542%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47542%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47542%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7547075471%_
                                               _%L47539%_
                                               _%L47541%_
                                               _%L47542%_
                                               _%L47543%_
                                               _%L47544%_)
                                              (_%__match7557475575%_
                                               _%e4643347449%_
                                               _%hd4643247453%_
                                               _%tl4643147456%_
                                               _%e4643647459%_
                                               _%hd4643547463%_
                                               _%tl4643447466%_
                                               _%e4643947469%_
                                               _%hd4643847473%_
                                               _%tl4643747476%_
                                               _%e4644247479%_
                                               _%hd4644147483%_
                                               _%tl4644047486%_
                                               _%e4644547489%_
                                               _%hd4644447493%_
                                               _%tl4644347496%_))))))))
                        (_%loop4645247515%_ _%target4644947509%_ '())))))
              (if (gx#stx-pair? _%__stx7546775468%_)
                  (let ((_%e4643347449%_ (gx#syntax-e _%__stx7546775468%_)))
                    (let ((_%tl4643147456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4643347449%_)))
                          (_%hd4643247453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4643347449%_))))
                      (if (gx#stx-pair? _%tl4643147456%_)
                          (let ((_%e4643647459%_
                                 (gx#syntax-e _%tl4643147456%_)))
                            (let ((_%tl4643447466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4643647459%_)))
                                  (_%hd4643547463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4643647459%_))))
                              (if (gx#stx-pair? _%hd4643547463%_)
                                  (let ((_%e4643947469%_
                                         (gx#syntax-e _%hd4643547463%_)))
                                    (let ((_%tl4643747476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4643947469%_)))
                                          (_%hd4643847473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4643947469%_))))
                                      (if (gx#stx-pair? _%tl4643747476%_)
                                          (let ((_%e4644247479%_
                                                 (gx#syntax-e
                                                  _%tl4643747476%_)))
                                            (let ((_%tl4644047486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4644247479%_)))
                                                  (_%hd4644147483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4644247479%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4644047486%_)
                                                  (let ((_%e4644547489%_
                                                         (gx#syntax-e
                                                          _%tl4644047486%_)))
                                                    (let ((_%tl4644347496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4644547489%_)))
                                                          (_%hd4644447493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4644547489%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4644347496%_)
                                                          (let ((_%e4644847499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4644347496%_)))
                    (let ((_%tl4644647506%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4644847499%_)))
                          (_%hd4644747503%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4644847499%_))))
                      (if (gx#stx-null? _%tl4644647506%_)
                          (if (gx#stx-pair/null? _%tl4643447466%_)
                              (let ((_%__splice7547275473%_
                                     (gx#syntax-split-splice
                                      _%tl4643447466%_
                                      '0)))
                                (let ((_%tl4645147512%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7547275473%_
                                          '1)))
                                      (_%target4644947509%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7547275473%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4645147512%_)
                                      (_%__match7554475545%_
                                       _%e4643347449%_
                                       _%hd4643247453%_
                                       _%tl4643147456%_
                                       _%e4643647459%_
                                       _%hd4643547463%_
                                       _%tl4643447466%_
                                       _%e4643947469%_
                                       _%hd4643847473%_
                                       _%tl4643747476%_
                                       _%e4644247479%_
                                       _%hd4644147483%_
                                       _%tl4644047486%_
                                       _%e4644547489%_
                                       _%hd4644447493%_
                                       _%tl4644347496%_
                                       _%e4644847499%_
                                       _%hd4644747503%_
                                       _%tl4644647506%_
                                       _%__splice7547275473%_
                                       _%target4644947509%_
                                       _%tl4645147512%_)
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))))
                              (if (gx#stx-pair? _%hd4643847473%_)
                                  (let ((_%e4660246754%_
                                         (gx#syntax-e _%hd4643847473%_)))
                                    (let ((_%tl4660046761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660246754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660246754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                          (if (gx#identifier? _%hd4644447493%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80522_|
                                   _%hd4644447493%_)
                                  (if (gx#stx-pair? _%tl4644647506%_)
                                      (let ((_%e4648447333%_
                                             (gx#syntax-e _%tl4644647506%_)))
                                        (let ((_%tl4648247340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4648447333%_)))
                                              (_%hd4648347337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4648447333%_))))
                                          (if (gx#stx-pair? _%tl4648247340%_)
                                              (let ((_%e4648747343%_
                                                     (gx#syntax-e
                                                      _%tl4648247340%_)))
                                                (let ((_%tl4648547350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648747343%_)))
                                                      (_%hd4648647347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648747343%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4648547350%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643447466%_)
                                                          (let ((_%__splice7547675477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643447466%_ '0)))
                    (let ((_%tl4649047356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7547675477%_ '1)))
                          (_%target4648847353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7547675477%_ '0))))
                      (if (gx#stx-null? _%tl4649047356%_)
                          (_%__match7560675607%_
                           _%e4643347449%_
                           _%hd4643247453%_
                           _%tl4643147456%_
                           _%e4643647459%_
                           _%hd4643547463%_
                           _%tl4643447466%_
                           _%e4643947469%_
                           _%hd4643847473%_
                           _%tl4643747476%_
                           _%e4644247479%_
                           _%hd4644147483%_
                           _%tl4644047486%_
                           _%e4644547489%_
                           _%hd4644447493%_
                           _%tl4644347496%_
                           _%e4644847499%_
                           _%hd4644747503%_
                           _%tl4644647506%_
                           _%e4648447333%_
                           _%hd4648347337%_
                           _%tl4648247340%_
                           _%e4648747343%_
                           _%hd4648647347%_
                           _%tl4648547350%_
                           _%__splice7547675477%_
                           _%target4648847353%_
                           _%tl4649047356%_)
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_))))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4643447466%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4643447466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4643347449%_
                                   _%hd4643247453%_
                                   _%tl4643147456%_
                                   _%e4643647459%_
                                   _%hd4643547463%_
                                   _%tl4643447466%_
                                   _%e4643947469%_
                                   _%hd4643847473%_
                                   _%tl4643747476%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4644147483%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80521_|
                                                       _%hd4644147483%_)
                                                      (if (gx#stx-null?
                                                           _%tl4648247340%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4643447466%_)
                                                              (let ((_%__splice7548875489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4643447466%_ '0)))
                        (let ((_%tl4658046909%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7548875489%_ '1)))
                              (_%target4657846906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7548875489%_ '0))))
                          (if (gx#stx-null? _%tl4658046909%_)
                              (_%__match7574675747%_
                               _%e4643347449%_
                               _%hd4643247453%_
                               _%tl4643147456%_
                               _%e4643647459%_
                               _%hd4643547463%_
                               _%tl4643447466%_
                               _%e4643947469%_
                               _%hd4643847473%_
                               _%tl4643747476%_
                               _%e4644247479%_
                               _%hd4644147483%_
                               _%tl4644047486%_
                               _%e4644547489%_
                               _%hd4644447493%_
                               _%tl4644347496%_
                               _%e4644847499%_
                               _%hd4644747503%_
                               _%tl4644647506%_
                               _%e4648447333%_
                               _%hd4648347337%_
                               _%tl4648247340%_
                               _%__splice7548875489%_
                               _%target4657846906%_
                               _%tl4658046909%_)
                              (if (gx#stx-pair? _%hd4643847473%_)
                                  (let ((_%e4660246754%_
                                         (gx#syntax-e _%hd4643847473%_)))
                                    (let ((_%tl4660046761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660246754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660246754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (if (gx#stx-pair/null? _%tl4643447466%_)
                              (let ((_%__splice7549275493%_
                                     (gx#syntax-split-splice
                                      _%tl4643447466%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7549275493%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7577875779%_
                                       _%e4643347449%_
                                       _%hd4643247453%_
                                       _%tl4643147456%_
                                       _%e4643647459%_
                                       _%hd4643547463%_
                                       _%tl4643447466%_
                                       _%e4643947469%_
                                       _%hd4643847473%_
                                       _%tl4643747476%_
                                       _%e4660246754%_
                                       _%hd4660146758%_
                                       _%tl4660046761%_
                                       _%__splice7549275493%_
                                       _%target4660346764%_
                                       _%tl4660546767%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4643447466%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4643447466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4643347449%_
                                   _%hd4643247453%_
                                   _%tl4643147456%_
                                   _%e4643647459%_
                                   _%hd4643547463%_
                                   _%tl4643447466%_
                                   _%e4643947469%_
                                   _%hd4643847473%_
                                   _%tl4643747476%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643847473%_)
                                                      (let ((_%e4660246754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660046761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660246754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660246754%_))))
                  (if (gx#stx-pair/null? _%tl4643447466%_)
                      (let ((_%__splice7549275493%_
                             (gx#syntax-split-splice _%tl4643447466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7577875779%_
                               _%e4643347449%_
                               _%hd4643247453%_
                               _%tl4643147456%_
                               _%e4643647459%_
                               _%hd4643547463%_
                               _%tl4643447466%_
                               _%e4643947469%_
                               _%hd4643847473%_
                               _%tl4643747476%_
                               _%e4660246754%_
                               _%hd4660146758%_
                               _%tl4660046761%_
                               _%__splice7549275493%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643447466%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643447466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4643347449%_
                                                           _%hd4643247453%_
                                                           _%tl4643147456%_
                                                           _%e4643647459%_
                                                           _%hd4643547463%_
                                                           _%tl4643447466%_
                                                           _%e4643947469%_
                                                           _%hd4643847473%_
                                                           _%tl4643747476%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                  (if (gx#identifier? _%hd4644147483%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80521_|
                                           _%hd4644147483%_)
                                          (if (gx#stx-pair? _%tl4644647506%_)
                                              (let ((_%e4657746896%_
                                                     (gx#syntax-e
                                                      _%tl4644647506%_)))
                                                (let ((_%tl4657546903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746896%_)))
                                                      (_%hd4657646900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746896%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4657546903%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643447466%_)
                                                          (let ((_%__splice7548875489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643447466%_ '0)))
                    (let ((_%tl4658046909%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7548875489%_ '1)))
                          (_%target4657846906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7548875489%_ '0))))
                      (if (gx#stx-null? _%tl4658046909%_)
                          (_%__match7574675747%_
                           _%e4643347449%_
                           _%hd4643247453%_
                           _%tl4643147456%_
                           _%e4643647459%_
                           _%hd4643547463%_
                           _%tl4643447466%_
                           _%e4643947469%_
                           _%hd4643847473%_
                           _%tl4643747476%_
                           _%e4644247479%_
                           _%hd4644147483%_
                           _%tl4644047486%_
                           _%e4644547489%_
                           _%hd4644447493%_
                           _%tl4644347496%_
                           _%e4644847499%_
                           _%hd4644747503%_
                           _%tl4644647506%_
                           _%e4657746896%_
                           _%hd4657646900%_
                           _%tl4657546903%_
                           _%__splice7548875489%_
                           _%target4657846906%_
                           _%tl4658046909%_)
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_))))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660046761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660246754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660246754%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (if (gx#stx-pair/null? _%tl4643447466%_)
                          (let ((_%__splice7549275493%_
                                 (gx#syntax-split-splice _%tl4643447466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7549275493%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7549275493%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7577875779%_
                                   _%e4643347449%_
                                   _%hd4643247453%_
                                   _%tl4643147456%_
                                   _%e4643647459%_
                                   _%hd4643547463%_
                                   _%tl4643447466%_
                                   _%e4643947469%_
                                   _%hd4643847473%_
                                   _%tl4643747476%_
                                   _%e4660246754%_
                                   _%hd4660146758%_
                                   _%tl4660046761%_
                                   _%__splice7549275493%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4643847473%_)
                                                  (let ((_%e4660246754%_
                                                         (gx#syntax-e
                                                          _%hd4643847473%_)))
                                                    (let ((_%tl4660046761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660246754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660246754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643447466%_)
                                                          (let ((_%__splice7549275493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643447466%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7549275493%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7577875779%_
                           _%e4643347449%_
                           _%hd4643247453%_
                           _%tl4643147456%_
                           _%e4643647459%_
                           _%hd4643547463%_
                           _%tl4643447466%_
                           _%e4643947469%_
                           _%hd4643847473%_
                           _%tl4643747476%_
                           _%e4660246754%_
                           _%hd4660146758%_
                           _%tl4660046761%_
                           _%__splice7549275493%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643447466%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643447466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4643347449%_
                       _%hd4643247453%_
                       _%tl4643147456%_
                       _%e4643647459%_
                       _%hd4643547463%_
                       _%tl4643447466%_
                       _%e4643947469%_
                       _%hd4643847473%_
                       _%tl4643747476%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643447466%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643447466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4643347449%_
                                                           _%hd4643247453%_
                                                           _%tl4643147456%_
                                                           _%e4643647459%_
                                                           _%hd4643547463%_
                                                           _%tl4643447466%_
                                                           _%e4643947469%_
                                                           _%hd4643847473%_
                                                           _%tl4643747476%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                              (if (gx#identifier? _%hd4644147483%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80521_|
                                       _%hd4644147483%_)
                                      (if (gx#stx-pair? _%tl4644647506%_)
                                          (let ((_%e4657746896%_
                                                 (gx#syntax-e
                                                  _%tl4644647506%_)))
                                            (let ((_%tl4657546903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746896%_)))
                                                  (_%hd4657646900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746896%_))))
                                              (if (gx#stx-null?
                                                   _%tl4657546903%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643447466%_)
                                                      (let ((_%__splice7548875489%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643447466%_
                                                              '0)))
                                                        (let ((_%tl4658046909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7548875489%_ '1)))
                      (_%target4657846906%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7548875489%_ '0))))
                  (if (gx#stx-null? _%tl4658046909%_)
                      (_%__match7574675747%_
                       _%e4643347449%_
                       _%hd4643247453%_
                       _%tl4643147456%_
                       _%e4643647459%_
                       _%hd4643547463%_
                       _%tl4643447466%_
                       _%e4643947469%_
                       _%hd4643847473%_
                       _%tl4643747476%_
                       _%e4644247479%_
                       _%hd4644147483%_
                       _%tl4644047486%_
                       _%e4644547489%_
                       _%hd4644447493%_
                       _%tl4644347496%_
                       _%e4644847499%_
                       _%hd4644747503%_
                       _%tl4644647506%_
                       _%e4657746896%_
                       _%hd4657646900%_
                       _%tl4657546903%_
                       _%__splice7548875489%_
                       _%target4657846906%_
                       _%tl4658046909%_)
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660246754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660046761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660246754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660246754%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643847473%_)
                                                      (let ((_%e4660246754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660046761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660246754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660246754%_))))
                  (if (gx#stx-pair/null? _%tl4643447466%_)
                      (let ((_%__splice7549275493%_
                             (gx#syntax-split-splice _%tl4643447466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7577875779%_
                               _%e4643347449%_
                               _%hd4643247453%_
                               _%tl4643147456%_
                               _%e4643647459%_
                               _%hd4643547463%_
                               _%tl4643447466%_
                               _%e4643947469%_
                               _%hd4643847473%_
                               _%tl4643747476%_
                               _%e4660246754%_
                               _%hd4660146758%_
                               _%tl4660046761%_
                               _%__splice7549275493%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643447466%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643447466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4643347449%_
                       _%hd4643247453%_
                       _%tl4643147456%_
                       _%e4643647459%_
                       _%hd4643547463%_
                       _%tl4643447466%_
                       _%e4643947469%_
                       _%hd4643847473%_
                       _%tl4643747476%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660246754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660046761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660246754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660246754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643447466%_)
                                                  (let ((_%__splice7549275493%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643447466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7549275493%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7577875779%_
                                                           _%e4643347449%_
                                                           _%hd4643247453%_
                                                           _%tl4643147456%_
                                                           _%e4643647459%_
                                                           _%hd4643547463%_
                                                           _%tl4643447466%_
                                                           _%e4643947469%_
                                                           _%hd4643847473%_
                                                           _%tl4643747476%_
                                                           _%e4660246754%_
                                                           _%hd4660146758%_
                                                           _%tl4660046761%_
                                                           _%__splice7549275493%_
                                                           _%target4660346764%_
                                                           _%tl4660546767%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642446633%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                  (if (gx#stx-pair? _%hd4643847473%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4643847473%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4643447466%_)
                                              (let ((_%__splice7549275493%_
                                                     (gx#syntax-split-splice
                                                      _%tl4643447466%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7549275493%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7577875779%_
                                                       _%e4643347449%_
                                                       _%hd4643247453%_
                                                       _%tl4643147456%_
                                                       _%e4643647459%_
                                                       _%hd4643547463%_
                                                       _%tl4643447466%_
                                                       _%e4643947469%_
                                                       _%hd4643847473%_
                                                       _%tl4643747476%_
                                                       _%e4660246754%_
                                                       _%hd4660146758%_
                                                       _%tl4660046761%_
                                                       _%__splice7549275493%_
                                                       _%target4660346764%_
                                                       _%tl4660546767%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))))
                  (if (gx#stx-null? _%tl4644347496%_)
                      (if (gx#stx-pair/null? _%tl4643447466%_)
                          (let ((_%__splice7548075481%_
                                 (gx#syntax-split-splice _%tl4643447466%_ '0)))
                            (let ((_%tl4651847173%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7548075481%_ '1)))
                                  (_%target4651647170%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7548075481%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651847173%_)
                                  (_%__match7564675647%_
                                   _%e4643347449%_
                                   _%hd4643247453%_
                                   _%tl4643147456%_
                                   _%e4643647459%_
                                   _%hd4643547463%_
                                   _%tl4643447466%_
                                   _%e4643947469%_
                                   _%hd4643847473%_
                                   _%tl4643747476%_
                                   _%e4644247479%_
                                   _%hd4644147483%_
                                   _%tl4644047486%_
                                   _%e4644547489%_
                                   _%hd4644447493%_
                                   _%tl4644347496%_
                                   _%__splice7548075481%_
                                   _%target4651647170%_
                                   _%tl4651847173%_)
                                  (if (gx#stx-pair? _%hd4643847473%_)
                                      (let ((_%e4660246754%_
                                             (gx#syntax-e _%hd4643847473%_)))
                                        (let ((_%tl4660046761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660246754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660046761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660246754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660246754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660246754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660046761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660246754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660246754%_))))
                              (if (gx#stx-pair/null? _%tl4643447466%_)
                                  (let ((_%__splice7549275493%_
                                         (gx#syntax-split-splice
                                          _%tl4643447466%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7549275493%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7577875779%_
                                           _%e4643347449%_
                                           _%hd4643247453%_
                                           _%tl4643147456%_
                                           _%e4643647459%_
                                           _%hd4643547463%_
                                           _%tl4643447466%_
                                           _%e4643947469%_
                                           _%hd4643847473%_
                                           _%tl4643747476%_
                                           _%e4660246754%_
                                           _%hd4660146758%_
                                           _%tl4660046761%_
                                           _%__splice7549275493%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643847473%_)
                                                      (let ((_%e4660246754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660046761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660246754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660246754%_))))
                  (if (gx#stx-pair/null? _%tl4643447466%_)
                      (let ((_%__splice7549275493%_
                             (gx#syntax-split-splice _%tl4643447466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7549275493%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7577875779%_
                               _%e4643347449%_
                               _%hd4643247453%_
                               _%tl4643147456%_
                               _%e4643647459%_
                               _%hd4643547463%_
                               _%tl4643447466%_
                               _%e4643947469%_
                               _%hd4643847473%_
                               _%tl4643747476%_
                               _%e4660246754%_
                               _%hd4660146758%_
                               _%tl4660046761%_
                               _%__splice7549275493%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660246754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660046761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660246754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660246754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643447466%_)
                                                      (let ((_%__splice7549275493%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643447466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7549275493%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7577875779%_
                       _%e4643347449%_
                       _%hd4643247453%_
                       _%tl4643147456%_
                       _%e4643647459%_
                       _%hd4643547463%_
                       _%tl4643447466%_
                       _%e4643947469%_
                       _%hd4643847473%_
                       _%tl4643747476%_
                       _%e4660246754%_
                       _%hd4660146758%_
                       _%tl4660046761%_
                       _%__splice7549275493%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-null? _%hd4643547463%_)
                                      (if (gx#stx-pair/null? _%tl4643447466%_)
                                          (let ((_%__splice7549675497%_
                                                 (gx#syntax-split-splice
                                                  _%tl4643447466%_
                                                  '0)))
                                            (let ((_%tl4662146663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7549675497%_
                                                      '1)))
                                                  (_%target4661946660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7549675497%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4662146663%_)
                                                  (_%__match7580075801%_
                                                   _%e4643347449%_
                                                   _%hd4643247453%_
                                                   _%tl4643147456%_
                                                   _%e4643647459%_
                                                   _%hd4643547463%_
                                                   _%tl4643447466%_
                                                   _%__splice7549675497%_
                                                   _%target4661946660%_
                                                   _%tl4662146663%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47607%_)
        (let* ((_%g4761147645%_
                (lambda (_%g4761247641%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4761247641%_)))
               (_%g4761047768%_
                (lambda (_%g4761247649%_)
                  (if (gx#stx-pair? _%g4761247649%_)
                      (let ((_%e4761847652%_ (gx#syntax-e _%g4761247649%_)))
                        (let ((_%hd4761747656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4761847652%_)))
                              (_%tl4761647659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4761847652%_))))
                          (if (gx#stx-pair? _%tl4761647659%_)
                              (let ((_%e4762147662%_
                                     (gx#syntax-e _%tl4761647659%_)))
                                (let ((_%hd4762047666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4762147662%_)))
                                      (_%tl4761947669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4762147662%_))))
                                  (if (gx#stx-pair? _%hd4762047666%_)
                                      (let ((_%e4762447672%_
                                             (gx#syntax-e _%hd4762047666%_)))
                                        (let ((_%hd4762347676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4762447672%_)))
                                              (_%tl4762247679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4762447672%_))))
                                          (if (gx#stx-pair? _%tl4762247679%_)
                                              (let ((_%e4762747682%_
                                                     (gx#syntax-e
                                                      _%tl4762247679%_)))
                                                (let ((_%hd4762647686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4762747682%_)))
                                                      (_%tl4762547689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4762747682%_))))
                                                  (if (gx#identifier?
                                                       _%hd4762647686%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80523_|
                                                           _%hd4762647686%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4762547689%_)
                                                              (let ((_%e4763047692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4762547689%_)))
                        (let ((_%hd4762947696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4763047692%_)))
                              (_%tl4762847699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4763047692%_))))
                          (if (gx#stx-null? _%tl4762847699%_)
                              (if (gx#stx-pair/null? _%tl4761947669%_)
                                  (let ((_g80524_
                                         (gx#syntax-split-splice
                                          _%tl4761947669%_
                                          '0)))
                                    (begin
                                      (let ((_g80525_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80524_)
                                                   (##vector-length _g80524_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80525_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80525_)))
                                      (let ((_%target4763147702%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80524_ 0)))
                                            (_%tl4763347705%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80524_ 1))))
                                        (if (gx#stx-null? _%tl4763347705%_)
                                            (letrec ((_%loop4763447708%_
                                                      (lambda (_%hd4763247712%_
                                                               _%body4763847715%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4763247712%_)
                                                            (let ((_%e4763547718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4763247712%_)))
                      (let ((_%lp-hd4763647722%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4763547718%_)))
                            (_%lp-tl4763747725%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4763547718%_))))
                        (_%loop4763447708%_
                         _%lp-tl4763747725%_
                         (cons _%lp-hd4763647722%_ _%body4763847715%_))))
                    (let ((_%body4763947728%_ (reverse _%body4763847715%_)))
                      ((lambda (_%L47732%_ _%L47734%_ _%L47735%_)
                         (if (gx#identifier? _%L47735%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47734%_
                                               (cons _%L47735%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4775947762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4776047765%_)
                            (cons _%g4775947762%_ _%g4776047765%_))
                          '()
                          _%L47732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47734%_ (cons _%L47735%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4761147645%_ _%g4761247649%_)))
                       _%body4763947728%_
                       _%hd4762947696%_
                       _%hd4762347676%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4763447708%_
                                               _%target4763147702%_
                                               '()))
                                            (_%g4761147645%_
                                             _%g4761247649%_)))))
                                  (_%g4761147645%_ _%g4761247649%_))
                              (_%g4761147645%_ _%g4761247649%_))))
                      (_%g4761147645%_ _%g4761247649%_))
                  (_%g4761147645%_ _%g4761247649%_))
              (_%g4761147645%_ _%g4761247649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4761147645%_
                                               _%g4761247649%_))))
                                      (_%g4761147645%_ _%g4761247649%_))))
                              (_%g4761147645%_ _%g4761247649%_))))
                      (_%g4761147645%_ _%g4761247649%_)))))
          (_%g4761047768%_ _%$stx47607%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48335%_ _%slot48337%_)
        (let ((_%$e48339%_
               (let ((__obj80363 _%klass48335%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80363
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80363 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80363
                      'slot-types)))))
          (if _%$e48339%_
              ((lambda (_%slot-types48343%_)
                 (assgetq _%slot48337%_ _%slot-types48343%_))
               _%$e48339%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48316%_ _%slot48318%_)
        (let ((_%$e48320%_
               (let ((__obj80364 _%klass48316%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80364
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80364 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80364
                      'slot-defaults)))))
          (if _%$e48320%_
              ((lambda (_%slot-defaults48324%_)
                 (let ((_%$e48327%_
                        (assgetq _%slot48318%_ _%slot-defaults48324%_)))
                   (if _%$e48327%_
                       (gx#syntax-local-introduce _%$e48327%_)
                       '#f)))
               _%$e48320%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48297%_ _%slot48299%_)
        (let ((_%$e48301%_
               (let ((__obj80365 _%klass48297%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80365
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80365 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80365
                      'slot-defaults)))))
          (if _%$e48301%_
              ((lambda (_%slot-defaults48305%_)
                 (let ((_%$e48308%_
                        (assgetq _%slot48299%_ _%slot-defaults48305%_)))
                   (if _%$e48308%_
                       (gx#syntax-local-introduce _%$e48308%_)
                       '#f)))
               _%$e48301%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48065%_ _%slot48067%_)
        (let ((_%contract4806848070%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48065%_
                _%slot48067%_)))
          (if _%contract4806848070%_
              (let* ((_%contract48074%_ _%contract4806848070%_)
                     (_%__stx7580375804%_ _%contract48074%_)
                     (_%g4807948116%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7580375804%_))))
                (let ((_%__kont7580675807%_
                       (lambda (_%L48266%_ _%L48268%_)
                         (not (gx#free-identifier=?
                               _%L48268%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7580875809%_
                       (lambda (_%L48206%_ _%L48208%_ _%L48209%_)
                         (not (gx#free-identifier=?
                               _%L48208%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7581075811%_ (lambda (_%L48143%_) '#f)))
                  (let* ((_%__match7585675857%_
                          (lambda (_%e4809448166%_
                                   _%hd4809348170%_
                                   _%tl4809248173%_
                                   _%e4809748176%_
                                   _%hd4809648180%_
                                   _%tl4809548183%_
                                   _%e4810048186%_
                                   _%hd4809948190%_
                                   _%tl4809848193%_
                                   _%e4810348196%_
                                   _%hd4810248200%_
                                   _%tl4810148203%_)
                            (let ((_%L48206%_ _%hd4810248200%_)
                                  (_%L48208%_ _%hd4809948190%_)
                                  (_%L48209%_ _%hd4809648180%_))
                              (if (and (gx#identifier? _%L48208%_)
                                       (or (gx#free-identifier=?
                                            _%L48208%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48208%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48208%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48208%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7580875809%_
                                   _%L48206%_
                                   _%L48208%_
                                   _%L48209%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4807948116%_))))))
                         (_%__match7582675827%_
                          (lambda (_%e4808548246%_
                                   _%hd4808448250%_
                                   _%tl4808348253%_
                                   _%e4808848256%_
                                   _%hd4808748260%_
                                   _%tl4808648263%_)
                            (let ((_%L48266%_ _%hd4808748260%_)
                                  (_%L48268%_ _%hd4808448250%_))
                              (if (and (gx#identifier? _%L48268%_)
                                       (or (gx#free-identifier=?
                                            _%L48268%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48268%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48268%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48268%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7580675807%_ _%L48266%_ _%L48268%_)
                                  (if (gx#identifier? _%hd4808448250%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80526_|
                                           _%hd4808448250%_)
                                          (_%__kont7581075811%_
                                           _%hd4808748260%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4807948116%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4807948116%_))))))))
                    (if (gx#stx-pair? _%__stx7580375804%_)
                        (let ((_%e4808548246%_
                               (gx#syntax-e _%__stx7580375804%_)))
                          (let ((_%tl4808348253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4808548246%_)))
                                (_%hd4808448250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4808548246%_))))
                            (if (gx#stx-pair? _%tl4808348253%_)
                                (let ((_%e4808848256%_
                                       (gx#syntax-e _%tl4808348253%_)))
                                  (let ((_%tl4808648263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4808848256%_)))
                                        (_%hd4808748260%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4808848256%_))))
                                    (if (gx#stx-null? _%tl4808648263%_)
                                        (_%__match7582675827%_
                                         _%e4808548246%_
                                         _%hd4808448250%_
                                         _%tl4808348253%_
                                         _%e4808848256%_
                                         _%hd4808748260%_
                                         _%tl4808648263%_)
                                        (if (gx#identifier? _%hd4808448250%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80526_|
                                                 _%hd4808448250%_)
                                                (if (gx#stx-pair?
                                                     _%tl4808648263%_)
                                                    (let ((_%e4810048186%_
                                                           (gx#syntax-e
                                                            _%tl4808648263%_)))
                                                      (let ((_%tl4809848193%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4810048186%_)))
                    (_%hd4809948190%_
                     (let () (declare (not safe)) (##car _%e4810048186%_))))
                (if (gx#stx-pair? _%tl4809848193%_)
                    (let ((_%e4810348196%_ (gx#syntax-e _%tl4809848193%_)))
                      (let ((_%tl4810148203%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4810348196%_)))
                            (_%hd4810248200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4810348196%_))))
                        (if (gx#stx-null? _%tl4810148203%_)
                            (_%__match7585675857%_
                             _%e4808548246%_
                             _%hd4808448250%_
                             _%tl4808348253%_
                             _%e4808848256%_
                             _%hd4808748260%_
                             _%tl4808648263%_
                             _%e4810048186%_
                             _%hd4809948190%_
                             _%tl4809848193%_
                             _%e4810348196%_
                             _%hd4810248200%_
                             _%tl4810148203%_)
                            (let () (declare (not safe)) (_%g4807948116%_)))))
                    (let () (declare (not safe)) (_%g4807948116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4807948116%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4807948116%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4807948116%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4807948116%_)))))
                        (let () (declare (not safe)) (_%g4807948116%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47833%_ _%slot47835%_)
        (let ((_%contract4783647838%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47833%_
                _%slot47835%_)))
          (if _%contract4783647838%_
              (let* ((_%contract47842%_ _%contract4783647838%_)
                     (_%__stx7587775878%_ _%contract47842%_)
                     (_%g4784747884%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7587775878%_))))
                (let ((_%__kont7588075881%_
                       (lambda (_%L48034%_ _%L48036%_)
                         (not (gx#free-identifier=?
                               _%L48036%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7588275883%_
                       (lambda (_%L47974%_ _%L47976%_ _%L47977%_) '#t))
                      (_%__kont7588475885%_ (lambda (_%L47911%_) '#t)))
                  (let* ((_%__match7593075931%_
                          (lambda (_%e4786247934%_
                                   _%hd4786147938%_
                                   _%tl4786047941%_
                                   _%e4786547944%_
                                   _%hd4786447948%_
                                   _%tl4786347951%_
                                   _%e4786847954%_
                                   _%hd4786747958%_
                                   _%tl4786647961%_
                                   _%e4787147964%_
                                   _%hd4787047968%_
                                   _%tl4786947971%_)
                            (let ((_%L47974%_ _%hd4787047968%_)
                                  (_%L47976%_ _%hd4786747958%_)
                                  (_%L47977%_ _%hd4786447948%_))
                              (if (and (gx#identifier? _%L47976%_)
                                       (or (gx#free-identifier=?
                                            _%L47976%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47976%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47976%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47976%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7588275883%_
                                   _%L47974%_
                                   _%L47976%_
                                   _%L47977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4784747884%_))))))
                         (_%__match7590075901%_
                          (lambda (_%e4785348014%_
                                   _%hd4785248018%_
                                   _%tl4785148021%_
                                   _%e4785648024%_
                                   _%hd4785548028%_
                                   _%tl4785448031%_)
                            (let ((_%L48034%_ _%hd4785548028%_)
                                  (_%L48036%_ _%hd4785248018%_))
                              (if (and (gx#identifier? _%L48036%_)
                                       (or (gx#free-identifier=?
                                            _%L48036%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48036%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48036%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48036%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7588075881%_ _%L48034%_ _%L48036%_)
                                  (if (gx#identifier? _%hd4785248018%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80527_|
                                           _%hd4785248018%_)
                                          (_%__kont7588475885%_
                                           _%hd4785548028%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4784747884%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4784747884%_))))))))
                    (if (gx#stx-pair? _%__stx7587775878%_)
                        (let ((_%e4785348014%_
                               (gx#syntax-e _%__stx7587775878%_)))
                          (let ((_%tl4785148021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4785348014%_)))
                                (_%hd4785248018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4785348014%_))))
                            (if (gx#stx-pair? _%tl4785148021%_)
                                (let ((_%e4785648024%_
                                       (gx#syntax-e _%tl4785148021%_)))
                                  (let ((_%tl4785448031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4785648024%_)))
                                        (_%hd4785548028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4785648024%_))))
                                    (if (gx#stx-null? _%tl4785448031%_)
                                        (_%__match7590075901%_
                                         _%e4785348014%_
                                         _%hd4785248018%_
                                         _%tl4785148021%_
                                         _%e4785648024%_
                                         _%hd4785548028%_
                                         _%tl4785448031%_)
                                        (if (gx#identifier? _%hd4785248018%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80527_|
                                                 _%hd4785248018%_)
                                                (if (gx#stx-pair?
                                                     _%tl4785448031%_)
                                                    (let ((_%e4786847954%_
                                                           (gx#syntax-e
                                                            _%tl4785448031%_)))
                                                      (let ((_%tl4786647961%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4786847954%_)))
                    (_%hd4786747958%_
                     (let () (declare (not safe)) (##car _%e4786847954%_))))
                (if (gx#stx-pair? _%tl4786647961%_)
                    (let ((_%e4787147964%_ (gx#syntax-e _%tl4786647961%_)))
                      (let ((_%tl4786947971%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4787147964%_)))
                            (_%hd4787047968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4787147964%_))))
                        (if (gx#stx-null? _%tl4786947971%_)
                            (_%__match7593075931%_
                             _%e4785348014%_
                             _%hd4785248018%_
                             _%tl4785148021%_
                             _%e4785648024%_
                             _%hd4785548028%_
                             _%tl4785448031%_
                             _%e4786847954%_
                             _%hd4786747958%_
                             _%tl4786647961%_
                             _%e4787147964%_
                             _%hd4787047968%_
                             _%tl4786947971%_)
                            (let () (declare (not safe)) (_%g4784747884%_)))))
                    (let () (declare (not safe)) (_%g4784747884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4784747884%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4784747884%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4784747884%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4784747884%_)))))
                        (let () (declare (not safe)) (_%g4784747884%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47819%_)
        (if (gx#identifier? _%id47819%_)
            (let* ((_%str47822%_ (symbol->string (gx#stx-e _%id47819%_)))
                   (_%index4782447826%_ (string-index _%str47822%_ '#\.)))
              (if _%index4782447826%_
                  (let ((_%index47830%_ _%index4782447826%_))
                    (if (let () (declare (not safe)) (##fx> _%index47830%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47822%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47812%_ _%id47814%_)
        (let ((_%parts47816%_
               (string-split (symbol->string (gx#stx-e _%id47814%_)) '#\.)))
          (if (find string-empty? _%parts47816%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47812%_
               _%id47814%_)
              (cons (gx#stx-identifier _%id47814%_ (car _%parts47816%_))
                    (map string->symbol (cdr _%parts47816%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47793%_ _%klass-or-id47795%_ _%slot47796%_)
        (let* ((_%klass47798%_
                (if (gx#identifier? _%klass-or-id47795%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47793%_
                       _%klass-or-id47795%_))
                    _%klass-or-id47795%_))
               (_%accessors47801%_
                (let ((__obj80366 _%klass47798%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80366
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80366 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj80366
                       'unchecked-accessors))))
               (_%$e47806%_ (assgetq _%slot47796%_ _%accessors47801%_)))
          (if _%$e47806%_
              _%$e47806%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47793%_
               _%klass47798%_
               _%slot47796%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47773%_
               _%klass-or-id47775%_
               _%slot47776%_
               _%checked?47777%_)
        (let* ((_%klass47779%_
                (if (gx#identifier? _%klass-or-id47775%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47773%_
                       _%klass-or-id47775%_))
                    _%klass-or-id47775%_))
               (_%mutators47782%_
                (if _%checked?47777%_
                    (let ((__obj80367 _%klass47779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80367
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80367 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80367
                           'mutators)))
                    (let ((__obj80368 _%klass47779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80368
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80368 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80368
                           'unchecked-mutators)))))
               (_%$e47787%_ (assgetq _%slot47776%_ _%mutators47782%_)))
          (if _%$e47787%_
              _%$e47787%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47773%_
               _%klass47779%_
               _%slot47776%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48348%_)
        (letrec ((_%expand-body48351%_
                  (lambda (_%klass49075%_
                           _%var49077%_
                           _%Type49078%_
                           _%body49079%_
                           _%checked?49080%_)
                    (let* ((_%g4908249126%_
                            (lambda (_%g4908349122%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4908349122%_)))
                           (_%g4908149283%_
                            (lambda (_%g4908349130%_)
                              (if (gx#stx-pair? _%g4908349130%_)
                                  (let ((_%e4909349133%_
                                         (gx#syntax-e _%g4908349130%_)))
                                    (let ((_%hd4909249137%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4909349133%_)))
                                          (_%tl4909149140%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4909349133%_))))
                                      (if (gx#stx-pair? _%tl4909149140%_)
                                          (let ((_%e4909649143%_
                                                 (gx#syntax-e
                                                  _%tl4909149140%_)))
                                            (let ((_%hd4909549147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4909649143%_)))
                                                  (_%tl4909449150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4909649143%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4909449150%_)
                                                  (let ((_%e4909949153%_
                                                         (gx#syntax-e
                                                          _%tl4909449150%_)))
                                                    (let ((_%hd4909849157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4909949153%_)))
                                                          (_%tl4909749160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4909949153%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4909749160%_)
                                                          (let ((_%e4910249163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4909749160%_)))
                    (let ((_%hd4910149167%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4910249163%_)))
                          (_%tl4910049170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4910249163%_))))
                      (if (gx#stx-pair? _%tl4910049170%_)
                          (let ((_%e4910549173%_
                                 (gx#syntax-e _%tl4910049170%_)))
                            (let ((_%hd4910449177%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4910549173%_)))
                                  (_%tl4910349180%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4910549173%_))))
                              (if (gx#stx-pair? _%tl4910349180%_)
                                  (let ((_%e4910849183%_
                                         (gx#syntax-e _%tl4910349180%_)))
                                    (let ((_%hd4910749187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4910849183%_)))
                                          (_%tl4910649190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4910849183%_))))
                                      (if (gx#stx-pair? _%tl4910649190%_)
                                          (let ((_%e4911149193%_
                                                 (gx#syntax-e
                                                  _%tl4910649190%_)))
                                            (let ((_%hd4911049197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4911149193%_)))
                                                  (_%tl4910949200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4911149193%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4911049197%_)
                                                  (let ((_g80528_
                                                         (gx#syntax-split-splice
                                                          _%hd4911049197%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80528_)
                           (##vector-length _g80528_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80529_ 2)))
                    (error "Context expects 2 values" _g80529_)))
              (let ((_%target4911249203%_
                     (let () (declare (not safe)) (##vector-ref _g80528_ 0)))
                    (_%tl4911449206%_
                     (let () (declare (not safe)) (##vector-ref _g80528_ 1))))
                (if (gx#stx-null? _%tl4911449206%_)
                    (letrec ((_%loop4911549209%_
                              (lambda (_%hd4911349213%_ _%body4911949216%_)
                                (if (gx#stx-pair? _%hd4911349213%_)
                                    (let ((_%e4911649219%_
                                           (gx#syntax-e _%hd4911349213%_)))
                                      (let ((_%lp-hd4911749223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4911649219%_)))
                                            (_%lp-tl4911849226%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4911649219%_))))
                                        (_%loop4911549209%_
                                         _%lp-tl4911849226%_
                                         (cons _%lp-hd4911749223%_
                                               _%body4911949216%_))))
                                    (let ((_%body4912049229%_
                                           (reverse _%body4911949216%_)))
                                      (if (gx#stx-null? _%tl4910949200%_)
                                          ((lambda (_%L49233%_
                                                    _%L49235%_
                                                    _%L49236%_
                                                    _%L49237%_
                                                    _%L49238%_
                                                    _%L49239%_
                                                    _%L49240%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49238%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49239%_ '()))
                                         (cons _%L49238%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49240%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49238%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49237%_ '()))
                               (cons _%L49236%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49235%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4927449277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4927549280%_)
                      (cons _%g4927449277%_ _%g4927549280%_))
                    '()
                    _%L49233%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4912049229%_
                                           _%hd4910749187%_
                                           _%hd4910449177%_
                                           _%hd4910149167%_
                                           _%hd4909849157%_
                                           _%hd4909549147%_
                                           _%hd4909249137%_)
                                          (_%g4908249126%_
                                           _%g4908349130%_)))))))
                      (_%loop4911549209%_ _%target4911249203%_ '()))
                    (_%g4908249126%_ _%g4908349130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4908249126%_
                                                   _%g4908349130%_))))
                                          (_%g4908249126%_ _%g4908349130%_))))
                                  (_%g4908249126%_ _%g4908349130%_))))
                          (_%g4908249126%_ _%g4908349130%_))))
                  (_%g4908249126%_ _%g4908349130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4908249126%_
                                                   _%g4908349130%_))))
                                          (_%g4908249126%_ _%g4908349130%_))))
                                  (_%g4908249126%_ _%g4908349130%_)))))
                      (_%g4908149283%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj80369 _%klass49075%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80369
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80369
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj80369
                                    'type-descriptor)))
                             _%var49077%_
                             _%klass49075%_
                             _%checked?49080%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49079%_)))))
                 (_%expand48353%_
                  (lambda (_%var48967%_
                           _%Type48969%_
                           _%body48970%_
                           _%checked?48971%_
                           _%checked-mutators?48972%_
                           _%maybe?48973%_)
                    (let* ((_%klass48975%_
                            (gx#syntax-local-value _%Type48969%_ false))
                           (_%expr-body48982%_
                            (_%expand-body48351%_
                             _%klass48975%_
                             _%var48967%_
                             _%Type48969%_
                             _%body48970%_
                             (let ((_%$e48978%_ _%checked?48971%_))
                               (if _%$e48978%_
                                   _%$e48978%_
                                   _%checked-mutators?48972%_)))))
                      (if _%checked?48971%_
                          (let* ((_%g4898749006%_
                                  (lambda (_%g4898849002%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4898849002%_)))
                                 (_%g4898649068%_
                                  (lambda (_%g4898849010%_)
                                    (if (gx#stx-pair? _%g4898849010%_)
                                        (let ((_%e4899449013%_
                                               (gx#syntax-e _%g4898849010%_)))
                                          (let ((_%hd4899349017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4899449013%_)))
                                                (_%tl4899249020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4899449013%_))))
                                            (if (gx#stx-pair? _%tl4899249020%_)
                                                (let ((_%e4899749023%_
                                                       (gx#syntax-e
                                                        _%tl4899249020%_)))
                                                  (let ((_%hd4899649027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4899749023%_)))
                                                        (_%tl4899549030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4899749023%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4899549030%_)
                                                        (let ((_%e4900049033%_
                                                               (gx#syntax-e
                                                                _%tl4899549030%_)))
                                                          (let ((_%hd4899949037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4900049033%_)))
                        (_%tl4899849040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4900049033%_))))
                    (if (gx#stx-null? _%tl4899849040%_)
                        ((lambda (_%L49043%_ _%L49045%_ _%L49046%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49045%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49046%_ '())))
                                       (cons _%L49043%_ '()))))
                         _%hd4899949037%_
                         _%hd4899649027%_
                         _%hd4899349017%_)
                        (_%g4898749006%_ _%g4898849010%_))))
                (_%g4898749006%_ _%g4898849010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4898749006%_
                                                 _%g4898849010%_))))
                                        (_%g4898749006%_ _%g4898849010%_)))))
                            (_%g4898649068%_
                             (list (let ((_%instance?49072%_
                                          (let ((__obj80370 _%klass48975%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80370
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80370
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80370
                                                 'predicate)))))
                                     (if _%maybe?48973%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49072%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49072%_))
                                   _%var48967%_
                                   _%expr-body48982%_)))
                          _%expr-body48982%_)))))
          (let* ((_%__stx7595175952%_ _%stx48348%_)
                 (_%g4835848473%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7595175952%_))))
            (let ((_%__kont7595475955%_
                   (lambda (_%L48928%_ _%L48930%_ _%L48931%_)
                     (_%expand48353%_
                      _%L48931%_
                      _%L48930%_
                      (foldr (lambda (_%g4895448957%_ _%g4895548960%_)
                               (cons _%g4895448957%_ _%g4895548960%_))
                             '()
                             _%L48928%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7595875959%_
                   (lambda (_%L48806%_ _%L48808%_ _%L48809%_)
                     (_%expand48353%_
                      _%L48809%_
                      _%L48808%_
                      (foldr (lambda (_%g4883248835%_ _%g4883348838%_)
                               (cons _%g4883248835%_ _%g4883348838%_))
                             '()
                             _%L48806%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7596275963%_
                   (lambda (_%L48684%_ _%L48686%_ _%L48687%_)
                     (_%expand48353%_
                      _%L48687%_
                      _%L48686%_
                      (foldr (lambda (_%g4871048713%_ _%g4871148716%_)
                               (cons _%g4871048713%_ _%g4871148716%_))
                             '()
                             _%L48684%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7596675967%_
                   (lambda (_%L48560%_ _%L48562%_ _%L48563%_)
                     (_%expand48353%_
                      _%L48563%_
                      _%L48562%_
                      (foldr (lambda (_%g4858848591%_ _%g4858948594%_)
                               (cons _%g4858848591%_ _%g4858948594%_))
                             '()
                             _%L48560%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7614676147%_
                      (lambda (_%e4844648480%_
                               _%hd4844548484%_
                               _%tl4844448487%_
                               _%e4844948490%_
                               _%hd4844848494%_
                               _%tl4844748497%_
                               _%e4845248500%_
                               _%hd4845148504%_
                               _%tl4845048507%_
                               _%e4845548510%_
                               _%hd4845448514%_
                               _%tl4845348517%_
                               _%e4845848520%_
                               _%hd4845748524%_
                               _%tl4845648527%_
                               _%__splice7596875969%_
                               _%target4845948530%_
                               _%tl4846148533%_)
                        (letrec ((_%loop4846248536%_
                                  (lambda (_%hd4846048540%_ _%body4846648543%_)
                                    (if (gx#stx-pair? _%hd4846048540%_)
                                        (let ((_%e4846348546%_
                                               (gx#syntax-e _%hd4846048540%_)))
                                          (let ((_%lp-tl4846548553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4846348546%_)))
                                                (_%lp-hd4846448550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4846348546%_))))
                                            (_%loop4846248536%_
                                             _%lp-tl4846548553%_
                                             (cons _%lp-hd4846448550%_
                                                   _%body4846648543%_))))
                                        (let ((_%body4846748556%_
                                               (reverse _%body4846648543%_)))
                                          (let ((_%L48560%_ _%body4846748556%_)
                                                (_%L48562%_ _%hd4845748524%_)
                                                (_%L48563%_ _%hd4845148504%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48562%_))
                                                (_%__kont7596675967%_
                                                 _%L48560%_
                                                 _%L48562%_
                                                 _%L48563%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835848473%_)))))))))
                          (_%loop4846248536%_ _%target4845948530%_ '()))))
                     (_%__match7610276103%_
                      (lambda (_%e4841948604%_
                               _%hd4841848608%_
                               _%tl4841748611%_
                               _%e4842248614%_
                               _%hd4842148618%_
                               _%tl4842048621%_
                               _%e4842548624%_
                               _%hd4842448628%_
                               _%tl4842348631%_
                               _%e4842848634%_
                               _%hd4842748638%_
                               _%tl4842648641%_
                               _%e4843148644%_
                               _%hd4843048648%_
                               _%tl4842948651%_
                               _%__splice7596475965%_
                               _%target4843248654%_
                               _%tl4843448657%_)
                        (letrec ((_%loop4843548660%_
                                  (lambda (_%hd4843348664%_ _%body4843948667%_)
                                    (if (gx#stx-pair? _%hd4843348664%_)
                                        (let ((_%e4843648670%_
                                               (gx#syntax-e _%hd4843348664%_)))
                                          (let ((_%lp-tl4843848677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4843648670%_)))
                                                (_%lp-hd4843748674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4843648670%_))))
                                            (_%loop4843548660%_
                                             _%lp-tl4843848677%_
                                             (cons _%lp-hd4843748674%_
                                                   _%body4843948667%_))))
                                        (let ((_%body4844048680%_
                                               (reverse _%body4843948667%_)))
                                          (let ((_%L48684%_ _%body4844048680%_)
                                                (_%L48686%_ _%hd4843048648%_)
                                                (_%L48687%_ _%hd4842448628%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48686%_))
                                                (_%__kont7596275963%_
                                                 _%L48684%_
                                                 _%L48686%_
                                                 _%L48687%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835848473%_)))))))))
                          (_%loop4843548660%_ _%target4843248654%_ '()))))
                     (_%__match7605876059%_
                      (lambda (_%e4839248726%_
                               _%hd4839148730%_
                               _%tl4839048733%_
                               _%e4839548736%_
                               _%hd4839448740%_
                               _%tl4839348743%_
                               _%e4839848746%_
                               _%hd4839748750%_
                               _%tl4839648753%_
                               _%e4840148756%_
                               _%hd4840048760%_
                               _%tl4839948763%_
                               _%e4840448766%_
                               _%hd4840348770%_
                               _%tl4840248773%_
                               _%__splice7596075961%_
                               _%target4840548776%_
                               _%tl4840748779%_)
                        (letrec ((_%loop4840848782%_
                                  (lambda (_%hd4840648786%_ _%body4841248789%_)
                                    (if (gx#stx-pair? _%hd4840648786%_)
                                        (let ((_%e4840948792%_
                                               (gx#syntax-e _%hd4840648786%_)))
                                          (let ((_%lp-tl4841148799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840948792%_)))
                                                (_%lp-hd4841048796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840948792%_))))
                                            (_%loop4840848782%_
                                             _%lp-tl4841148799%_
                                             (cons _%lp-hd4841048796%_
                                                   _%body4841248789%_))))
                                        (let ((_%body4841348802%_
                                               (reverse _%body4841248789%_)))
                                          (let ((_%L48806%_ _%body4841348802%_)
                                                (_%L48808%_ _%hd4840348770%_)
                                                (_%L48809%_ _%hd4839748750%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48808%_))
                                                (_%__kont7595875959%_
                                                 _%L48806%_
                                                 _%L48808%_
                                                 _%L48809%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835848473%_)))))))))
                          (_%loop4840848782%_ _%target4840548776%_ '()))))
                     (_%__match7601476015%_
                      (lambda (_%e4836548848%_
                               _%hd4836448852%_
                               _%tl4836348855%_
                               _%e4836848858%_
                               _%hd4836748862%_
                               _%tl4836648865%_
                               _%e4837148868%_
                               _%hd4837048872%_
                               _%tl4836948875%_
                               _%e4837448878%_
                               _%hd4837348882%_
                               _%tl4837248885%_
                               _%e4837748888%_
                               _%hd4837648892%_
                               _%tl4837548895%_
                               _%__splice7595675957%_
                               _%target4837848898%_
                               _%tl4838048901%_)
                        (letrec ((_%loop4838148904%_
                                  (lambda (_%hd4837948908%_ _%body4838548911%_)
                                    (if (gx#stx-pair? _%hd4837948908%_)
                                        (let ((_%e4838248914%_
                                               (gx#syntax-e _%hd4837948908%_)))
                                          (let ((_%lp-tl4838448921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838248914%_)))
                                                (_%lp-hd4838348918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838248914%_))))
                                            (_%loop4838148904%_
                                             _%lp-tl4838448921%_
                                             (cons _%lp-hd4838348918%_
                                                   _%body4838548911%_))))
                                        (let ((_%body4838648924%_
                                               (reverse _%body4838548911%_)))
                                          (let ((_%L48928%_ _%body4838648924%_)
                                                (_%L48930%_ _%hd4837648892%_)
                                                (_%L48931%_ _%hd4837048872%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48930%_))
                                                (_%__kont7595475955%_
                                                 _%L48928%_
                                                 _%L48930%_
                                                 _%L48931%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835848473%_)))))))))
                          (_%loop4838148904%_ _%target4837848898%_ '())))))
                (if (gx#stx-pair? _%__stx7595175952%_)
                    (let ((_%e4836548848%_ (gx#syntax-e _%__stx7595175952%_)))
                      (let ((_%tl4836348855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4836548848%_)))
                            (_%hd4836448852%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4836548848%_))))
                        (if (gx#stx-pair? _%tl4836348855%_)
                            (let ((_%e4836848858%_
                                   (gx#syntax-e _%tl4836348855%_)))
                              (let ((_%tl4836648865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4836848858%_)))
                                    (_%hd4836748862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4836848858%_))))
                                (if (gx#stx-pair? _%hd4836748862%_)
                                    (let ((_%e4837148868%_
                                           (gx#syntax-e _%hd4836748862%_)))
                                      (let ((_%tl4836948875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4837148868%_)))
                                            (_%hd4837048872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4837148868%_))))
                                        (if (gx#stx-pair? _%tl4836948875%_)
                                            (let ((_%e4837448878%_
                                                   (gx#syntax-e
                                                    _%tl4836948875%_)))
                                              (let ((_%tl4837248885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4837448878%_)))
                                                    (_%hd4837348882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4837448878%_))))
                                                (if (gx#identifier?
                                                     _%hd4837348882%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80530_|
                                                         _%hd4837348882%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4837248885%_)
                                                            (let ((_%e4837748888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4837248885%_)))
                      (let ((_%tl4837548895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4837748888%_)))
                            (_%hd4837648892%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4837748888%_))))
                        (if (gx#stx-null? _%tl4837548895%_)
                            (if (gx#stx-pair/null? _%tl4836648865%_)
                                (let ((_%__splice7595675957%_
                                       (gx#syntax-split-splice
                                        _%tl4836648865%_
                                        '0)))
                                  (let ((_%tl4838048901%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7595675957%_
                                            '1)))
                                        (_%target4837848898%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7595675957%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4838048901%_)
                                        (_%__match7601476015%_
                                         _%e4836548848%_
                                         _%hd4836448852%_
                                         _%tl4836348855%_
                                         _%e4836848858%_
                                         _%hd4836748862%_
                                         _%tl4836648865%_
                                         _%e4837148868%_
                                         _%hd4837048872%_
                                         _%tl4836948875%_
                                         _%e4837448878%_
                                         _%hd4837348882%_
                                         _%tl4837248885%_
                                         _%e4837748888%_
                                         _%hd4837648892%_
                                         _%tl4837548895%_
                                         _%__splice7595675957%_
                                         _%target4837848898%_
                                         _%tl4838048901%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835848473%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4835848473%_)))
                            (let () (declare (not safe)) (_%g4835848473%_)))))
                    (let () (declare (not safe)) (_%g4835848473%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80531_|
                     _%hd4837348882%_)
                    (if (gx#stx-pair? _%tl4837248885%_)
                        (let ((_%e4840448766%_ (gx#syntax-e _%tl4837248885%_)))
                          (let ((_%tl4840248773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4840448766%_)))
                                (_%hd4840348770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4840448766%_))))
                            (if (gx#stx-null? _%tl4840248773%_)
                                (if (gx#stx-pair/null? _%tl4836648865%_)
                                    (let ((_%__splice7596075961%_
                                           (gx#syntax-split-splice
                                            _%tl4836648865%_
                                            '0)))
                                      (let ((_%tl4840748779%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7596075961%_
                                                '1)))
                                            (_%target4840548776%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7596075961%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4840748779%_)
                                            (_%__match7605876059%_
                                             _%e4836548848%_
                                             _%hd4836448852%_
                                             _%tl4836348855%_
                                             _%e4836848858%_
                                             _%hd4836748862%_
                                             _%tl4836648865%_
                                             _%e4837148868%_
                                             _%hd4837048872%_
                                             _%tl4836948875%_
                                             _%e4837448878%_
                                             _%hd4837348882%_
                                             _%tl4837248885%_
                                             _%e4840448766%_
                                             _%hd4840348770%_
                                             _%tl4840248773%_
                                             _%__splice7596075961%_
                                             _%target4840548776%_
                                             _%tl4840748779%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835848473%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835848473%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4835848473%_)))))
                        (let () (declare (not safe)) (_%g4835848473%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80532_|
                         _%hd4837348882%_)
                        (if (gx#stx-pair? _%tl4837248885%_)
                            (let ((_%e4843148644%_
                                   (gx#syntax-e _%tl4837248885%_)))
                              (let ((_%tl4842948651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4843148644%_)))
                                    (_%hd4843048648%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4843148644%_))))
                                (if (gx#stx-null? _%tl4842948651%_)
                                    (if (gx#stx-pair/null? _%tl4836648865%_)
                                        (let ((_%__splice7596475965%_
                                               (gx#syntax-split-splice
                                                _%tl4836648865%_
                                                '0)))
                                          (let ((_%tl4843448657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7596475965%_
                                                    '1)))
                                                (_%target4843248654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7596475965%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4843448657%_)
                                                (_%__match7610276103%_
                                                 _%e4836548848%_
                                                 _%hd4836448852%_
                                                 _%tl4836348855%_
                                                 _%e4836848858%_
                                                 _%hd4836748862%_
                                                 _%tl4836648865%_
                                                 _%e4837148868%_
                                                 _%hd4837048872%_
                                                 _%tl4836948875%_
                                                 _%e4837448878%_
                                                 _%hd4837348882%_
                                                 _%tl4837248885%_
                                                 _%e4843148644%_
                                                 _%hd4843048648%_
                                                 _%tl4842948651%_
                                                 _%__splice7596475965%_
                                                 _%target4843248654%_
                                                 _%tl4843448657%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835848473%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835848473%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835848473%_)))))
                            (let () (declare (not safe)) (_%g4835848473%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80533_|
                             _%hd4837348882%_)
                            (if (gx#stx-pair? _%tl4837248885%_)
                                (let ((_%e4845848520%_
                                       (gx#syntax-e _%tl4837248885%_)))
                                  (let ((_%tl4845648527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4845848520%_)))
                                        (_%hd4845748524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4845848520%_))))
                                    (if (gx#stx-null? _%tl4845648527%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4836648865%_)
                                            (let ((_%__splice7596875969%_
                                                   (gx#syntax-split-splice
                                                    _%tl4836648865%_
                                                    '0)))
                                              (let ((_%tl4846148533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7596875969%_
                                                        '1)))
                                                    (_%target4845948530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7596875969%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4846148533%_)
                                                    (_%__match7614676147%_
                                                     _%e4836548848%_
                                                     _%hd4836448852%_
                                                     _%tl4836348855%_
                                                     _%e4836848858%_
                                                     _%hd4836748862%_
                                                     _%tl4836648865%_
                                                     _%e4837148868%_
                                                     _%hd4837048872%_
                                                     _%tl4836948875%_
                                                     _%e4837448878%_
                                                     _%hd4837348882%_
                                                     _%tl4837248885%_
                                                     _%e4845848520%_
                                                     _%hd4845748524%_
                                                     _%tl4845648527%_
                                                     _%__splice7596875969%_
                                                     _%target4845948530%_
                                                     _%tl4846148533%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835848473%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835848473%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835848473%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4835848473%_)))
                            (let () (declare (not safe)) (_%g4835848473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835848473%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835848473%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835848473%_)))))
                            (let () (declare (not safe)) (_%g4835848473%_)))))
                    (let () (declare (not safe)) (_%g4835848473%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49292%_)
        (letrec ((_%expand-body49295%_
                  (lambda (_%var50112%_
                           _%Interface50114%_
                           _%body50115%_
                           _%checked?50116%_)
                    (let* ((_%type50118%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49292%_
                               _%Interface50114%_)))
                           (_%g5012150165%_
                            (lambda (_%g5012250161%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5012250161%_)))
                           (_%g5012050323%_
                            (lambda (_%g5012250169%_)
                              (if (gx#stx-pair? _%g5012250169%_)
                                  (let ((_%e5013250172%_
                                         (gx#syntax-e _%g5012250169%_)))
                                    (let ((_%hd5013150176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5013250172%_)))
                                          (_%tl5013050179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5013250172%_))))
                                      (if (gx#stx-pair? _%tl5013050179%_)
                                          (let ((_%e5013550182%_
                                                 (gx#syntax-e
                                                  _%tl5013050179%_)))
                                            (let ((_%hd5013450186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5013550182%_)))
                                                  (_%tl5013350189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5013550182%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5013350189%_)
                                                  (let ((_%e5013850192%_
                                                         (gx#syntax-e
                                                          _%tl5013350189%_)))
                                                    (let ((_%hd5013750196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5013850192%_)))
                                                          (_%tl5013650199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5013850192%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5013650199%_)
                                                          (let ((_%e5014150202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5013650199%_)))
                    (let ((_%hd5014050206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5014150202%_)))
                          (_%tl5013950209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5014150202%_))))
                      (if (gx#stx-pair? _%tl5013950209%_)
                          (let ((_%e5014450212%_
                                 (gx#syntax-e _%tl5013950209%_)))
                            (let ((_%hd5014350216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5014450212%_)))
                                  (_%tl5014250219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5014450212%_))))
                              (if (gx#stx-pair? _%tl5014250219%_)
                                  (let ((_%e5014750222%_
                                         (gx#syntax-e _%tl5014250219%_)))
                                    (let ((_%hd5014650226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5014750222%_)))
                                          (_%tl5014550229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5014750222%_))))
                                      (if (gx#stx-pair? _%tl5014550229%_)
                                          (let ((_%e5015050232%_
                                                 (gx#syntax-e
                                                  _%tl5014550229%_)))
                                            (let ((_%hd5014950236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5015050232%_)))
                                                  (_%tl5014850239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5015050232%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5014950236%_)
                                                  (let ((_g80534_
                                                         (gx#syntax-split-splice
                                                          _%hd5014950236%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80534_)
                           (##vector-length _g80534_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80535_ 2)))
                    (error "Context expects 2 values" _g80535_)))
              (let ((_%target5015150242%_
                     (let () (declare (not safe)) (##vector-ref _g80534_ 0)))
                    (_%tl5015350245%_
                     (let () (declare (not safe)) (##vector-ref _g80534_ 1))))
                (if (gx#stx-null? _%tl5015350245%_)
                    (letrec ((_%loop5015450248%_
                              (lambda (_%hd5015250252%_ _%body5015850255%_)
                                (if (gx#stx-pair? _%hd5015250252%_)
                                    (let ((_%e5015550258%_
                                           (gx#syntax-e _%hd5015250252%_)))
                                      (let ((_%lp-hd5015650262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5015550258%_)))
                                            (_%lp-tl5015750265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5015550258%_))))
                                        (_%loop5015450248%_
                                         _%lp-tl5015750265%_
                                         (cons _%lp-hd5015650262%_
                                               _%body5015850255%_))))
                                    (let ((_%body5015950268%_
                                           (reverse _%body5015850255%_)))
                                      (if (gx#stx-null? _%tl5014850239%_)
                                          ((lambda (_%L50272%_
                                                    _%L50274%_
                                                    _%L50275%_
                                                    _%L50276%_
                                                    _%L50277%_
                                                    _%L50278%_
                                                    _%L50279%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50276%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50277%_ '()))
                                         (cons _%L50276%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50279%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50276%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50278%_ '()))
                               (cons _%L50275%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50274%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5031450317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5031550320%_)
                      (cons _%g5031450317%_ _%g5031550320%_))
                    '()
                    _%L50272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5015950268%_
                                           _%hd5014650226%_
                                           _%hd5014350216%_
                                           _%hd5014050206%_
                                           _%hd5013750196%_
                                           _%hd5013450186%_
                                           _%hd5013150176%_)
                                          (_%g5012150165%_
                                           _%g5012250169%_)))))))
                      (_%loop5015450248%_ _%target5015150242%_ '()))
                    (_%g5012150165%_ _%g5012250169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5012150165%_
                                                   _%g5012250169%_))))
                                          (_%g5012150165%_ _%g5012250169%_))))
                                  (_%g5012150165%_ _%g5012250169%_))))
                          (_%g5012150165%_ _%g5012250169%_))))
                  (_%g5012150165%_ _%g5012250169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5012150165%_
                                                   _%g5012250169%_))))
                                          (_%g5012150165%_ _%g5012250169%_))))
                                  (_%g5012150165%_ _%g5012250169%_)))))
                      (_%g5012050323%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50118%_
                             (let ((__obj80371 _%type50118%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80371
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80371
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80371
                                    'instance-type)))
                             _%var50112%_
                             _%checked?50116%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50115%_)))))
                 (_%expand49297%_
                  (lambda (_%var49911%_
                           _%Interface49913%_
                           _%body49914%_
                           _%checked?49915%_
                           _%checked-methods?49916%_
                           _%maybe?49917%_)
                    (let* ((_%g4991949927%_
                            (lambda (_%g4992049923%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4992049923%_)))
                           (_%g4991850104%_
                            (lambda (_%g4992049931%_)
                              ((lambda (_%L49934%_)
                                 (if _%checked?49915%_
                                     (if _%maybe?49917%_
                                         (let* ((_%g4994649961%_
                                                 (lambda (_%g4994749957%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4994749957%_)))
                                                (_%g4994550007%_
                                                 (lambda (_%g4994749965%_)
                                                   (if (gx#stx-pair?
                                                        _%g4994749965%_)
                                                       (let ((_%e4995249968%_
                                                              (gx#syntax-e
                                                               _%g4994749965%_)))
                                                         (let ((_%hd4995149972%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4995249968%_)))
                       (_%tl4995049975%_
                        (let () (declare (not safe)) (##cdr _%e4995249968%_))))
                   (if (gx#stx-pair? _%tl4995049975%_)
                       (let ((_%e4995549978%_ (gx#syntax-e _%tl4995049975%_)))
                         (let ((_%hd4995449982%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4995549978%_)))
                               (_%tl4995349985%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4995549978%_))))
                           (if (gx#stx-null? _%tl4995349985%_)
                               ((lambda (_%L49988%_ _%L49990%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L49990%_
                                                    (cons (cons _%L49988%_
                                                                (cons _%L49990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L49990%_
                                                                (cons _%L49934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L49990%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd4995449982%_
                                _%hd4995149972%_)
                               (_%g4994649961%_ _%g4994749965%_))))
                       (_%g4994649961%_ _%g4994749965%_))))
               (_%g4994649961%_ _%g4994749965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g4994550007%_
                                            (list _%var49911%_
                                                  _%Interface49913%_)))
                                         (let* ((_%g5001150026%_
                                                 (lambda (_%g5001250022%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5001250022%_)))
                                                (_%g5001050070%_
                                                 (lambda (_%g5001250030%_)
                                                   (if (gx#stx-pair?
                                                        _%g5001250030%_)
                                                       (let ((_%e5001750033%_
                                                              (gx#syntax-e
                                                               _%g5001250030%_)))
                                                         (let ((_%hd5001650037%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5001750033%_)))
                       (_%tl5001550040%_
                        (let () (declare (not safe)) (##cdr _%e5001750033%_))))
                   (if (gx#stx-pair? _%tl5001550040%_)
                       (let ((_%e5002050043%_ (gx#syntax-e _%tl5001550040%_)))
                         (let ((_%hd5001950047%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5002050043%_)))
                               (_%tl5001850050%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5002050043%_))))
                           (if (gx#stx-null? _%tl5001850050%_)
                               ((lambda (_%L50053%_ _%L50055%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50055%_
                                                    (cons (cons _%L50053%_
                                                                (cons _%L50055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L49934%_ '()))))
                                _%hd5001950047%_
                                _%hd5001650037%_)
                               (_%g5001150026%_ _%g5001250030%_))))
                       (_%g5001150026%_ _%g5001250030%_))))
               (_%g5001150026%_ _%g5001250030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5001050070%_
                                            (list _%var49911%_
                                                  _%Interface49913%_))))
                                     (if _%maybe?49917%_
                                         (let* ((_%g5007450082%_
                                                 (lambda (_%g5007550078%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5007550078%_)))
                                                (_%g5007350100%_
                                                 (lambda (_%g5007550086%_)
                                                   ((lambda (_%L50089%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L49934%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50089%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5007550086%_))))
                                           (_%g5007350100%_ _%var49911%_))
                                         _%L49934%_)))
                               _%g4992049931%_))))
                      (_%g4991850104%_
                       (_%expand-body49295%_
                        _%var49911%_
                        _%Interface49913%_
                        _%body49914%_
                        (let ((_%$e50108%_ _%checked?49915%_))
                          (if _%$e50108%_
                              _%$e50108%_
                              _%checked-methods?49916%_))))))))
          (let* ((_%__stx7614976150%_ _%stx49292%_)
                 (_%g4930249417%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7614976150%_))))
            (let ((_%__kont7615276153%_
                   (lambda (_%L49872%_ _%L49874%_ _%L49875%_)
                     (_%expand49297%_
                      _%L49875%_
                      _%L49874%_
                      (foldr (lambda (_%g4989849901%_ _%g4989949904%_)
                               (cons _%g4989849901%_ _%g4989949904%_))
                             '()
                             _%L49872%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7615676157%_
                   (lambda (_%L49750%_ _%L49752%_ _%L49753%_)
                     (_%expand49297%_
                      _%L49753%_
                      _%L49752%_
                      (foldr (lambda (_%g4977649779%_ _%g4977749782%_)
                               (cons _%g4977649779%_ _%g4977749782%_))
                             '()
                             _%L49750%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7616076161%_
                   (lambda (_%L49628%_ _%L49630%_ _%L49631%_)
                     (_%expand49297%_
                      _%L49631%_
                      _%L49630%_
                      (foldr (lambda (_%g4965449657%_ _%g4965549660%_)
                               (cons _%g4965449657%_ _%g4965549660%_))
                             '()
                             _%L49628%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7616476165%_
                   (lambda (_%L49504%_ _%L49506%_ _%L49507%_)
                     (_%expand49297%_
                      _%L49507%_
                      _%L49506%_
                      (foldr (lambda (_%g4953249535%_ _%g4953349538%_)
                               (cons _%g4953249535%_ _%g4953349538%_))
                             '()
                             _%L49504%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7634476345%_
                      (lambda (_%e4939049424%_
                               _%hd4938949428%_
                               _%tl4938849431%_
                               _%e4939349434%_
                               _%hd4939249438%_
                               _%tl4939149441%_
                               _%e4939649444%_
                               _%hd4939549448%_
                               _%tl4939449451%_
                               _%e4939949454%_
                               _%hd4939849458%_
                               _%tl4939749461%_
                               _%e4940249464%_
                               _%hd4940149468%_
                               _%tl4940049471%_
                               _%__splice7616676167%_
                               _%target4940349474%_
                               _%tl4940549477%_)
                        (letrec ((_%loop4940649480%_
                                  (lambda (_%hd4940449484%_ _%body4941049487%_)
                                    (if (gx#stx-pair? _%hd4940449484%_)
                                        (let ((_%e4940749490%_
                                               (gx#syntax-e _%hd4940449484%_)))
                                          (let ((_%lp-tl4940949497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4940749490%_)))
                                                (_%lp-hd4940849494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4940749490%_))))
                                            (_%loop4940649480%_
                                             _%lp-tl4940949497%_
                                             (cons _%lp-hd4940849494%_
                                                   _%body4941049487%_))))
                                        (let ((_%body4941149500%_
                                               (reverse _%body4941049487%_)))
                                          (let ((_%L49504%_ _%body4941149500%_)
                                                (_%L49506%_ _%hd4940149468%_)
                                                (_%L49507%_ _%hd4939549448%_))
                                            (if (and (gx#identifier?
                                                      _%L49507%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49506%_)))
                                                (_%__kont7616476165%_
                                                 _%L49504%_
                                                 _%L49506%_
                                                 _%L49507%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4930249417%_)))))))))
                          (_%loop4940649480%_ _%target4940349474%_ '()))))
                     (_%__match7630076301%_
                      (lambda (_%e4936349548%_
                               _%hd4936249552%_
                               _%tl4936149555%_
                               _%e4936649558%_
                               _%hd4936549562%_
                               _%tl4936449565%_
                               _%e4936949568%_
                               _%hd4936849572%_
                               _%tl4936749575%_
                               _%e4937249578%_
                               _%hd4937149582%_
                               _%tl4937049585%_
                               _%e4937549588%_
                               _%hd4937449592%_
                               _%tl4937349595%_
                               _%__splice7616276163%_
                               _%target4937649598%_
                               _%tl4937849601%_)
                        (letrec ((_%loop4937949604%_
                                  (lambda (_%hd4937749608%_ _%body4938349611%_)
                                    (if (gx#stx-pair? _%hd4937749608%_)
                                        (let ((_%e4938049614%_
                                               (gx#syntax-e _%hd4937749608%_)))
                                          (let ((_%lp-tl4938249621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4938049614%_)))
                                                (_%lp-hd4938149618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4938049614%_))))
                                            (_%loop4937949604%_
                                             _%lp-tl4938249621%_
                                             (cons _%lp-hd4938149618%_
                                                   _%body4938349611%_))))
                                        (let ((_%body4938449624%_
                                               (reverse _%body4938349611%_)))
                                          (let ((_%L49628%_ _%body4938449624%_)
                                                (_%L49630%_ _%hd4937449592%_)
                                                (_%L49631%_ _%hd4936849572%_))
                                            (if (and (gx#identifier?
                                                      _%L49631%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49630%_)))
                                                (_%__kont7616076161%_
                                                 _%L49628%_
                                                 _%L49630%_
                                                 _%L49631%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4930249417%_)))))))))
                          (_%loop4937949604%_ _%target4937649598%_ '()))))
                     (_%__match7625676257%_
                      (lambda (_%e4933649670%_
                               _%hd4933549674%_
                               _%tl4933449677%_
                               _%e4933949680%_
                               _%hd4933849684%_
                               _%tl4933749687%_
                               _%e4934249690%_
                               _%hd4934149694%_
                               _%tl4934049697%_
                               _%e4934549700%_
                               _%hd4934449704%_
                               _%tl4934349707%_
                               _%e4934849710%_
                               _%hd4934749714%_
                               _%tl4934649717%_
                               _%__splice7615876159%_
                               _%target4934949720%_
                               _%tl4935149723%_)
                        (letrec ((_%loop4935249726%_
                                  (lambda (_%hd4935049730%_ _%body4935649733%_)
                                    (if (gx#stx-pair? _%hd4935049730%_)
                                        (let ((_%e4935349736%_
                                               (gx#syntax-e _%hd4935049730%_)))
                                          (let ((_%lp-tl4935549743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4935349736%_)))
                                                (_%lp-hd4935449740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4935349736%_))))
                                            (_%loop4935249726%_
                                             _%lp-tl4935549743%_
                                             (cons _%lp-hd4935449740%_
                                                   _%body4935649733%_))))
                                        (let ((_%body4935749746%_
                                               (reverse _%body4935649733%_)))
                                          (let ((_%L49750%_ _%body4935749746%_)
                                                (_%L49752%_ _%hd4934749714%_)
                                                (_%L49753%_ _%hd4934149694%_))
                                            (if (and (gx#identifier?
                                                      _%L49753%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49752%_)))
                                                (_%__kont7615676157%_
                                                 _%L49750%_
                                                 _%L49752%_
                                                 _%L49753%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4930249417%_)))))))))
                          (_%loop4935249726%_ _%target4934949720%_ '()))))
                     (_%__match7621276213%_
                      (lambda (_%e4930949792%_
                               _%hd4930849796%_
                               _%tl4930749799%_
                               _%e4931249802%_
                               _%hd4931149806%_
                               _%tl4931049809%_
                               _%e4931549812%_
                               _%hd4931449816%_
                               _%tl4931349819%_
                               _%e4931849822%_
                               _%hd4931749826%_
                               _%tl4931649829%_
                               _%e4932149832%_
                               _%hd4932049836%_
                               _%tl4931949839%_
                               _%__splice7615476155%_
                               _%target4932249842%_
                               _%tl4932449845%_)
                        (letrec ((_%loop4932549848%_
                                  (lambda (_%hd4932349852%_ _%body4932949855%_)
                                    (if (gx#stx-pair? _%hd4932349852%_)
                                        (let ((_%e4932649858%_
                                               (gx#syntax-e _%hd4932349852%_)))
                                          (let ((_%lp-tl4932849865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4932649858%_)))
                                                (_%lp-hd4932749862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4932649858%_))))
                                            (_%loop4932549848%_
                                             _%lp-tl4932849865%_
                                             (cons _%lp-hd4932749862%_
                                                   _%body4932949855%_))))
                                        (let ((_%body4933049868%_
                                               (reverse _%body4932949855%_)))
                                          (let ((_%L49872%_ _%body4933049868%_)
                                                (_%L49874%_ _%hd4932049836%_)
                                                (_%L49875%_ _%hd4931449816%_))
                                            (if (and (gx#identifier?
                                                      _%L49875%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49874%_)))
                                                (_%__kont7615276153%_
                                                 _%L49872%_
                                                 _%L49874%_
                                                 _%L49875%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4930249417%_)))))))))
                          (_%loop4932549848%_ _%target4932249842%_ '())))))
                (if (gx#stx-pair? _%__stx7614976150%_)
                    (let ((_%e4930949792%_ (gx#syntax-e _%__stx7614976150%_)))
                      (let ((_%tl4930749799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4930949792%_)))
                            (_%hd4930849796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4930949792%_))))
                        (if (gx#stx-pair? _%tl4930749799%_)
                            (let ((_%e4931249802%_
                                   (gx#syntax-e _%tl4930749799%_)))
                              (let ((_%tl4931049809%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4931249802%_)))
                                    (_%hd4931149806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4931249802%_))))
                                (if (gx#stx-pair? _%hd4931149806%_)
                                    (let ((_%e4931549812%_
                                           (gx#syntax-e _%hd4931149806%_)))
                                      (let ((_%tl4931349819%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4931549812%_)))
                                            (_%hd4931449816%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4931549812%_))))
                                        (if (gx#stx-pair? _%tl4931349819%_)
                                            (let ((_%e4931849822%_
                                                   (gx#syntax-e
                                                    _%tl4931349819%_)))
                                              (let ((_%tl4931649829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4931849822%_)))
                                                    (_%hd4931749826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4931849822%_))))
                                                (if (gx#identifier?
                                                     _%hd4931749826%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80536_|
                                                         _%hd4931749826%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4931649829%_)
                                                            (let ((_%e4932149832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4931649829%_)))
                      (let ((_%tl4931949839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4932149832%_)))
                            (_%hd4932049836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4932149832%_))))
                        (if (gx#stx-null? _%tl4931949839%_)
                            (if (gx#stx-pair/null? _%tl4931049809%_)
                                (let ((_%__splice7615476155%_
                                       (gx#syntax-split-splice
                                        _%tl4931049809%_
                                        '0)))
                                  (let ((_%tl4932449845%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7615476155%_
                                            '1)))
                                        (_%target4932249842%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7615476155%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4932449845%_)
                                        (_%__match7621276213%_
                                         _%e4930949792%_
                                         _%hd4930849796%_
                                         _%tl4930749799%_
                                         _%e4931249802%_
                                         _%hd4931149806%_
                                         _%tl4931049809%_
                                         _%e4931549812%_
                                         _%hd4931449816%_
                                         _%tl4931349819%_
                                         _%e4931849822%_
                                         _%hd4931749826%_
                                         _%tl4931649829%_
                                         _%e4932149832%_
                                         _%hd4932049836%_
                                         _%tl4931949839%_
                                         _%__splice7615476155%_
                                         _%target4932249842%_
                                         _%tl4932449845%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4930249417%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4930249417%_)))
                            (let () (declare (not safe)) (_%g4930249417%_)))))
                    (let () (declare (not safe)) (_%g4930249417%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80537_|
                     _%hd4931749826%_)
                    (if (gx#stx-pair? _%tl4931649829%_)
                        (let ((_%e4934849710%_ (gx#syntax-e _%tl4931649829%_)))
                          (let ((_%tl4934649717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4934849710%_)))
                                (_%hd4934749714%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4934849710%_))))
                            (if (gx#stx-null? _%tl4934649717%_)
                                (if (gx#stx-pair/null? _%tl4931049809%_)
                                    (let ((_%__splice7615876159%_
                                           (gx#syntax-split-splice
                                            _%tl4931049809%_
                                            '0)))
                                      (let ((_%tl4935149723%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7615876159%_
                                                '1)))
                                            (_%target4934949720%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7615876159%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4935149723%_)
                                            (_%__match7625676257%_
                                             _%e4930949792%_
                                             _%hd4930849796%_
                                             _%tl4930749799%_
                                             _%e4931249802%_
                                             _%hd4931149806%_
                                             _%tl4931049809%_
                                             _%e4931549812%_
                                             _%hd4931449816%_
                                             _%tl4931349819%_
                                             _%e4931849822%_
                                             _%hd4931749826%_
                                             _%tl4931649829%_
                                             _%e4934849710%_
                                             _%hd4934749714%_
                                             _%tl4934649717%_
                                             _%__splice7615876159%_
                                             _%target4934949720%_
                                             _%tl4935149723%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4930249417%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4930249417%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4930249417%_)))))
                        (let () (declare (not safe)) (_%g4930249417%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80538_|
                         _%hd4931749826%_)
                        (if (gx#stx-pair? _%tl4931649829%_)
                            (let ((_%e4937549588%_
                                   (gx#syntax-e _%tl4931649829%_)))
                              (let ((_%tl4937349595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4937549588%_)))
                                    (_%hd4937449592%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4937549588%_))))
                                (if (gx#stx-null? _%tl4937349595%_)
                                    (if (gx#stx-pair/null? _%tl4931049809%_)
                                        (let ((_%__splice7616276163%_
                                               (gx#syntax-split-splice
                                                _%tl4931049809%_
                                                '0)))
                                          (let ((_%tl4937849601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7616276163%_
                                                    '1)))
                                                (_%target4937649598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7616276163%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4937849601%_)
                                                (_%__match7630076301%_
                                                 _%e4930949792%_
                                                 _%hd4930849796%_
                                                 _%tl4930749799%_
                                                 _%e4931249802%_
                                                 _%hd4931149806%_
                                                 _%tl4931049809%_
                                                 _%e4931549812%_
                                                 _%hd4931449816%_
                                                 _%tl4931349819%_
                                                 _%e4931849822%_
                                                 _%hd4931749826%_
                                                 _%tl4931649829%_
                                                 _%e4937549588%_
                                                 _%hd4937449592%_
                                                 _%tl4937349595%_
                                                 _%__splice7616276163%_
                                                 _%target4937649598%_
                                                 _%tl4937849601%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4930249417%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4930249417%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4930249417%_)))))
                            (let () (declare (not safe)) (_%g4930249417%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80539_|
                             _%hd4931749826%_)
                            (if (gx#stx-pair? _%tl4931649829%_)
                                (let ((_%e4940249464%_
                                       (gx#syntax-e _%tl4931649829%_)))
                                  (let ((_%tl4940049471%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4940249464%_)))
                                        (_%hd4940149468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4940249464%_))))
                                    (if (gx#stx-null? _%tl4940049471%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4931049809%_)
                                            (let ((_%__splice7616676167%_
                                                   (gx#syntax-split-splice
                                                    _%tl4931049809%_
                                                    '0)))
                                              (let ((_%tl4940549477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7616676167%_
                                                        '1)))
                                                    (_%target4940349474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7616676167%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4940549477%_)
                                                    (_%__match7634476345%_
                                                     _%e4930949792%_
                                                     _%hd4930849796%_
                                                     _%tl4930749799%_
                                                     _%e4931249802%_
                                                     _%hd4931149806%_
                                                     _%tl4931049809%_
                                                     _%e4931549812%_
                                                     _%hd4931449816%_
                                                     _%tl4931349819%_
                                                     _%e4931849822%_
                                                     _%hd4931749826%_
                                                     _%tl4931649829%_
                                                     _%e4940249464%_
                                                     _%hd4940149468%_
                                                     _%tl4940049471%_
                                                     _%__splice7616676167%_
                                                     _%target4940349474%_
                                                     _%tl4940549477%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4930249417%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4930249417%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4930249417%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4930249417%_)))
                            (let () (declare (not safe)) (_%g4930249417%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4930249417%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4930249417%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4930249417%_)))))
                            (let () (declare (not safe)) (_%g4930249417%_)))))
                    (let () (declare (not safe)) (_%g4930249417%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50332%_)
        (let* ((_%__stx7634776348%_ _%stx50332%_)
               (_%g5033750397%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7634776348%_))))
          (let ((_%__kont7635076351%_
                 (lambda (_%L50959%_ _%L50961%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50961%_ '()))
                               (foldr (lambda (_%g5097750980%_ _%g5097850983%_)
                                        (cons _%g5097750980%_ _%g5097850983%_))
                                      '()
                                      _%L50959%_)))))
                (_%__kont7635476355%_
                 (lambda (_%L50545%_ _%L50547%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50547%_)
                       (let* ((_%g5056750574%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50332%_
                                _%L50547%_))
                              (_%E5056950580%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5056750574%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5057050878%_
                               (lambda (_%parts50584%_ _%var50586%_)
                                 (let ((_%$e50588%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50586%_))))
                                   (if _%$e50588%_
                                       ((lambda (_%te50592%_)
                                          (let _%loop50595%_ ((_%parts50598%_
                                                               _%parts50584%_)
                                                              (_%type50600%_
                                                               (##direct-structure-ref
                                                                _%te50592%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50601%_
                                                               _%var50586%_)
                                                              (_%checked-method?50602%_
                                                               (##direct-structure-ref
                                                                _%te50592%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50603%_
                                                               '#f))
                                            (let* ((_%parts5060450612%_
                                                    _%parts50598%_)
                                                   (_%else5060650673%_
                                                    (lambda ()
                                                      (let* ((_%g5062450632%_
                                                              (lambda (_%g5062550628%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5062550628%_)))
                     (_%g5062350669%_
                      (lambda (_%g5062550636%_)
                        ((lambda (_%L50639%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50639%_
                                       (foldr (lambda (_%g5066050663%_
                                                       _%g5066150666%_)
                                                (cons _%g5066050663%_
                                                      _%g5066150666%_))
                                              '()
                                              _%L50545%_))))
                         _%g5062550636%_))))
                (_%g5062350669%_ _%object50601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5060850852%_
                                                    (lambda (_%rest50677%_
                                                             _%part50679%_)
                                                      (if (and (not _%nil-check?50603%_)
                                                               (let ((__tmp80540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part50679%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80540)))
                  (let ((_%str50683%_ (symbol->string _%part50679%_)))
                    (_%loop50595%_
                     (cons (let ((__tmp80541
                                  (substring
                                   _%str50683%_
                                   '1
                                   (string-length _%str50683%_))))
                             (declare (not safe))
                             (##string->symbol __tmp80541))
                           _%rest50677%_)
                     _%type50600%_
                     _%object50601%_
                     _%checked-method?50602%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50600%_))
                      (let* ((_%g5068850703%_
                              (lambda (_%g5068950699%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5068950699%_)))
                             (_%g5068750772%_
                              (lambda (_%g5068950707%_)
                                (if (gx#stx-pair? _%g5068950707%_)
                                    (let ((_%e5069450710%_
                                           (gx#syntax-e _%g5068950707%_)))
                                      (let ((_%hd5069350714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5069450710%_)))
                                            (_%tl5069250717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5069450710%_))))
                                        (if (gx#stx-pair? _%tl5069250717%_)
                                            (let ((_%e5069750720%_
                                                   (gx#syntax-e
                                                    _%tl5069250717%_)))
                                              (let ((_%hd5069650724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5069750720%_)))
                                                    (_%tl5069550727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5069750720%_))))
                                                (if (gx#stx-null?
                                                     _%tl5069550727%_)
                                                    ((lambda (_%L50730%_
                                                              _%L50732%_)
                                                       (if (null? _%rest50677%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L50730%_ (cons _%L50732%_ '()))
                               (foldr (lambda (_%g5075150754%_ _%g5075250757%_)
                                        (cons _%g5075150754%_ _%g5075250757%_))
                                      '()
                                      _%L50545%_)))
                   (let ((_%$e50760%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50600%_
                           _%part50679%_)))
                     (if _%$e50760%_
                         ((lambda (_%slot-type50764%_)
                            (let ((_%slot-type50767%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50332%_
                                      _%slot-type50764%_))))
                              (_%loop50595%_
                               _%rest50677%_
                               _%slot-type50767%_
                               (cons _%L50730%_ (cons _%L50732%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50600%_
                                _%part50679%_)
                               '#f)))
                          _%$e50760%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50332%_
                          _%L50547%_
                          _%part50679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5069650724%_
                                                     _%hd5069350714%_)
                                                    (_%g5068850703%_
                                                     _%g5068950707%_))))
                                            (_%g5068850703%_
                                             _%g5068950707%_))))
                                    (_%g5068850703%_ _%g5068950707%_)))))
                        (_%g5068750772%_
                         (list (if _%nil-check?50603%_
                                   (cons 'check-nil!
                                         (cons _%object50601%_ '()))
                                   _%object50601%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50332%_
                                _%type50600%_
                                _%part50679%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50600%_))
                          (if (null? _%rest50677%_)
                              (let* ((_%g5077850793%_
                                      (lambda (_%g5077950789%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5077950789%_)))
                                     (_%g5077750846%_
                                      (lambda (_%g5077950797%_)
                                        (if (gx#stx-pair? _%g5077950797%_)
                                            (let ((_%e5078450800%_
                                                   (gx#syntax-e
                                                    _%g5077950797%_)))
                                              (let ((_%hd5078350804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5078450800%_)))
                                                    (_%tl5078250807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5078450800%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5078250807%_)
                                                    (let ((_%e5078750810%_
                                                           (gx#syntax-e
                                                            _%tl5078250807%_)))
                                                      (let ((_%hd5078650814%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5078750810%_)))
                    (_%tl5078550817%_
                     (let () (declare (not safe)) (##cdr _%e5078750810%_))))
                (if (gx#stx-null? _%tl5078550817%_)
                    ((lambda (_%L50820%_ _%L50822%_)
                       (cons _%L50820%_
                             (cons _%L50822%_
                                   (foldr (lambda (_%g5083750840%_
                                                   _%g5083850843%_)
                                            (cons _%g5083750840%_
                                                  _%g5083850843%_))
                                          '()
                                          _%L50545%_))))
                     _%hd5078650814%_
                     _%hd5078350804%_)
                    (_%g5077850793%_ _%g5077950797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5077850793%_
                                                     _%g5077950797%_))))
                                            (_%g5077850793%_
                                             _%g5077950797%_)))))
                                (_%g5077750846%_
                                 (list (if _%nil-check?50603%_
                                           (cons 'check-nil!
                                                 (cons _%object50601%_ '()))
                                           _%object50601%_)
                                       (gx#stx-identifier
                                        _%L50547%_
                                        (if _%checked-method?50602%_ '"" '"&")
                                        (let ((__obj80372 _%type50600%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj80372
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj80372
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/contract~InterfaceInfo#interface-info::t
                                               __obj80372
                                               'name)))
                                        '"-"
                                        _%part50679%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50332%_
                               _%L50547%_
                               _%part50679%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50332%_
                           _%type50600%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5060450612%_))
                                                  (let ((_%hd5060950856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5060450612%_)))
                                                        (_%tl5061050859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5060450612%_))))
                                                    (let* ((_%part50862%_
                                                            _%hd5060950856%_)
                                                           (_%rest50865%_
                                                            _%tl5061050859%_))
                                                      (_%K5060850852%_
                                                       _%rest50865%_
                                                       _%part50862%_)))
                                                  (_%else5060650673%_)))))
                                        _%$e50588%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50547%_
                                                   (foldr (lambda (_%g5086950872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5087050875%_)
                    (cons _%g5086950872%_ _%g5087050875%_))
                  '()
                  _%L50545%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5056750574%_))
                             (let ((_%hd5057150882%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5056750574%_)))
                                   (_%tl5057250885%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5056750574%_))))
                               (let* ((_%var50888%_ _%hd5057150882%_)
                                      (_%parts50891%_ _%tl5057250885%_))
                                 (_%K5057050878%_
                                  _%parts50891%_
                                  _%var50888%_)))
                             (_%E5056950580%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50547%_
                                   (foldr (lambda (_%g5089350896%_
                                                   _%g5089450899%_)
                                            (cons _%g5089350896%_
                                                  _%g5089450899%_))
                                          '()
                                          _%L50545%_))))))
                (_%__kont7635876359%_
                 (lambda (_%L50444%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5045950462%_ _%g5046050465%_)
                                  (cons _%g5045950462%_ _%g5046050465%_))
                                '()
                                _%L50444%_)))))
            (let* ((_%__match7643476435%_
                    (lambda (_%e5038250404%_
                             _%hd5038150408%_
                             _%tl5038050411%_
                             _%__splice7636076361%_
                             _%target5038350414%_
                             _%tl5038550417%_)
                      (letrec ((_%loop5038650420%_
                                (lambda (_%hd5038450424%_ _%arg5039050427%_)
                                  (if (gx#stx-pair? _%hd5038450424%_)
                                      (let ((_%e5038750430%_
                                             (gx#syntax-e _%hd5038450424%_)))
                                        (let ((_%lp-tl5038950437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5038750430%_)))
                                              (_%lp-hd5038850434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5038750430%_))))
                                          (_%loop5038650420%_
                                           _%lp-tl5038950437%_
                                           (cons _%lp-hd5038850434%_
                                                 _%arg5039050427%_))))
                                      (let ((_%arg5039150440%_
                                             (reverse _%arg5039050427%_)))
                                        (_%__kont7635876359%_
                                         _%arg5039150440%_))))))
                        (_%loop5038650420%_ _%target5038350414%_ '()))))
                   (_%__match7642076421%_
                    (lambda (_%e5036050475%_
                             _%hd5035950479%_
                             _%tl5035850482%_
                             _%e5036350485%_
                             _%hd5036250489%_
                             _%tl5036150492%_
                             _%e5036650495%_
                             _%hd5036550499%_
                             _%tl5036450502%_
                             _%e5036950505%_
                             _%hd5036850509%_
                             _%tl5036750512%_
                             _%__splice7635676357%_
                             _%target5037050515%_
                             _%tl5037250518%_)
                      (letrec ((_%loop5037350521%_
                                (lambda (_%hd5037150525%_ _%rand5037750528%_)
                                  (if (gx#stx-pair? _%hd5037150525%_)
                                      (let ((_%e5037450531%_
                                             (gx#syntax-e _%hd5037150525%_)))
                                        (let ((_%lp-tl5037650538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5037450531%_)))
                                              (_%lp-hd5037550535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5037450531%_))))
                                          (_%loop5037350521%_
                                           _%lp-tl5037650538%_
                                           (cons _%lp-hd5037550535%_
                                                 _%rand5037750528%_))))
                                      (let ((_%rand5037850541%_
                                             (reverse _%rand5037750528%_)))
                                        (_%__kont7635476355%_
                                         _%rand5037850541%_
                                         _%hd5036850509%_))))))
                        (_%loop5037350521%_ _%target5037050515%_ '()))))
                   (_%__match7639476395%_
                    (lambda (_%e5036050475%_
                             _%hd5035950479%_
                             _%tl5035850482%_
                             _%e5036350485%_
                             _%hd5036250489%_
                             _%tl5036150492%_)
                      (if (gx#stx-pair? _%hd5036250489%_)
                          (let ((_%e5036650495%_
                                 (gx#syntax-e _%hd5036250489%_)))
                            (let ((_%tl5036450502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5036650495%_)))
                                  (_%hd5036550499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5036650495%_))))
                              (if (gx#identifier? _%hd5036550499%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80542_|
                                       _%hd5036550499%_)
                                      (if (gx#stx-pair? _%tl5036450502%_)
                                          (let ((_%e5036950505%_
                                                 (gx#syntax-e
                                                  _%tl5036450502%_)))
                                            (let ((_%tl5036750512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5036950505%_)))
                                                  (_%hd5036850509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5036950505%_))))
                                              (if (gx#stx-null?
                                                   _%tl5036750512%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5036150492%_)
                                                      (let ((_%__splice7635676357%_
                                                             (gx#syntax-split-splice
                                                              _%tl5036150492%_
                                                              '0)))
                                                        (let ((_%tl5037250518%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7635676357%_ '1)))
                      (_%target5037050515%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7635676357%_ '0))))
                  (if (gx#stx-null? _%tl5037250518%_)
                      (_%__match7642076421%_
                       _%e5036050475%_
                       _%hd5035950479%_
                       _%tl5035850482%_
                       _%e5036350485%_
                       _%hd5036250489%_
                       _%tl5036150492%_
                       _%e5036650495%_
                       _%hd5036550499%_
                       _%tl5036450502%_
                       _%e5036950505%_
                       _%hd5036850509%_
                       _%tl5036750512%_
                       _%__splice7635676357%_
                       _%target5037050515%_
                       _%tl5037250518%_)
                      (if (gx#stx-pair/null? _%tl5035850482%_)
                          (let ((_%__splice7636076361%_
                                 (gx#syntax-split-splice _%tl5035850482%_ '0)))
                            (let ((_%tl5038550417%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7636076361%_ '1)))
                                  (_%target5038350414%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7636076361%_
                                      '0))))
                              (if (gx#stx-null? _%tl5038550417%_)
                                  (_%__match7643476435%_
                                   _%e5036050475%_
                                   _%hd5035950479%_
                                   _%tl5035850482%_
                                   _%__splice7636076361%_
                                   _%target5038350414%_
                                   _%tl5038550417%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5033750397%_)))))
                          (let () (declare (not safe)) (_%g5033750397%_))))))
              (if (gx#stx-pair/null? _%tl5035850482%_)
                  (let ((_%__splice7636076361%_
                         (gx#syntax-split-splice _%tl5035850482%_ '0)))
                    (let ((_%tl5038550417%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '1)))
                          (_%target5038350414%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '0))))
                      (if (gx#stx-null? _%tl5038550417%_)
                          (_%__match7643476435%_
                           _%e5036050475%_
                           _%hd5035950479%_
                           _%tl5035850482%_
                           _%__splice7636076361%_
                           _%target5038350414%_
                           _%tl5038550417%_)
                          (let () (declare (not safe)) (_%g5033750397%_)))))
                  (let () (declare (not safe)) (_%g5033750397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5035850482%_)
                                                      (let ((_%__splice7636076361%_
                                                             (gx#syntax-split-splice
                                                              _%tl5035850482%_
                                                              '0)))
                                                        (let ((_%tl5038550417%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7636076361%_ '1)))
                      (_%target5038350414%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7636076361%_ '0))))
                  (if (gx#stx-null? _%tl5038550417%_)
                      (_%__match7643476435%_
                       _%e5036050475%_
                       _%hd5035950479%_
                       _%tl5035850482%_
                       _%__splice7636076361%_
                       _%target5038350414%_
                       _%tl5038550417%_)
                      (let () (declare (not safe)) (_%g5033750397%_)))))
              (let () (declare (not safe)) (_%g5033750397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5035850482%_)
                                              (let ((_%__splice7636076361%_
                                                     (gx#syntax-split-splice
                                                      _%tl5035850482%_
                                                      '0)))
                                                (let ((_%tl5038550417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7636076361%_
                                                          '1)))
                                                      (_%target5038350414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7636076361%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5038550417%_)
                                                      (_%__match7643476435%_
                                                       _%e5036050475%_
                                                       _%hd5035950479%_
                                                       _%tl5035850482%_
                                                       _%__splice7636076361%_
                                                       _%target5038350414%_
                                                       _%tl5038550417%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5033750397%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5033750397%_))))
                                      (if (gx#stx-pair/null? _%tl5035850482%_)
                                          (let ((_%__splice7636076361%_
                                                 (gx#syntax-split-splice
                                                  _%tl5035850482%_
                                                  '0)))
                                            (let ((_%tl5038550417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7636076361%_
                                                      '1)))
                                                  (_%target5038350414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7636076361%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5038550417%_)
                                                  (_%__match7643476435%_
                                                   _%e5036050475%_
                                                   _%hd5035950479%_
                                                   _%tl5035850482%_
                                                   _%__splice7636076361%_
                                                   _%target5038350414%_
                                                   _%tl5038550417%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5033750397%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5033750397%_))))
                                  (if (gx#stx-pair/null? _%tl5035850482%_)
                                      (let ((_%__splice7636076361%_
                                             (gx#syntax-split-splice
                                              _%tl5035850482%_
                                              '0)))
                                        (let ((_%tl5038550417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7636076361%_
                                                  '1)))
                                              (_%target5038350414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7636076361%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5038550417%_)
                                              (_%__match7643476435%_
                                               _%e5036050475%_
                                               _%hd5035950479%_
                                               _%tl5035850482%_
                                               _%__splice7636076361%_
                                               _%target5038350414%_
                                               _%tl5038550417%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5033750397%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5033750397%_))))))
                          (if (gx#stx-pair/null? _%tl5035850482%_)
                              (let ((_%__splice7636076361%_
                                     (gx#syntax-split-splice
                                      _%tl5035850482%_
                                      '0)))
                                (let ((_%tl5038550417%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '1)))
                                      (_%target5038350414%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5038550417%_)
                                      (_%__match7643476435%_
                                       _%e5036050475%_
                                       _%hd5035950479%_
                                       _%tl5035850482%_
                                       _%__splice7636076361%_
                                       _%target5038350414%_
                                       _%tl5038550417%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5033750397%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5033750397%_))))))
                   (_%__match7638276383%_
                    (lambda (_%e5034350909%_
                             _%hd5034250913%_
                             _%tl5034150916%_
                             _%e5034650919%_
                             _%hd5034550923%_
                             _%tl5034450926%_
                             _%__splice7635276353%_
                             _%target5034750929%_
                             _%tl5034950932%_)
                      (letrec ((_%loop5035050935%_
                                (lambda (_%hd5034850939%_ _%rand5035450942%_)
                                  (if (gx#stx-pair? _%hd5034850939%_)
                                      (let ((_%e5035150945%_
                                             (gx#syntax-e _%hd5034850939%_)))
                                        (let ((_%lp-tl5035350952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5035150945%_)))
                                              (_%lp-hd5035250949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5035150945%_))))
                                          (_%loop5035050935%_
                                           _%lp-tl5035350952%_
                                           (cons _%lp-hd5035250949%_
                                                 _%rand5035450942%_))))
                                      (let ((_%rand5035550955%_
                                             (reverse _%rand5035450942%_)))
                                        (let ((_%L50959%_ _%rand5035550955%_)
                                              (_%L50961%_ _%hd5034550923%_))
                                          (if (gx#identifier? _%L50961%_)
                                              (_%__kont7635076351%_
                                               _%L50959%_
                                               _%L50961%_)
                                              (_%__match7639476395%_
                                               _%e5034350909%_
                                               _%hd5034250913%_
                                               _%tl5034150916%_
                                               _%e5034650919%_
                                               _%hd5034550923%_
                                               _%tl5034450926%_))))))))
                        (_%loop5035050935%_ _%target5034750929%_ '())))))
              (if (gx#stx-pair? _%__stx7634776348%_)
                  (let ((_%e5034350909%_ (gx#syntax-e _%__stx7634776348%_)))
                    (let ((_%tl5034150916%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5034350909%_)))
                          (_%hd5034250913%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5034350909%_))))
                      (if (gx#stx-pair? _%tl5034150916%_)
                          (let ((_%e5034650919%_
                                 (gx#syntax-e _%tl5034150916%_)))
                            (let ((_%tl5034450926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5034650919%_)))
                                  (_%hd5034550923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5034650919%_))))
                              (if (gx#stx-pair/null? _%tl5034450926%_)
                                  (let ((_%__splice7635276353%_
                                         (gx#syntax-split-splice
                                          _%tl5034450926%_
                                          '0)))
                                    (let ((_%tl5034950932%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7635276353%_
                                              '1)))
                                          (_%target5034750929%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7635276353%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5034950932%_)
                                          (_%__match7638276383%_
                                           _%e5034350909%_
                                           _%hd5034250913%_
                                           _%tl5034150916%_
                                           _%e5034650919%_
                                           _%hd5034550923%_
                                           _%tl5034450926%_
                                           _%__splice7635276353%_
                                           _%target5034750929%_
                                           _%tl5034950932%_)
                                          (if (gx#stx-pair? _%hd5034550923%_)
                                              (let ((_%e5036650495%_
                                                     (gx#syntax-e
                                                      _%hd5034550923%_)))
                                                (let ((_%tl5036450502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5036650495%_)))
                                                      (_%hd5036550499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5036650495%_))))
                                                  (if (gx#identifier?
                                                       _%hd5036550499%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80542_|
                                                           _%hd5036550499%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5036450502%_)
                                                              (let ((_%e5036950505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5036450502%_)))
                        (let ((_%tl5036750512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5036950505%_)))
                              (_%hd5036850509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5036950505%_))))
                          (if (gx#stx-pair/null? _%tl5034150916%_)
                              (let ((_%__splice7636076361%_
                                     (gx#syntax-split-splice
                                      _%tl5034150916%_
                                      '0)))
                                (let ((_%tl5038550417%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '1)))
                                      (_%target5038350414%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5038550417%_)
                                      (_%__match7643476435%_
                                       _%e5034350909%_
                                       _%hd5034250913%_
                                       _%tl5034150916%_
                                       _%__splice7636076361%_
                                       _%target5038350414%_
                                       _%tl5038550417%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5033750397%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5033750397%_)))))
                      (if (gx#stx-pair/null? _%tl5034150916%_)
                          (let ((_%__splice7636076361%_
                                 (gx#syntax-split-splice _%tl5034150916%_ '0)))
                            (let ((_%tl5038550417%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7636076361%_ '1)))
                                  (_%target5038350414%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7636076361%_
                                      '0))))
                              (if (gx#stx-null? _%tl5038550417%_)
                                  (_%__match7643476435%_
                                   _%e5034350909%_
                                   _%hd5034250913%_
                                   _%tl5034150916%_
                                   _%__splice7636076361%_
                                   _%target5038350414%_
                                   _%tl5038550417%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5033750397%_)))))
                          (let () (declare (not safe)) (_%g5033750397%_))))
                  (if (gx#stx-pair/null? _%tl5034150916%_)
                      (let ((_%__splice7636076361%_
                             (gx#syntax-split-splice _%tl5034150916%_ '0)))
                        (let ((_%tl5038550417%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7636076361%_ '1)))
                              (_%target5038350414%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7636076361%_ '0))))
                          (if (gx#stx-null? _%tl5038550417%_)
                              (_%__match7643476435%_
                               _%e5034350909%_
                               _%hd5034250913%_
                               _%tl5034150916%_
                               _%__splice7636076361%_
                               _%target5038350414%_
                               _%tl5038550417%_)
                              (let ()
                                (declare (not safe))
                                (_%g5033750397%_)))))
                      (let () (declare (not safe)) (_%g5033750397%_))))
              (if (gx#stx-pair/null? _%tl5034150916%_)
                  (let ((_%__splice7636076361%_
                         (gx#syntax-split-splice _%tl5034150916%_ '0)))
                    (let ((_%tl5038550417%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '1)))
                          (_%target5038350414%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '0))))
                      (if (gx#stx-null? _%tl5038550417%_)
                          (_%__match7643476435%_
                           _%e5034350909%_
                           _%hd5034250913%_
                           _%tl5034150916%_
                           _%__splice7636076361%_
                           _%target5038350414%_
                           _%tl5038550417%_)
                          (let () (declare (not safe)) (_%g5033750397%_)))))
                  (let () (declare (not safe)) (_%g5033750397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5034150916%_)
                                                  (let ((_%__splice7636076361%_
                                                         (gx#syntax-split-splice
                                                          _%tl5034150916%_
                                                          '0)))
                                                    (let ((_%tl5038550417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7636076361%_
                                                              '1)))
                                                          (_%target5038350414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7636076361%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5038550417%_)
                                                          (_%__match7643476435%_
                                                           _%e5034350909%_
                                                           _%hd5034250913%_
                                                           _%tl5034150916%_
                                                           _%__splice7636076361%_
                                                           _%target5038350414%_
                                                           _%tl5038550417%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5033750397%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5033750397%_)))))))
                                  (if (gx#stx-pair? _%hd5034550923%_)
                                      (let ((_%e5036650495%_
                                             (gx#syntax-e _%hd5034550923%_)))
                                        (let ((_%tl5036450502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5036650495%_)))
                                              (_%hd5036550499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5036650495%_))))
                                          (if (gx#identifier? _%hd5036550499%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80542_|
                                                   _%hd5036550499%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5036450502%_)
                                                      (let ((_%e5036950505%_
                                                             (gx#syntax-e
                                                              _%tl5036450502%_)))
                                                        (let ((_%tl5036750512%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5036950505%_)))
                      (_%hd5036850509%_
                       (let () (declare (not safe)) (##car _%e5036950505%_))))
                  (if (gx#stx-pair/null? _%tl5034150916%_)
                      (let ((_%__splice7636076361%_
                             (gx#syntax-split-splice _%tl5034150916%_ '0)))
                        (let ((_%tl5038550417%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7636076361%_ '1)))
                              (_%target5038350414%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7636076361%_ '0))))
                          (if (gx#stx-null? _%tl5038550417%_)
                              (_%__match7643476435%_
                               _%e5034350909%_
                               _%hd5034250913%_
                               _%tl5034150916%_
                               _%__splice7636076361%_
                               _%target5038350414%_
                               _%tl5038550417%_)
                              (let ()
                                (declare (not safe))
                                (_%g5033750397%_)))))
                      (let () (declare (not safe)) (_%g5033750397%_)))))
              (if (gx#stx-pair/null? _%tl5034150916%_)
                  (let ((_%__splice7636076361%_
                         (gx#syntax-split-splice _%tl5034150916%_ '0)))
                    (let ((_%tl5038550417%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '1)))
                          (_%target5038350414%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7636076361%_ '0))))
                      (if (gx#stx-null? _%tl5038550417%_)
                          (_%__match7643476435%_
                           _%e5034350909%_
                           _%hd5034250913%_
                           _%tl5034150916%_
                           _%__splice7636076361%_
                           _%target5038350414%_
                           _%tl5038550417%_)
                          (let () (declare (not safe)) (_%g5033750397%_)))))
                  (let () (declare (not safe)) (_%g5033750397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5034150916%_)
                                                      (let ((_%__splice7636076361%_
                                                             (gx#syntax-split-splice
                                                              _%tl5034150916%_
                                                              '0)))
                                                        (let ((_%tl5038550417%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7636076361%_ '1)))
                      (_%target5038350414%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7636076361%_ '0))))
                  (if (gx#stx-null? _%tl5038550417%_)
                      (_%__match7643476435%_
                       _%e5034350909%_
                       _%hd5034250913%_
                       _%tl5034150916%_
                       _%__splice7636076361%_
                       _%target5038350414%_
                       _%tl5038550417%_)
                      (let () (declare (not safe)) (_%g5033750397%_)))))
              (let () (declare (not safe)) (_%g5033750397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5034150916%_)
                                                  (let ((_%__splice7636076361%_
                                                         (gx#syntax-split-splice
                                                          _%tl5034150916%_
                                                          '0)))
                                                    (let ((_%tl5038550417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7636076361%_
                                                              '1)))
                                                          (_%target5038350414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7636076361%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5038550417%_)
                                                          (_%__match7643476435%_
                                                           _%e5034350909%_
                                                           _%hd5034250913%_
                                                           _%tl5034150916%_
                                                           _%__splice7636076361%_
                                                           _%target5038350414%_
                                                           _%tl5038550417%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5033750397%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5033750397%_))))))
                                      (if (gx#stx-pair/null? _%tl5034150916%_)
                                          (let ((_%__splice7636076361%_
                                                 (gx#syntax-split-splice
                                                  _%tl5034150916%_
                                                  '0)))
                                            (let ((_%tl5038550417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7636076361%_
                                                      '1)))
                                                  (_%target5038350414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7636076361%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5038550417%_)
                                                  (_%__match7643476435%_
                                                   _%e5034350909%_
                                                   _%hd5034250913%_
                                                   _%tl5034150916%_
                                                   _%__splice7636076361%_
                                                   _%target5038350414%_
                                                   _%tl5038550417%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5033750397%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5033750397%_)))))))
                          (if (gx#stx-pair/null? _%tl5034150916%_)
                              (let ((_%__splice7636076361%_
                                     (gx#syntax-split-splice
                                      _%tl5034150916%_
                                      '0)))
                                (let ((_%tl5038550417%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '1)))
                                      (_%target5038350414%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7636076361%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5038550417%_)
                                      (_%__match7643476435%_
                                       _%e5034350909%_
                                       _%hd5034250913%_
                                       _%tl5034150916%_
                                       _%__splice7636076361%_
                                       _%target5038350414%_
                                       _%tl5038550417%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5033750397%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5033750397%_))))))
                  (let () (declare (not safe)) (_%g5033750397%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50993%_)
        (let* ((_%__stx7643776438%_ _%stx50993%_)
               (_%g5099751018%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7643776438%_))))
          (let ((_%__kont7644076441%_
                 (lambda (_%L51086%_)
                   (let* ((_%g5109851105%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx50993%_
                            _%L51086%_))
                          (_%E5110051111%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5109851105%_
                                    '([var . parts]))
                             (void)))
                          (_%K5110151327%_
                           (lambda (_%parts51115%_ _%var51117%_)
                             (let ((_%$e51119%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51117%_))))
                               (if _%$e51119%_
                                   ((lambda (_%te51123%_)
                                      (let _%loop51126%_ ((_%parts51129%_
                                                           _%parts51115%_)
                                                          (_%type51131%_
                                                           (##direct-structure-ref
                                                            _%te51123%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51132%_
                                                           _%var51117%_)
                                                          (_%nil-check?51133%_
                                                           '#f))
                                        (let* ((_%parts5113451142%_
                                                _%parts51129%_)
                                               (_%else5113651154%_
                                                (lambda () _%object51132%_))
                                               (_%K5113851309%_
                                                (lambda (_%rest51158%_
                                                         _%part51160%_)
                                                  (if (and (not _%nil-check?51133%_)
                                                           (let ((__tmp80543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51160%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80543)))
              (let ((_%str51164%_ (symbol->string _%part51160%_)))
                (_%loop51126%_
                 (cons (let ((__tmp80544
                              (substring
                               _%str51164%_
                               '1
                               (string-length _%str51164%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80544))
                       _%rest51158%_)
                 _%type51131%_
                 _%object51132%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51131%_))
                  (let* ((_%g5116951184%_
                          (lambda (_%g5117051180%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5117051180%_)))
                         (_%g5116851301%_
                          (lambda (_%g5117051188%_)
                            (if (gx#stx-pair? _%g5117051188%_)
                                (let ((_%e5117551191%_
                                       (gx#syntax-e _%g5117051188%_)))
                                  (let ((_%hd5117451195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5117551191%_)))
                                        (_%tl5117351198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5117551191%_))))
                                    (if (gx#stx-pair? _%tl5117351198%_)
                                        (let ((_%e5117851201%_
                                               (gx#syntax-e _%tl5117351198%_)))
                                          (let ((_%hd5117751205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5117851201%_)))
                                                (_%tl5117651208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5117851201%_))))
                                            (if (gx#stx-null? _%tl5117651208%_)
                                                ((lambda (_%L51211%_
                                                          _%L51213%_)
                                                   (if (null? _%rest51158%_)
                                                       (let ((_%$e51243%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51131%_
                                                               _%part51160%_)))
                                                         (if _%$e51243%_
                                                             ((lambda (_%slot-type51247%_)
                                                                (let* ((_%g5125051258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5125151254%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5125151254%_)))
                               (_%g5124951281%_
                                (lambda (_%g5125151262%_)
                                  ((lambda (_%L51265%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51265%_ '()))
                                                 (cons (cons _%L51211%_
                                                             (cons _%L51213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5125151262%_))))
                          (_%g5124951281%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx50993%_
                              _%slot-type51247%_)))))
                      _%$e51243%_)
                     (if _%nil-check?51133%_
                         (cons _%L51211%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51213%_ '()))
                                     '()))
                         (cons _%L51211%_ (cons _%L51213%_ '())))))
               (let ((_%$e51289%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51131%_
                       _%part51160%_)))
                 (if _%$e51289%_
                     ((lambda (_%type51293%_)
                        (let ((_%type51296%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx50993%_
                                  _%type51293%_))))
                          (if _%nil-check?51133%_
                              (_%loop51126%_
                               _%rest51158%_
                               _%type51296%_
                               (cons _%L51211%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51213%_ '()))
                                           '()))
                               '#f)
                              (_%loop51126%_
                               _%rest51158%_
                               _%type51296%_
                               (cons _%L51211%_ (cons _%L51213%_ '()))
                               '#f))))
                      _%$e51289%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx50993%_
                      _%L51086%_
                      _%part51160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5117751205%_
                                                 _%hd5117451195%_)
                                                (_%g5116951184%_
                                                 _%g5117051188%_))))
                                        (_%g5116951184%_ _%g5117051188%_))))
                                (_%g5116951184%_ _%g5117051188%_)))))
                    (_%g5116851301%_
                     (list (if _%nil-check?51133%_
                               (cons 'check-nil! (cons _%object51132%_ '()))
                               _%object51132%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx50993%_
                            _%type51131%_
                            _%part51160%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51131%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx50993%_
                       _%type51131%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5113451142%_))
                                              (let ((_%hd5113951313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5113451142%_)))
                                                    (_%tl5114051316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5113451142%_))))
                                                (let* ((_%part51319%_
                                                        _%hd5113951313%_)
                                                       (_%rest51322%_
                                                        _%tl5114051316%_))
                                                  (_%K5113851309%_
                                                   _%rest51322%_
                                                   _%part51319%_)))
                                              (_%else5113651154%_)))))
                                    _%$e51119%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51086%_ '())))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5109851105%_))
                         (let ((_%hd5110251331%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5109851105%_)))
                               (_%tl5110351334%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5109851105%_))))
                           (let* ((_%var51337%_ _%hd5110251331%_)
                                  (_%parts51340%_ _%tl5110351334%_))
                             (_%K5110151327%_ _%parts51340%_ _%var51337%_)))
                         (_%E5110051111%_)))))
                (_%__kont7644276443%_
                 (lambda (_%L51045%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51045%_ '())))))
            (let ((_%__match7645876459%_
                   (lambda (_%e5100251066%_
                            _%hd5100151070%_
                            _%tl5100051073%_
                            _%e5100551076%_
                            _%hd5100451080%_
                            _%tl5100351083%_)
                     (let ((_%L51086%_ _%hd5100451080%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51086%_)
                           (_%__kont7644076441%_ _%L51086%_)
                           (_%__kont7644276443%_ _%hd5100451080%_))))))
              (if (gx#stx-pair? _%__stx7643776438%_)
                  (let ((_%e5100251066%_ (gx#syntax-e _%__stx7643776438%_)))
                    (let ((_%tl5100051073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5100251066%_)))
                          (_%hd5100151070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5100251066%_))))
                      (if (gx#stx-pair? _%tl5100051073%_)
                          (let ((_%e5100551076%_
                                 (gx#syntax-e _%tl5100051073%_)))
                            (let ((_%tl5100351083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5100551076%_)))
                                  (_%hd5100451080%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5100551076%_))))
                              (if (gx#stx-null? _%tl5100351083%_)
                                  (_%__match7645876459%_
                                   _%e5100251066%_
                                   _%hd5100151070%_
                                   _%tl5100051073%_
                                   _%e5100551076%_
                                   _%hd5100451080%_
                                   _%tl5100351083%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5099751018%_)))))
                          (let () (declare (not safe)) (_%g5099751018%_)))))
                  (let () (declare (not safe)) (_%g5099751018%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51347%_)
        (let* ((_%__stx7647576476%_ _%stx51347%_)
               (_%g5135151380%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7647576476%_))))
          (let ((_%__kont7647876479%_
                 (lambda (_%L51472%_ _%L51474%_)
                   (let* ((_%g5148851495%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51347%_
                            _%L51474%_))
                          (_%E5149051501%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5148851495%_
                                    '([var . parts]))
                             (void)))
                          (_%K5149151731%_
                           (lambda (_%parts51505%_ _%var51507%_)
                             (let ((_%$e51509%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51507%_))))
                               (if _%$e51509%_
                                   ((lambda (_%te51513%_)
                                      (let _%loop51516%_ ((_%parts51519%_
                                                           _%parts51505%_)
                                                          (_%type51521%_
                                                           (##direct-structure-ref
                                                            _%te51513%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51522%_
                                                           _%var51507%_)
                                                          (_%checked-mutator?51523%_
                                                           (##direct-structure-ref
                                                            _%te51513%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51524%_
                                                           '#f))
                                        (let* ((_%parts5152551532%_
                                                _%parts51519%_)
                                               (_%E5152751538%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5152551532%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5152851713%_
                                                (lambda (_%rest51542%_
                                                         _%part51544%_)
                                                  (if (and (not _%nil-check?51524%_)
                                                           (let ((__tmp80545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51544%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80545)))
              (let ((_%str51548%_ (symbol->string _%part51544%_)))
                (_%loop51516%_
                 (cons (let ((__tmp80546
                              (substring
                               _%str51548%_
                               '1
                               (string-length _%str51548%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80546))
                       _%rest51542%_)
                 _%type51521%_
                 _%object51522%_
                 _%checked-mutator?51523%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51521%_))
                  (if (null? _%rest51542%_)
                      (let* ((_%g5155551570%_
                              (lambda (_%g5155651566%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5155651566%_)))
                             (_%g5155451627%_
                              (lambda (_%g5155651574%_)
                                (if (gx#stx-pair? _%g5155651574%_)
                                    (let ((_%e5156151577%_
                                           (gx#syntax-e _%g5155651574%_)))
                                      (let ((_%hd5156051581%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5156151577%_)))
                                            (_%tl5155951584%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5156151577%_))))
                                        (if (gx#stx-pair? _%tl5155951584%_)
                                            (let ((_%e5156451587%_
                                                   (gx#syntax-e
                                                    _%tl5155951584%_)))
                                              (let ((_%hd5156351591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5156451587%_)))
                                                    (_%tl5156251594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5156451587%_))))
                                                (if (gx#stx-null?
                                                     _%tl5156251594%_)
                                                    ((lambda (_%L51597%_
                                                              _%L51599%_)
                                                       (if _%nil-check?51524%_
                                                           (cons _%L51597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51599%_ '()))
                               (cons _%L51472%_ '())))
                   (cons _%L51597%_ (cons _%L51599%_ (cons _%L51472%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5156351591%_
                                                     _%hd5156051581%_)
                                                    (_%g5155551570%_
                                                     _%g5155651574%_))))
                                            (_%g5155551570%_
                                             _%g5155651574%_))))
                                    (_%g5155551570%_ _%g5155651574%_)))))
                        (_%g5155451627%_
                         (list _%object51522%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51347%_
                                _%type51521%_
                                _%part51544%_
                                (if _%checked-mutator?51523%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51521%_
                                     _%part51544%_)
                                    '#f)))))
                      (let ((_%$e51631%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51521%_
                              _%part51544%_)))
                        (if _%$e51631%_
                            ((lambda (_%type51635%_)
                               (let* ((_%type51638%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51347%_
                                          _%type51635%_)))
                                      (_%g5164151656%_
                                       (lambda (_%g5164251652%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5164251652%_)))
                                      (_%g5164051703%_
                                       (lambda (_%g5164251660%_)
                                         (if (gx#stx-pair? _%g5164251660%_)
                                             (let ((_%e5164751663%_
                                                    (gx#syntax-e
                                                     _%g5164251660%_)))
                                               (let ((_%hd5164651667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5164751663%_)))
                                                     (_%tl5164551670%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5164751663%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5164551670%_)
                                                     (let ((_%e5165051673%_
                                                            (gx#syntax-e
                                                             _%tl5164551670%_)))
                                                       (let ((_%hd5164951677%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5165051673%_)))
                     (_%tl5164851680%_
                      (let () (declare (not safe)) (##cdr _%e5165051673%_))))
                 (if (gx#stx-null? _%tl5164851680%_)
                     ((lambda (_%L51683%_ _%L51685%_)
                        (_%loop51516%_
                         _%rest51542%_
                         _%type51638%_
                         (cons _%L51683%_ (cons _%L51685%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51638%_
                          _%part51544%_)
                         '#f))
                      _%hd5164951677%_
                      _%hd5164651667%_)
                     (_%g5164151656%_ _%g5164251660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5164151656%_
                                                      _%g5164251660%_))))
                                             (_%g5164151656%_
                                              _%g5164251660%_)))))
                                 (_%g5164051703%_
                                  (list (if _%nil-check?51524%_
                                            (cons 'check-nil!
                                                  (cons _%object51522%_ '()))
                                            _%object51522%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51347%_
                                         _%type51638%_
                                         _%part51544%_)))))
                             _%$e51631%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51347%_
                             _%L51474%_
                             _%part51544%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51521%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51347%_
                       _%type51521%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5152551532%_))
                                              (let ((_%hd5152951717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5152551532%_)))
                                                    (_%tl5153051720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5152551532%_))))
                                                (let* ((_%part51723%_
                                                        _%hd5152951717%_)
                                                       (_%rest51726%_
                                                        _%tl5153051720%_))
                                                  (_%K5152851713%_
                                                   _%rest51726%_
                                                   _%part51723%_)))
                                              (_%E5152751538%_)))))
                                    _%$e51509%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51347%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5148851495%_))
                         (let ((_%hd5149251735%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5148851495%_)))
                               (_%tl5149351738%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5148851495%_))))
                           (let* ((_%var51741%_ _%hd5149251735%_)
                                  (_%parts51744%_ _%tl5149351738%_))
                             (_%K5149151731%_ _%parts51744%_ _%var51741%_)))
                         (_%E5149051501%_)))))
                (_%__kont7648076481%_
                 (lambda (_%L51417%_ _%L51419%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51347%_)))))
            (let ((_%__match7650276503%_
                   (lambda (_%e5135751442%_
                            _%hd5135651446%_
                            _%tl5135551449%_
                            _%e5136051452%_
                            _%hd5135951456%_
                            _%tl5135851459%_
                            _%e5136351462%_
                            _%hd5136251466%_
                            _%tl5136151469%_)
                     (let ((_%L51472%_ _%hd5136251466%_)
                           (_%L51474%_ _%hd5135951456%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51474%_)
                           (_%__kont7647876479%_ _%L51472%_ _%L51474%_)
                           (_%__kont7648076481%_
                            _%hd5136251466%_
                            _%hd5135951456%_))))))
              (if (gx#stx-pair? _%__stx7647576476%_)
                  (let ((_%e5135751442%_ (gx#syntax-e _%__stx7647576476%_)))
                    (let ((_%tl5135551449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5135751442%_)))
                          (_%hd5135651446%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5135751442%_))))
                      (if (gx#stx-pair? _%tl5135551449%_)
                          (let ((_%e5136051452%_
                                 (gx#syntax-e _%tl5135551449%_)))
                            (let ((_%tl5135851459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5136051452%_)))
                                  (_%hd5135951456%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5136051452%_))))
                              (if (gx#stx-pair? _%tl5135851459%_)
                                  (let ((_%e5136351462%_
                                         (gx#syntax-e _%tl5135851459%_)))
                                    (let ((_%tl5136151469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5136351462%_)))
                                          (_%hd5136251466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5136351462%_))))
                                      (if (gx#stx-null? _%tl5136151469%_)
                                          (_%__match7650276503%_
                                           _%e5135751442%_
                                           _%hd5135651446%_
                                           _%tl5135551449%_
                                           _%e5136051452%_
                                           _%hd5135951456%_
                                           _%tl5135851459%_
                                           _%e5136351462%_
                                           _%hd5136251466%_
                                           _%tl5136151469%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5135151380%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5135151380%_)))))
                          (let () (declare (not safe)) (_%g5135151380%_)))))
                  (let () (declare (not safe)) (_%g5135151380%_))))))))))

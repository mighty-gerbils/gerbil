(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80981_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80982_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80983_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80986_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80987_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80990_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80991_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80992_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80993_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80997_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80998_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80999_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g81000_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g81004_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46415%_)
        (let* ((_%__stx7583775838%_ _%stx46415%_)
               (_%g4642446633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7583775838%_))))
          (let ((_%__kont7584075841%_
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
                (_%__kont7584475845%_
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
                (_%__kont7584875849%_
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
                (_%__kont7585275853%_
                 (lambda (_%L47078%_ _%L47080%_ _%L47081%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47081%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47080%_ '())))
                               (foldr (lambda (_%g4710447107%_ _%g4710547110%_)
                                        (cons _%g4710447107%_ _%g4710547110%_))
                                      '()
                                      _%L47078%_)))))
                (_%__kont7585675857%_
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
                (_%__kont7586075861%_
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
                (_%__kont7586475865%_
                 (lambda (_%L46690%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4670846711%_ _%g4670946714%_)
                                        (cons _%g4670846711%_ _%g4670946714%_))
                                      '()
                                      _%L46690%_))))))
            (let* ((_%__match7617076171%_
                    (lambda (_%e4661346640%_
                             _%hd4661446644%_
                             _%tl4661546647%_
                             _%e4661646650%_
                             _%hd4661746654%_
                             _%tl4661846657%_
                             _%__splice7586675867%_
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
                                        (_%__kont7586475865%_
                                         _%body4662746686%_))))))
                        (_%loop4662246666%_ _%target4661946660%_ '()))))
                   (_%__match7614876149%_
                    (lambda (_%e4659146724%_
                             _%hd4659246728%_
                             _%tl4659346731%_
                             _%e4659446734%_
                             _%hd4659546738%_
                             _%tl4659646741%_
                             _%e4659746744%_
                             _%hd4659846748%_
                             _%tl4659946751%_
                             _%e4660046754%_
                             _%hd4660146758%_
                             _%tl4660246761%_
                             _%__splice7586275863%_
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
                                              (_%L46796%_ _%tl4659946751%_)
                                              (_%L46797%_ _%tl4660246761%_)
                                              (_%L46798%_ _%hd4660146758%_))
                                          (if (gx#identifier? _%L46798%_)
                                              (_%__kont7586075861%_
                                               _%L46794%_
                                               _%L46796%_
                                               _%L46797%_
                                               _%L46798%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_)))))))))
                        (_%loop4660646770%_ _%target4660346764%_ '()))))
                   (_%__match7613476135%_
                    (lambda (_%e4659146724%_
                             _%hd4659246728%_
                             _%tl4659346731%_
                             _%e4659446734%_
                             _%hd4659546738%_
                             _%tl4659646741%_
                             _%e4659746744%_
                             _%hd4659846748%_
                             _%tl4659946751%_)
                      (if (gx#stx-pair? _%hd4659846748%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4659846748%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (if (gx#stx-pair/null? _%tl4659646741%_)
                                  (let ((_%__splice7586275863%_
                                         (gx#syntax-split-splice
                                          _%tl4659646741%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7614876149%_
                                           _%e4659146724%_
                                           _%hd4659246728%_
                                           _%tl4659346731%_
                                           _%e4659446734%_
                                           _%hd4659546738%_
                                           _%tl4659646741%_
                                           _%e4659746744%_
                                           _%hd4659846748%_
                                           _%tl4659946751%_
                                           _%e4660046754%_
                                           _%hd4660146758%_
                                           _%tl4660246761%_
                                           _%__splice7586275863%_
                                           _%target4660346764%_
                                           _%tl4660546767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                   (_%__match7611676117%_
                    (lambda (_%e4655746836%_
                             _%hd4655846840%_
                             _%tl4655946843%_
                             _%e4656046846%_
                             _%hd4656146850%_
                             _%tl4656246853%_
                             _%e4656346856%_
                             _%hd4656446860%_
                             _%tl4656546863%_
                             _%e4656646866%_
                             _%hd4656746870%_
                             _%tl4656846873%_
                             _%e4656946876%_
                             _%hd4657046880%_
                             _%tl4657146883%_
                             _%e4657246886%_
                             _%hd4657346890%_
                             _%tl4657446893%_
                             _%e4657546896%_
                             _%hd4657646900%_
                             _%tl4657746903%_
                             _%__splice7585875859%_
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
                                              (_%__kont7585675857%_
                                               _%L46936%_
                                               _%L46938%_
                                               _%L46939%_
                                               _%L46940%_
                                               _%L46941%_)
                                              (_%__match7613476135%_
                                               _%e4655746836%_
                                               _%hd4655846840%_
                                               _%tl4655946843%_
                                               _%e4656046846%_
                                               _%hd4656146850%_
                                               _%tl4656246853%_
                                               _%e4656346856%_
                                               _%hd4656446860%_
                                               _%tl4656546863%_))))))))
                        (_%loop4658146912%_ _%target4657846906%_ '()))))
                   (_%__match7606076061%_
                    (lambda (_%e4652846998%_
                             _%hd4652947002%_
                             _%tl4653047005%_
                             _%e4653147008%_
                             _%hd4653247012%_
                             _%tl4653347015%_
                             _%e4653447018%_
                             _%hd4653547022%_
                             _%tl4653647025%_
                             _%e4653747028%_
                             _%hd4653847032%_
                             _%tl4653947035%_
                             _%e4654047038%_
                             _%hd4654147042%_
                             _%tl4654247045%_
                             _%__splice7585475855%_
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
                                              (_%__kont7585275853%_
                                               _%L47078%_
                                               _%L47080%_
                                               _%L47081%_)
                                              (_%__match7613476135%_
                                               _%e4652846998%_
                                               _%hd4652947002%_
                                               _%tl4653047005%_
                                               _%e4653147008%_
                                               _%hd4653247012%_
                                               _%tl4653347015%_
                                               _%e4653447018%_
                                               _%hd4653547022%_
                                               _%tl4653647025%_))))))))
                        (_%loop4654647054%_ _%target4654347048%_ '()))))
                   (_%__match7604076041%_
                    (lambda (_%e4652846998%_
                             _%hd4652947002%_
                             _%tl4653047005%_
                             _%e4653147008%_
                             _%hd4653247012%_
                             _%tl4653347015%_
                             _%e4653447018%_
                             _%hd4653547022%_
                             _%tl4653647025%_
                             _%e4653747028%_
                             _%hd4653847032%_
                             _%tl4653947035%_)
                      (if (gx#identifier? _%hd4653847032%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80981_|
                               _%hd4653847032%_)
                              (if (gx#stx-pair? _%tl4653947035%_)
                                  (let ((_%e4654047038%_
                                         (gx#syntax-e _%tl4653947035%_)))
                                    (let ((_%tl4654247045%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4654047038%_)))
                                          (_%hd4654147042%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4654047038%_))))
                                      (if (gx#stx-null? _%tl4654247045%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4653347015%_)
                                              (let ((_%__splice7585475855%_
                                                     (gx#syntax-split-splice
                                                      _%tl4653347015%_
                                                      '0)))
                                                (let ((_%tl4654547051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7585475855%_
                                                          '1)))
                                                      (_%target4654347048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7585475855%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4654547051%_)
                                                      (_%__match7606076061%_
                                                       _%e4652846998%_
                                                       _%hd4652947002%_
                                                       _%tl4653047005%_
                                                       _%e4653147008%_
                                                       _%hd4653247012%_
                                                       _%tl4653347015%_
                                                       _%e4653447018%_
                                                       _%hd4653547022%_
                                                       _%tl4653647025%_
                                                       _%e4653747028%_
                                                       _%hd4653847032%_
                                                       _%tl4653947035%_
                                                       _%e4654047038%_
                                                       _%hd4654147042%_
                                                       _%tl4654247045%_
                                                       _%__splice7585475855%_
                                                       _%target4654347048%_
                                                       _%tl4654547051%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4653547022%_)
                                                          (let ((_%e4660046754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4653547022%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653547022%_)
                                                  (let ((_%e4660046754%_
                                                         (gx#syntax-e
                                                          _%hd4653547022%_)))
                                                    (let ((_%tl4660246761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660046754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660046754%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%tl4654247045%_)
                                              (let ((_%e4657246886%_
                                                     (gx#syntax-e
                                                      _%tl4654247045%_)))
                                                (let ((_%tl4657446893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657246886%_)))
                                                      (_%hd4657346890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657246886%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657446893%_)
                                                      (let ((_%e4657546896%_
                                                             (gx#syntax-e
                                                              _%tl4657446893%_)))
                                                        (let ((_%tl4657746903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657546896%_)))
                      (_%hd4657646900%_
                       (let () (declare (not safe)) (##car _%e4657546896%_))))
                  (if (gx#stx-null? _%tl4657746903%_)
                      (if (gx#stx-pair/null? _%tl4653347015%_)
                          (let ((_%__splice7585875859%_
                                 (gx#syntax-split-splice _%tl4653347015%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7585875859%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7585875859%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7611676117%_
                                   _%e4652846998%_
                                   _%hd4652947002%_
                                   _%tl4653047005%_
                                   _%e4653147008%_
                                   _%hd4653247012%_
                                   _%tl4653347015%_
                                   _%e4653447018%_
                                   _%hd4653547022%_
                                   _%tl4653647025%_
                                   _%e4653747028%_
                                   _%hd4653847032%_
                                   _%tl4653947035%_
                                   _%e4654047038%_
                                   _%hd4654147042%_
                                   _%tl4654247045%_
                                   _%e4657246886%_
                                   _%hd4657346890%_
                                   _%tl4657446893%_
                                   _%e4657546896%_
                                   _%hd4657646900%_
                                   _%tl4657746903%_
                                   _%__splice7585875859%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4653547022%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4653547022%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4653547022%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4653547022%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4653547022%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4653547022%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (if (gx#stx-pair/null? _%tl4653347015%_)
                                  (let ((_%__splice7586275863%_
                                         (gx#syntax-split-splice
                                          _%tl4653347015%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7614876149%_
                                           _%e4652846998%_
                                           _%hd4652947002%_
                                           _%tl4653047005%_
                                           _%e4653147008%_
                                           _%hd4653247012%_
                                           _%tl4653347015%_
                                           _%e4653447018%_
                                           _%hd4653547022%_
                                           _%tl4653647025%_
                                           _%e4660046754%_
                                           _%hd4660146758%_
                                           _%tl4660246761%_
                                           _%__splice7586275863%_
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
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4653547022%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4653347015%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4653347015%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4652846998%_
                                   _%hd4652947002%_
                                   _%tl4653047005%_
                                   _%e4653147008%_
                                   _%hd4653247012%_
                                   _%tl4653347015%_
                                   _%e4653447018%_
                                   _%hd4653547022%_
                                   _%tl4653647025%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
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
                                                  (let ((_%e4660046754%_
                                                         (gx#syntax-e
                                                          _%hd4653547022%_)))
                                                    (let ((_%tl4660246761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660046754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660046754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4653347015%_)
                                                          (let ((_%__splice7586275863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4653347015%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7614876149%_
                           _%e4652846998%_
                           _%hd4652947002%_
                           _%tl4653047005%_
                           _%e4653147008%_
                           _%hd4653247012%_
                           _%tl4653347015%_
                           _%e4653447018%_
                           _%hd4653547022%_
                           _%tl4653647025%_
                           _%e4660046754%_
                           _%hd4660146758%_
                           _%tl4660246761%_
                           _%__splice7586275863%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_)))))))
                                  (if (gx#stx-pair? _%hd4653547022%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4653547022%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4653347015%_)
                                              (let ((_%__splice7586275863%_
                                                     (gx#syntax-split-splice
                                                      _%tl4653347015%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7614876149%_
                                                       _%e4652846998%_
                                                       _%hd4652947002%_
                                                       _%tl4653047005%_
                                                       _%e4653147008%_
                                                       _%hd4653247012%_
                                                       _%tl4653347015%_
                                                       _%e4653447018%_
                                                       _%hd4653547022%_
                                                       _%tl4653647025%_
                                                       _%e4660046754%_
                                                       _%hd4660146758%_
                                                       _%tl4660246761%_
                                                       _%__splice7586275863%_
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
                                  (let ((_%e4660046754%_
                                         (gx#syntax-e _%hd4653547022%_)))
                                    (let ((_%tl4660246761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660046754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660046754%_))))
                                      (if (gx#stx-pair/null? _%tl4653347015%_)
                                          (let ((_%__splice7586275863%_
                                                 (gx#syntax-split-splice
                                                  _%tl4653347015%_
                                                  '0)))
                                            (let ((_%tl4660546767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7586275863%_
                                                      '1)))
                                                  (_%target4660346764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7586275863%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660546767%_)
                                                  (_%__match7614876149%_
                                                   _%e4652846998%_
                                                   _%hd4652947002%_
                                                   _%tl4653047005%_
                                                   _%e4653147008%_
                                                   _%hd4653247012%_
                                                   _%tl4653347015%_
                                                   _%e4653447018%_
                                                   _%hd4653547022%_
                                                   _%tl4653647025%_
                                                   _%e4660046754%_
                                                   _%hd4660146758%_
                                                   _%tl4660246761%_
                                                   _%__splice7586275863%_
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
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4653547022%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (if (gx#stx-pair/null? _%tl4653347015%_)
                                      (let ((_%__splice7586275863%_
                                             (gx#syntax-split-splice
                                              _%tl4653347015%_
                                              '0)))
                                        (let ((_%tl4660546767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7586275863%_
                                                  '1)))
                                              (_%target4660346764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7586275863%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4660546767%_)
                                              (_%__match7614876149%_
                                               _%e4652846998%_
                                               _%hd4652947002%_
                                               _%tl4653047005%_
                                               _%e4653147008%_
                                               _%hd4653247012%_
                                               _%tl4653347015%_
                                               _%e4653447018%_
                                               _%hd4653547022%_
                                               _%tl4653647025%_
                                               _%e4660046754%_
                                               _%hd4660146758%_
                                               _%tl4660246761%_
                                               _%__splice7586275863%_
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
                   (_%__match7601676017%_
                    (lambda (_%e4650147120%_
                             _%hd4650247124%_
                             _%tl4650347127%_
                             _%e4650447130%_
                             _%hd4650547134%_
                             _%tl4650647137%_
                             _%e4650747140%_
                             _%hd4650847144%_
                             _%tl4650947147%_
                             _%e4651047150%_
                             _%hd4651147154%_
                             _%tl4651247157%_
                             _%e4651347160%_
                             _%hd4651447164%_
                             _%tl4651547167%_
                             _%__splice7585075851%_
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
                                              (_%__kont7584875849%_
                                               _%L47200%_
                                               _%L47202%_
                                               _%L47203%_
                                               _%L47204%_)
                                              (_%__match7604076041%_
                                               _%e4650147120%_
                                               _%hd4650247124%_
                                               _%tl4650347127%_
                                               _%e4650447130%_
                                               _%hd4650547134%_
                                               _%tl4650647137%_
                                               _%e4650747140%_
                                               _%hd4650847144%_
                                               _%tl4650947147%_
                                               _%e4651047150%_
                                               _%hd4651147154%_
                                               _%tl4651247157%_))))))))
                        (_%loop4651947176%_ _%target4651647170%_ '()))))
                   (_%__match7597675977%_
                    (lambda (_%e4646447273%_
                             _%hd4646547277%_
                             _%tl4646647280%_
                             _%e4646747283%_
                             _%hd4646847287%_
                             _%tl4646947290%_
                             _%e4647047293%_
                             _%hd4647147297%_
                             _%tl4647247300%_
                             _%e4647347303%_
                             _%hd4647447307%_
                             _%tl4647547310%_
                             _%e4647647313%_
                             _%hd4647747317%_
                             _%tl4647847320%_
                             _%e4647947323%_
                             _%hd4648047327%_
                             _%tl4648147330%_
                             _%e4648247333%_
                             _%hd4648347337%_
                             _%tl4648447340%_
                             _%e4648547343%_
                             _%hd4648647347%_
                             _%tl4648747350%_
                             _%__splice7584675847%_
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
                                              (_%__kont7584475845%_
                                               _%L47383%_
                                               _%L47385%_
                                               _%L47386%_
                                               _%L47387%_
                                               _%L47388%_
                                               _%L47389%_)
                                              (_%__match7604076041%_
                                               _%e4646447273%_
                                               _%hd4646547277%_
                                               _%tl4646647280%_
                                               _%e4646747283%_
                                               _%hd4646847287%_
                                               _%tl4646947290%_
                                               _%e4647047293%_
                                               _%hd4647147297%_
                                               _%tl4647247300%_
                                               _%e4647347303%_
                                               _%hd4647447307%_
                                               _%tl4647547310%_))))))))
                        (_%loop4649147359%_ _%target4648847353%_ '()))))
                   (_%__match7594475945%_
                    (lambda (_%e4646447273%_
                             _%hd4646547277%_
                             _%tl4646647280%_
                             _%e4646747283%_
                             _%hd4646847287%_
                             _%tl4646947290%_
                             _%e4647047293%_
                             _%hd4647147297%_
                             _%tl4647247300%_
                             _%e4647347303%_
                             _%hd4647447307%_
                             _%tl4647547310%_
                             _%e4647647313%_
                             _%hd4647747317%_
                             _%tl4647847320%_)
                      (if (gx#identifier? _%hd4647747317%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80982_|
                               _%hd4647747317%_)
                              (if (gx#stx-pair? _%tl4647847320%_)
                                  (let ((_%e4647947323%_
                                         (gx#syntax-e _%tl4647847320%_)))
                                    (let ((_%tl4648147330%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4647947323%_)))
                                          (_%hd4648047327%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4647947323%_))))
                                      (if (gx#stx-pair? _%tl4648147330%_)
                                          (let ((_%e4648247333%_
                                                 (gx#syntax-e
                                                  _%tl4648147330%_)))
                                            (let ((_%tl4648447340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4648247333%_)))
                                                  (_%hd4648347337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4648247333%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4648447340%_)
                                                  (let ((_%e4648547343%_
                                                         (gx#syntax-e
                                                          _%tl4648447340%_)))
                                                    (let ((_%tl4648747350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4648547343%_)))
                                                          (_%hd4648647347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4648547343%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4648747350%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646947290%_)
                                                              (let ((_%__splice7584675847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646947290%_ '0)))
                        (let ((_%tl4649047356%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7584675847%_ '1)))
                              (_%target4648847353%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7584675847%_ '0))))
                          (if (gx#stx-null? _%tl4649047356%_)
                              (_%__match7597675977%_
                               _%e4646447273%_
                               _%hd4646547277%_
                               _%tl4646647280%_
                               _%e4646747283%_
                               _%hd4646847287%_
                               _%tl4646947290%_
                               _%e4647047293%_
                               _%hd4647147297%_
                               _%tl4647247300%_
                               _%e4647347303%_
                               _%hd4647447307%_
                               _%tl4647547310%_
                               _%e4647647313%_
                               _%hd4647747317%_
                               _%tl4647847320%_
                               _%e4647947323%_
                               _%hd4648047327%_
                               _%tl4648147330%_
                               _%e4648247333%_
                               _%hd4648347337%_
                               _%tl4648447340%_
                               _%e4648547343%_
                               _%hd4648647347%_
                               _%tl4648747350%_
                               _%__splice7584675847%_
                               _%target4648847353%_
                               _%tl4649047356%_)
                              (if (gx#stx-pair? _%hd4647147297%_)
                                  (let ((_%e4660046754%_
                                         (gx#syntax-e _%hd4647147297%_)))
                                    (let ((_%tl4660246761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660046754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660046754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4647147297%_)
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (if (gx#stx-pair/null? _%tl4646947290%_)
                              (let ((_%__splice7586275863%_
                                     (gx#syntax-split-splice
                                      _%tl4646947290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7614876149%_
                                       _%e4646447273%_
                                       _%hd4646547277%_
                                       _%tl4646647280%_
                                       _%e4646747283%_
                                       _%hd4646847287%_
                                       _%tl4646947290%_
                                       _%e4647047293%_
                                       _%hd4647147297%_
                                       _%tl4647247300%_
                                       _%e4660046754%_
                                       _%hd4660146758%_
                                       _%tl4660246761%_
                                       _%__splice7586275863%_
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
                                                           |gerbil/core/contract~Using[1]#_g80981_|
                                                           _%hd4647447307%_)
                                                          (if (gx#stx-null?
                                                               _%tl4648447340%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4646947290%_)
                          (let ((_%__splice7585875859%_
                                 (gx#syntax-split-splice _%tl4646947290%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7585875859%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7585875859%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7611676117%_
                                   _%e4646447273%_
                                   _%hd4646547277%_
                                   _%tl4646647280%_
                                   _%e4646747283%_
                                   _%hd4646847287%_
                                   _%tl4646947290%_
                                   _%e4647047293%_
                                   _%hd4647147297%_
                                   _%tl4647247300%_
                                   _%e4647347303%_
                                   _%hd4647447307%_
                                   _%tl4647547310%_
                                   _%e4647647313%_
                                   _%hd4647747317%_
                                   _%tl4647847320%_
                                   _%e4647947323%_
                                   _%hd4648047327%_
                                   _%tl4648147330%_
                                   _%e4648247333%_
                                   _%hd4648347337%_
                                   _%tl4648447340%_
                                   _%__splice7585875859%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4647147297%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4647147297%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (if (gx#stx-pair/null? _%tl4646947290%_)
                                  (let ((_%__splice7586275863%_
                                         (gx#syntax-split-splice
                                          _%tl4646947290%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7614876149%_
                                           _%e4646447273%_
                                           _%hd4646547277%_
                                           _%tl4646647280%_
                                           _%e4646747283%_
                                           _%hd4646847287%_
                                           _%tl4646947290%_
                                           _%e4647047293%_
                                           _%hd4647147297%_
                                           _%tl4647247300%_
                                           _%e4660046754%_
                                           _%hd4660146758%_
                                           _%tl4660246761%_
                                           _%__splice7586275863%_
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
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (if (gx#stx-pair/null? _%tl4646947290%_)
                              (let ((_%__splice7586275863%_
                                     (gx#syntax-split-splice
                                      _%tl4646947290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7614876149%_
                                       _%e4646447273%_
                                       _%hd4646547277%_
                                       _%tl4646647280%_
                                       _%e4646747283%_
                                       _%hd4646847287%_
                                       _%tl4646947290%_
                                       _%e4647047293%_
                                       _%hd4647147297%_
                                       _%tl4647247300%_
                                       _%e4660046754%_
                                       _%hd4660146758%_
                                       _%tl4660246761%_
                                       _%__splice7586275863%_
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
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4647147297%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4646947290%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4646947290%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4646447273%_
                                   _%hd4646547277%_
                                   _%tl4646647280%_
                                   _%e4646747283%_
                                   _%hd4646847287%_
                                   _%tl4646947290%_
                                   _%e4647047293%_
                                   _%hd4647147297%_
                                   _%tl4647247300%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
                                   _%target4660346764%_
                                   _%tl4660546767%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_)))))
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646947290%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646947290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4646447273%_
                       _%hd4646547277%_
                       _%tl4646647280%_
                       _%e4646747283%_
                       _%hd4646847287%_
                       _%tl4646947290%_
                       _%e4647047293%_
                       _%hd4647147297%_
                       _%tl4647247300%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-null? _%tl4647847320%_)
                                      (if (gx#stx-pair/null? _%tl4646947290%_)
                                          (let ((_%__splice7585075851%_
                                                 (gx#syntax-split-splice
                                                  _%tl4646947290%_
                                                  '0)))
                                            (let ((_%tl4651847173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7585075851%_
                                                      '1)))
                                                  (_%target4651647170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7585075851%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4651847173%_)
                                                  (_%__match7601676017%_
                                                   _%e4646447273%_
                                                   _%hd4646547277%_
                                                   _%tl4646647280%_
                                                   _%e4646747283%_
                                                   _%hd4646847287%_
                                                   _%tl4646947290%_
                                                   _%e4647047293%_
                                                   _%hd4647147297%_
                                                   _%tl4647247300%_
                                                   _%e4647347303%_
                                                   _%hd4647447307%_
                                                   _%tl4647547310%_
                                                   _%e4647647313%_
                                                   _%hd4647747317%_
                                                   _%tl4647847320%_
                                                   _%__splice7585075851%_
                                                   _%target4651647170%_
                                                   _%tl4651847173%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4647147297%_)
                                                      (let ((_%e4660046754%_
                                                             (gx#syntax-e
                                                              _%hd4647147297%_)))
                                                        (let ((_%tl4660246761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660046754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660046754%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646947290%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646947290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4646447273%_
                                                           _%hd4646547277%_
                                                           _%tl4646647280%_
                                                           _%e4646747283%_
                                                           _%hd4646847287%_
                                                           _%tl4646947290%_
                                                           _%e4647047293%_
                                                           _%hd4647147297%_
                                                           _%tl4647247300%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                              (if (gx#stx-null? _%tl4647847320%_)
                                  (if (gx#stx-pair/null? _%tl4646947290%_)
                                      (let ((_%__splice7585075851%_
                                             (gx#syntax-split-splice
                                              _%tl4646947290%_
                                              '0)))
                                        (let ((_%tl4651847173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7585075851%_
                                                  '1)))
                                              (_%target4651647170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7585075851%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4651847173%_)
                                              (_%__match7601676017%_
                                               _%e4646447273%_
                                               _%hd4646547277%_
                                               _%tl4646647280%_
                                               _%e4646747283%_
                                               _%hd4646847287%_
                                               _%tl4646947290%_
                                               _%e4647047293%_
                                               _%hd4647147297%_
                                               _%tl4647247300%_
                                               _%e4647347303%_
                                               _%hd4647447307%_
                                               _%tl4647547310%_
                                               _%e4647647313%_
                                               _%hd4647747317%_
                                               _%tl4647847320%_
                                               _%__splice7585075851%_
                                               _%target4651647170%_
                                               _%tl4651847173%_)
                                              (if (gx#stx-pair?
                                                   _%hd4647147297%_)
                                                  (let ((_%e4660046754%_
                                                         (gx#syntax-e
                                                          _%hd4647147297%_)))
                                                    (let ((_%tl4660246761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660046754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660046754%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642446633%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                  (if (gx#identifier? _%hd4647447307%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80981_|
                                           _%hd4647447307%_)
                                          (if (gx#stx-pair? _%tl4647847320%_)
                                              (let ((_%e4657246886%_
                                                     (gx#syntax-e
                                                      _%tl4647847320%_)))
                                                (let ((_%tl4657446893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657246886%_)))
                                                      (_%hd4657346890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657246886%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657446893%_)
                                                      (let ((_%e4657546896%_
                                                             (gx#syntax-e
                                                              _%tl4657446893%_)))
                                                        (let ((_%tl4657746903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657546896%_)))
                      (_%hd4657646900%_
                       (let () (declare (not safe)) (##car _%e4657546896%_))))
                  (if (gx#stx-null? _%tl4657746903%_)
                      (if (gx#stx-pair/null? _%tl4646947290%_)
                          (let ((_%__splice7585875859%_
                                 (gx#syntax-split-splice _%tl4646947290%_ '0)))
                            (let ((_%tl4658046909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7585875859%_ '1)))
                                  (_%target4657846906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7585875859%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658046909%_)
                                  (_%__match7611676117%_
                                   _%e4646447273%_
                                   _%hd4646547277%_
                                   _%tl4646647280%_
                                   _%e4646747283%_
                                   _%hd4646847287%_
                                   _%tl4646947290%_
                                   _%e4647047293%_
                                   _%hd4647147297%_
                                   _%tl4647247300%_
                                   _%e4647347303%_
                                   _%hd4647447307%_
                                   _%tl4647547310%_
                                   _%e4647647313%_
                                   _%hd4647747317%_
                                   _%tl4647847320%_
                                   _%e4657246886%_
                                   _%hd4657346890%_
                                   _%tl4657446893%_
                                   _%e4657546896%_
                                   _%hd4657646900%_
                                   _%tl4657746903%_
                                   _%__splice7585875859%_
                                   _%target4657846906%_
                                   _%tl4658046909%_)
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4647147297%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4647147297%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (if (gx#stx-pair/null? _%tl4646947290%_)
                                  (let ((_%__splice7586275863%_
                                         (gx#syntax-split-splice
                                          _%tl4646947290%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7614876149%_
                                           _%e4646447273%_
                                           _%hd4646547277%_
                                           _%tl4646647280%_
                                           _%e4646747283%_
                                           _%hd4646847287%_
                                           _%tl4646947290%_
                                           _%e4647047293%_
                                           _%hd4647147297%_
                                           _%tl4647247300%_
                                           _%e4660046754%_
                                           _%hd4660146758%_
                                           _%tl4660246761%_
                                           _%__splice7586275863%_
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
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4647147297%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4646947290%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4646947290%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4646447273%_
                                   _%hd4646547277%_
                                   _%tl4646647280%_
                                   _%e4646747283%_
                                   _%hd4646847287%_
                                   _%tl4646947290%_
                                   _%e4647047293%_
                                   _%hd4647147297%_
                                   _%tl4647247300%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
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
                                                  (let ((_%e4660046754%_
                                                         (gx#syntax-e
                                                          _%hd4647147297%_)))
                                                    (let ((_%tl4660246761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660046754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660046754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4646947290%_)
                                                          (let ((_%__splice7586275863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4646947290%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7614876149%_
                           _%e4646447273%_
                           _%hd4646547277%_
                           _%tl4646647280%_
                           _%e4646747283%_
                           _%hd4646847287%_
                           _%tl4646947290%_
                           _%e4647047293%_
                           _%hd4647147297%_
                           _%tl4647247300%_
                           _%e4660046754%_
                           _%hd4660146758%_
                           _%tl4660246761%_
                           _%__splice7586275863%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646947290%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646947290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4646447273%_
                       _%hd4646547277%_
                       _%tl4646647280%_
                       _%e4646747283%_
                       _%hd4646847287%_
                       _%tl4646947290%_
                       _%e4647047293%_
                       _%hd4647147297%_
                       _%tl4647247300%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646947290%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646947290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4646447273%_
                                                           _%hd4646547277%_
                                                           _%tl4646647280%_
                                                           _%e4646747283%_
                                                           _%hd4646847287%_
                                                           _%tl4646947290%_
                                                           _%e4647047293%_
                                                           _%hd4647147297%_
                                                           _%tl4647247300%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                          (if (gx#stx-null? _%tl4647847320%_)
                              (if (gx#stx-pair/null? _%tl4646947290%_)
                                  (let ((_%__splice7585075851%_
                                         (gx#syntax-split-splice
                                          _%tl4646947290%_
                                          '0)))
                                    (let ((_%tl4651847173%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7585075851%_
                                              '1)))
                                          (_%target4651647170%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7585075851%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651847173%_)
                                          (_%__match7601676017%_
                                           _%e4646447273%_
                                           _%hd4646547277%_
                                           _%tl4646647280%_
                                           _%e4646747283%_
                                           _%hd4646847287%_
                                           _%tl4646947290%_
                                           _%e4647047293%_
                                           _%hd4647147297%_
                                           _%tl4647247300%_
                                           _%e4647347303%_
                                           _%hd4647447307%_
                                           _%tl4647547310%_
                                           _%e4647647313%_
                                           _%hd4647747317%_
                                           _%tl4647847320%_
                                           _%__splice7585075851%_
                                           _%target4651647170%_
                                           _%tl4651847173%_)
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-pair? _%hd4647147297%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                              (if (gx#identifier? _%hd4647447307%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80981_|
                                       _%hd4647447307%_)
                                      (if (gx#stx-pair? _%tl4647847320%_)
                                          (let ((_%e4657246886%_
                                                 (gx#syntax-e
                                                  _%tl4647847320%_)))
                                            (let ((_%tl4657446893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657246886%_)))
                                                  (_%hd4657346890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657246886%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4657446893%_)
                                                  (let ((_%e4657546896%_
                                                         (gx#syntax-e
                                                          _%tl4657446893%_)))
                                                    (let ((_%tl4657746903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657546896%_)))
                                                          (_%hd4657646900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657546896%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4657746903%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646947290%_)
                                                              (let ((_%__splice7585875859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646947290%_ '0)))
                        (let ((_%tl4658046909%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7585875859%_ '1)))
                              (_%target4657846906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7585875859%_ '0))))
                          (if (gx#stx-null? _%tl4658046909%_)
                              (_%__match7611676117%_
                               _%e4646447273%_
                               _%hd4646547277%_
                               _%tl4646647280%_
                               _%e4646747283%_
                               _%hd4646847287%_
                               _%tl4646947290%_
                               _%e4647047293%_
                               _%hd4647147297%_
                               _%tl4647247300%_
                               _%e4647347303%_
                               _%hd4647447307%_
                               _%tl4647547310%_
                               _%e4647647313%_
                               _%hd4647747317%_
                               _%tl4647847320%_
                               _%e4657246886%_
                               _%hd4657346890%_
                               _%tl4657446893%_
                               _%e4657546896%_
                               _%hd4657646900%_
                               _%tl4657746903%_
                               _%__splice7585875859%_
                               _%target4657846906%_
                               _%tl4658046909%_)
                              (if (gx#stx-pair? _%hd4647147297%_)
                                  (let ((_%e4660046754%_
                                         (gx#syntax-e _%hd4647147297%_)))
                                    (let ((_%tl4660246761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660046754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660046754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4647147297%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4647147297%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4647147297%_)
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4647147297%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (if (gx#stx-pair/null? _%tl4646947290%_)
                              (let ((_%__splice7586275863%_
                                     (gx#syntax-split-splice
                                      _%tl4646947290%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7614876149%_
                                       _%e4646447273%_
                                       _%hd4646547277%_
                                       _%tl4646647280%_
                                       _%e4646747283%_
                                       _%hd4646847287%_
                                       _%tl4646947290%_
                                       _%e4647047293%_
                                       _%hd4647147297%_
                                       _%tl4647247300%_
                                       _%e4660046754%_
                                       _%hd4660146758%_
                                       _%tl4660246761%_
                                       _%__splice7586275863%_
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
                                                      (let ((_%e4660046754%_
                                                             (gx#syntax-e
                                                              _%hd4647147297%_)))
                                                        (let ((_%tl4660246761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660046754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660046754%_))))
                  (if (gx#stx-pair/null? _%tl4646947290%_)
                      (let ((_%__splice7586275863%_
                             (gx#syntax-split-splice _%tl4646947290%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7614876149%_
                               _%e4646447273%_
                               _%hd4646547277%_
                               _%tl4646647280%_
                               _%e4646747283%_
                               _%hd4646847287%_
                               _%tl4646947290%_
                               _%e4647047293%_
                               _%hd4647147297%_
                               _%tl4647247300%_
                               _%e4660046754%_
                               _%hd4660146758%_
                               _%tl4660246761%_
                               _%__splice7586275863%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4647147297%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4647147297%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646947290%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646947290%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4646447273%_
                       _%hd4646547277%_
                       _%tl4646647280%_
                       _%e4646747283%_
                       _%hd4646847287%_
                       _%tl4646947290%_
                       _%e4647047293%_
                       _%hd4647147297%_
                       _%tl4647247300%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4647147297%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4647147297%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646947290%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646947290%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4646447273%_
                                                           _%hd4646547277%_
                                                           _%tl4646647280%_
                                                           _%e4646747283%_
                                                           _%hd4646847287%_
                                                           _%tl4646947290%_
                                                           _%e4647047293%_
                                                           _%hd4647147297%_
                                                           _%tl4647247300%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4647147297%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4646947290%_)
                                              (let ((_%__splice7586275863%_
                                                     (gx#syntax-split-splice
                                                      _%tl4646947290%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7614876149%_
                                                       _%e4646447273%_
                                                       _%hd4646547277%_
                                                       _%tl4646647280%_
                                                       _%e4646747283%_
                                                       _%hd4646847287%_
                                                       _%tl4646947290%_
                                                       _%e4647047293%_
                                                       _%hd4647147297%_
                                                       _%tl4647247300%_
                                                       _%e4660046754%_
                                                       _%hd4660146758%_
                                                       _%tl4660246761%_
                                                       _%__splice7586275863%_
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
                   (_%__match7591475915%_
                    (lambda (_%e4643147449%_
                             _%hd4643247453%_
                             _%tl4643347456%_
                             _%e4643447459%_
                             _%hd4643547463%_
                             _%tl4643647466%_
                             _%e4643747469%_
                             _%hd4643847473%_
                             _%tl4643947476%_
                             _%e4644047479%_
                             _%hd4644147483%_
                             _%tl4644247486%_
                             _%e4644347489%_
                             _%hd4644447493%_
                             _%tl4644547496%_
                             _%e4644647499%_
                             _%hd4644747503%_
                             _%tl4644847506%_
                             _%__splice7584275843%_
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
                                              (_%__kont7584075841%_
                                               _%L47539%_
                                               _%L47541%_
                                               _%L47542%_
                                               _%L47543%_
                                               _%L47544%_)
                                              (_%__match7594475945%_
                                               _%e4643147449%_
                                               _%hd4643247453%_
                                               _%tl4643347456%_
                                               _%e4643447459%_
                                               _%hd4643547463%_
                                               _%tl4643647466%_
                                               _%e4643747469%_
                                               _%hd4643847473%_
                                               _%tl4643947476%_
                                               _%e4644047479%_
                                               _%hd4644147483%_
                                               _%tl4644247486%_
                                               _%e4644347489%_
                                               _%hd4644447493%_
                                               _%tl4644547496%_))))))))
                        (_%loop4645247515%_ _%target4644947509%_ '())))))
              (if (gx#stx-pair? _%__stx7583775838%_)
                  (let ((_%e4643147449%_ (gx#syntax-e _%__stx7583775838%_)))
                    (let ((_%tl4643347456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4643147449%_)))
                          (_%hd4643247453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4643147449%_))))
                      (if (gx#stx-pair? _%tl4643347456%_)
                          (let ((_%e4643447459%_
                                 (gx#syntax-e _%tl4643347456%_)))
                            (let ((_%tl4643647466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4643447459%_)))
                                  (_%hd4643547463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4643447459%_))))
                              (if (gx#stx-pair? _%hd4643547463%_)
                                  (let ((_%e4643747469%_
                                         (gx#syntax-e _%hd4643547463%_)))
                                    (let ((_%tl4643947476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4643747469%_)))
                                          (_%hd4643847473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4643747469%_))))
                                      (if (gx#stx-pair? _%tl4643947476%_)
                                          (let ((_%e4644047479%_
                                                 (gx#syntax-e
                                                  _%tl4643947476%_)))
                                            (let ((_%tl4644247486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4644047479%_)))
                                                  (_%hd4644147483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4644047479%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4644247486%_)
                                                  (let ((_%e4644347489%_
                                                         (gx#syntax-e
                                                          _%tl4644247486%_)))
                                                    (let ((_%tl4644547496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4644347489%_)))
                                                          (_%hd4644447493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4644347489%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4644547496%_)
                                                          (let ((_%e4644647499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4644547496%_)))
                    (let ((_%tl4644847506%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4644647499%_)))
                          (_%hd4644747503%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4644647499%_))))
                      (if (gx#stx-null? _%tl4644847506%_)
                          (if (gx#stx-pair/null? _%tl4643647466%_)
                              (let ((_%__splice7584275843%_
                                     (gx#syntax-split-splice
                                      _%tl4643647466%_
                                      '0)))
                                (let ((_%tl4645147512%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7584275843%_
                                          '1)))
                                      (_%target4644947509%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7584275843%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4645147512%_)
                                      (_%__match7591475915%_
                                       _%e4643147449%_
                                       _%hd4643247453%_
                                       _%tl4643347456%_
                                       _%e4643447459%_
                                       _%hd4643547463%_
                                       _%tl4643647466%_
                                       _%e4643747469%_
                                       _%hd4643847473%_
                                       _%tl4643947476%_
                                       _%e4644047479%_
                                       _%hd4644147483%_
                                       _%tl4644247486%_
                                       _%e4644347489%_
                                       _%hd4644447493%_
                                       _%tl4644547496%_
                                       _%e4644647499%_
                                       _%hd4644747503%_
                                       _%tl4644847506%_
                                       _%__splice7584275843%_
                                       _%target4644947509%_
                                       _%tl4645147512%_)
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))))
                              (if (gx#stx-pair? _%hd4643847473%_)
                                  (let ((_%e4660046754%_
                                         (gx#syntax-e _%hd4643847473%_)))
                                    (let ((_%tl4660246761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660046754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660046754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                          (if (gx#identifier? _%hd4644447493%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80982_|
                                   _%hd4644447493%_)
                                  (if (gx#stx-pair? _%tl4644847506%_)
                                      (let ((_%e4648247333%_
                                             (gx#syntax-e _%tl4644847506%_)))
                                        (let ((_%tl4648447340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4648247333%_)))
                                              (_%hd4648347337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4648247333%_))))
                                          (if (gx#stx-pair? _%tl4648447340%_)
                                              (let ((_%e4648547343%_
                                                     (gx#syntax-e
                                                      _%tl4648447340%_)))
                                                (let ((_%tl4648747350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648547343%_)))
                                                      (_%hd4648647347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648547343%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4648747350%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643647466%_)
                                                          (let ((_%__splice7584675847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643647466%_ '0)))
                    (let ((_%tl4649047356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7584675847%_ '1)))
                          (_%target4648847353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7584675847%_ '0))))
                      (if (gx#stx-null? _%tl4649047356%_)
                          (_%__match7597675977%_
                           _%e4643147449%_
                           _%hd4643247453%_
                           _%tl4643347456%_
                           _%e4643447459%_
                           _%hd4643547463%_
                           _%tl4643647466%_
                           _%e4643747469%_
                           _%hd4643847473%_
                           _%tl4643947476%_
                           _%e4644047479%_
                           _%hd4644147483%_
                           _%tl4644247486%_
                           _%e4644347489%_
                           _%hd4644447493%_
                           _%tl4644547496%_
                           _%e4644647499%_
                           _%hd4644747503%_
                           _%tl4644847506%_
                           _%e4648247333%_
                           _%hd4648347337%_
                           _%tl4648447340%_
                           _%e4648547343%_
                           _%hd4648647347%_
                           _%tl4648747350%_
                           _%__splice7584675847%_
                           _%target4648847353%_
                           _%tl4649047356%_)
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_))))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4643647466%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4643647466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4643147449%_
                                   _%hd4643247453%_
                                   _%tl4643347456%_
                                   _%e4643447459%_
                                   _%hd4643547463%_
                                   _%tl4643647466%_
                                   _%e4643747469%_
                                   _%hd4643847473%_
                                   _%tl4643947476%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
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
                                                       |gerbil/core/contract~Using[1]#_g80981_|
                                                       _%hd4644147483%_)
                                                      (if (gx#stx-null?
                                                           _%tl4648447340%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4643647466%_)
                                                              (let ((_%__splice7585875859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4643647466%_ '0)))
                        (let ((_%tl4658046909%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7585875859%_ '1)))
                              (_%target4657846906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7585875859%_ '0))))
                          (if (gx#stx-null? _%tl4658046909%_)
                              (_%__match7611676117%_
                               _%e4643147449%_
                               _%hd4643247453%_
                               _%tl4643347456%_
                               _%e4643447459%_
                               _%hd4643547463%_
                               _%tl4643647466%_
                               _%e4643747469%_
                               _%hd4643847473%_
                               _%tl4643947476%_
                               _%e4644047479%_
                               _%hd4644147483%_
                               _%tl4644247486%_
                               _%e4644347489%_
                               _%hd4644447493%_
                               _%tl4644547496%_
                               _%e4644647499%_
                               _%hd4644747503%_
                               _%tl4644847506%_
                               _%e4648247333%_
                               _%hd4648347337%_
                               _%tl4648447340%_
                               _%__splice7585875859%_
                               _%target4657846906%_
                               _%tl4658046909%_)
                              (if (gx#stx-pair? _%hd4643847473%_)
                                  (let ((_%e4660046754%_
                                         (gx#syntax-e _%hd4643847473%_)))
                                    (let ((_%tl4660246761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4660046754%_)))
                                          (_%hd4660146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4660046754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))))
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (if (gx#stx-pair/null? _%tl4643647466%_)
                              (let ((_%__splice7586275863%_
                                     (gx#syntax-split-splice
                                      _%tl4643647466%_
                                      '0)))
                                (let ((_%tl4660546767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '1)))
                                      (_%target4660346764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7586275863%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660546767%_)
                                      (_%__match7614876149%_
                                       _%e4643147449%_
                                       _%hd4643247453%_
                                       _%tl4643347456%_
                                       _%e4643447459%_
                                       _%hd4643547463%_
                                       _%tl4643647466%_
                                       _%e4643747469%_
                                       _%hd4643847473%_
                                       _%tl4643947476%_
                                       _%e4660046754%_
                                       _%hd4660146758%_
                                       _%tl4660246761%_
                                       _%__splice7586275863%_
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
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4643647466%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4643647466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4643147449%_
                                   _%hd4643247453%_
                                   _%tl4643347456%_
                                   _%e4643447459%_
                                   _%hd4643547463%_
                                   _%tl4643647466%_
                                   _%e4643747469%_
                                   _%hd4643847473%_
                                   _%tl4643947476%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
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
                                                      (let ((_%e4660046754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660246761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660046754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660046754%_))))
                  (if (gx#stx-pair/null? _%tl4643647466%_)
                      (let ((_%__splice7586275863%_
                             (gx#syntax-split-splice _%tl4643647466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7614876149%_
                               _%e4643147449%_
                               _%hd4643247453%_
                               _%tl4643347456%_
                               _%e4643447459%_
                               _%hd4643547463%_
                               _%tl4643647466%_
                               _%e4643747469%_
                               _%hd4643847473%_
                               _%tl4643947476%_
                               _%e4660046754%_
                               _%hd4660146758%_
                               _%tl4660246761%_
                               _%__splice7586275863%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643647466%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643647466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4643147449%_
                                                           _%hd4643247453%_
                                                           _%tl4643347456%_
                                                           _%e4643447459%_
                                                           _%hd4643547463%_
                                                           _%tl4643647466%_
                                                           _%e4643747469%_
                                                           _%hd4643847473%_
                                                           _%tl4643947476%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                                           |gerbil/core/contract~Using[1]#_g80981_|
                                           _%hd4644147483%_)
                                          (if (gx#stx-pair? _%tl4644847506%_)
                                              (let ((_%e4657546896%_
                                                     (gx#syntax-e
                                                      _%tl4644847506%_)))
                                                (let ((_%tl4657746903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657546896%_)))
                                                      (_%hd4657646900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657546896%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4657746903%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643647466%_)
                                                          (let ((_%__splice7585875859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643647466%_ '0)))
                    (let ((_%tl4658046909%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7585875859%_ '1)))
                          (_%target4657846906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7585875859%_ '0))))
                      (if (gx#stx-null? _%tl4658046909%_)
                          (_%__match7611676117%_
                           _%e4643147449%_
                           _%hd4643247453%_
                           _%tl4643347456%_
                           _%e4643447459%_
                           _%hd4643547463%_
                           _%tl4643647466%_
                           _%e4643747469%_
                           _%hd4643847473%_
                           _%tl4643947476%_
                           _%e4644047479%_
                           _%hd4644147483%_
                           _%tl4644247486%_
                           _%e4644347489%_
                           _%hd4644447493%_
                           _%tl4644547496%_
                           _%e4644647499%_
                           _%hd4644747503%_
                           _%tl4644847506%_
                           _%e4657546896%_
                           _%hd4657646900%_
                           _%tl4657746903%_
                           _%__splice7585875859%_
                           _%target4657846906%_
                           _%tl4658046909%_)
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_))))))
                  (if (gx#stx-pair? _%hd4643847473%_)
                      (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                        (let ((_%tl4660246761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4660046754%_)))
                              (_%hd4660146758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4660046754%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (if (gx#stx-pair/null? _%tl4643647466%_)
                          (let ((_%__splice7586275863%_
                                 (gx#syntax-split-splice _%tl4643647466%_ '0)))
                            (let ((_%tl4660546767%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7586275863%_ '1)))
                                  (_%target4660346764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7586275863%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660546767%_)
                                  (_%__match7614876149%_
                                   _%e4643147449%_
                                   _%hd4643247453%_
                                   _%tl4643347456%_
                                   _%e4643447459%_
                                   _%hd4643547463%_
                                   _%tl4643647466%_
                                   _%e4643747469%_
                                   _%hd4643847473%_
                                   _%tl4643947476%_
                                   _%e4660046754%_
                                   _%hd4660146758%_
                                   _%tl4660246761%_
                                   _%__splice7586275863%_
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
                                                  (let ((_%e4660046754%_
                                                         (gx#syntax-e
                                                          _%hd4643847473%_)))
                                                    (let ((_%tl4660246761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4660046754%_)))
                                                          (_%hd4660146758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4660046754%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643647466%_)
                                                          (let ((_%__splice7586275863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643647466%_ '0)))
                    (let ((_%tl4660546767%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '1)))
                          (_%target4660346764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7586275863%_ '0))))
                      (if (gx#stx-null? _%tl4660546767%_)
                          (_%__match7614876149%_
                           _%e4643147449%_
                           _%hd4643247453%_
                           _%tl4643347456%_
                           _%e4643447459%_
                           _%hd4643547463%_
                           _%tl4643647466%_
                           _%e4643747469%_
                           _%hd4643847473%_
                           _%tl4643947476%_
                           _%e4660046754%_
                           _%hd4660146758%_
                           _%tl4660246761%_
                           _%__splice7586275863%_
                           _%target4660346764%_
                           _%tl4660546767%_)
                          (let () (declare (not safe)) (_%g4642446633%_)))))
                  (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642446633%_))))
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643647466%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643647466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4643147449%_
                       _%hd4643247453%_
                       _%tl4643347456%_
                       _%e4643447459%_
                       _%hd4643547463%_
                       _%tl4643647466%_
                       _%e4643747469%_
                       _%hd4643847473%_
                       _%tl4643947476%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643647466%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643647466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4643147449%_
                                                           _%hd4643247453%_
                                                           _%tl4643347456%_
                                                           _%e4643447459%_
                                                           _%hd4643547463%_
                                                           _%tl4643647466%_
                                                           _%e4643747469%_
                                                           _%hd4643847473%_
                                                           _%tl4643947476%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                                       |gerbil/core/contract~Using[1]#_g80981_|
                                       _%hd4644147483%_)
                                      (if (gx#stx-pair? _%tl4644847506%_)
                                          (let ((_%e4657546896%_
                                                 (gx#syntax-e
                                                  _%tl4644847506%_)))
                                            (let ((_%tl4657746903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657546896%_)))
                                                  (_%hd4657646900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657546896%_))))
                                              (if (gx#stx-null?
                                                   _%tl4657746903%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643647466%_)
                                                      (let ((_%__splice7585875859%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643647466%_
                                                              '0)))
                                                        (let ((_%tl4658046909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7585875859%_ '1)))
                      (_%target4657846906%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7585875859%_ '0))))
                  (if (gx#stx-null? _%tl4658046909%_)
                      (_%__match7611676117%_
                       _%e4643147449%_
                       _%hd4643247453%_
                       _%tl4643347456%_
                       _%e4643447459%_
                       _%hd4643547463%_
                       _%tl4643647466%_
                       _%e4643747469%_
                       _%hd4643847473%_
                       _%tl4643947476%_
                       _%e4644047479%_
                       _%hd4644147483%_
                       _%tl4644247486%_
                       _%e4644347489%_
                       _%hd4644447493%_
                       _%tl4644547496%_
                       _%e4644647499%_
                       _%hd4644747503%_
                       _%tl4644847506%_
                       _%e4657546896%_
                       _%hd4657646900%_
                       _%tl4657746903%_
                       _%__splice7585875859%_
                       _%target4657846906%_
                       _%tl4658046909%_)
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                          (let () (declare (not safe)) (_%g4642446633%_))))))
              (if (gx#stx-pair? _%hd4643847473%_)
                  (let ((_%e4660046754%_ (gx#syntax-e _%hd4643847473%_)))
                    (let ((_%tl4660246761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4660046754%_)))
                          (_%hd4660146758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4660046754%_))))
                      (let () (declare (not safe)) (_%g4642446633%_))))
                  (let () (declare (not safe)) (_%g4642446633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643847473%_)
                                                      (let ((_%e4660046754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660246761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660046754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660046754%_))))
                  (if (gx#stx-pair/null? _%tl4643647466%_)
                      (let ((_%__splice7586275863%_
                             (gx#syntax-split-splice _%tl4643647466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7614876149%_
                               _%e4643147449%_
                               _%hd4643247453%_
                               _%tl4643347456%_
                               _%e4643447459%_
                               _%hd4643547463%_
                               _%tl4643647466%_
                               _%e4643747469%_
                               _%hd4643847473%_
                               _%tl4643947476%_
                               _%e4660046754%_
                               _%hd4660146758%_
                               _%tl4660246761%_
                               _%__splice7586275863%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643647466%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643647466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4643147449%_
                       _%hd4643247453%_
                       _%tl4643347456%_
                       _%e4643447459%_
                       _%hd4643547463%_
                       _%tl4643647466%_
                       _%e4643747469%_
                       _%hd4643847473%_
                       _%tl4643947476%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))
                                      (if (gx#stx-pair? _%hd4643847473%_)
                                          (let ((_%e4660046754%_
                                                 (gx#syntax-e
                                                  _%hd4643847473%_)))
                                            (let ((_%tl4660246761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4660046754%_)))
                                                  (_%hd4660146758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4660046754%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643647466%_)
                                                  (let ((_%__splice7586275863%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643647466%_
                                                          '0)))
                                                    (let ((_%tl4660546767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '1)))
                                                          (_%target4660346764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7586275863%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660546767%_)
                                                          (_%__match7614876149%_
                                                           _%e4643147449%_
                                                           _%hd4643247453%_
                                                           _%tl4643347456%_
                                                           _%e4643447459%_
                                                           _%hd4643547463%_
                                                           _%tl4643647466%_
                                                           _%e4643747469%_
                                                           _%hd4643847473%_
                                                           _%tl4643947476%_
                                                           _%e4660046754%_
                                                           _%hd4660146758%_
                                                           _%tl4660246761%_
                                                           _%__splice7586275863%_
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
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4643847473%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4643647466%_)
                                              (let ((_%__splice7586275863%_
                                                     (gx#syntax-split-splice
                                                      _%tl4643647466%_
                                                      '0)))
                                                (let ((_%tl4660546767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '1)))
                                                      (_%target4660346764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7586275863%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660546767%_)
                                                      (_%__match7614876149%_
                                                       _%e4643147449%_
                                                       _%hd4643247453%_
                                                       _%tl4643347456%_
                                                       _%e4643447459%_
                                                       _%hd4643547463%_
                                                       _%tl4643647466%_
                                                       _%e4643747469%_
                                                       _%hd4643847473%_
                                                       _%tl4643947476%_
                                                       _%e4660046754%_
                                                       _%hd4660146758%_
                                                       _%tl4660246761%_
                                                       _%__splice7586275863%_
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
                  (if (gx#stx-null? _%tl4644547496%_)
                      (if (gx#stx-pair/null? _%tl4643647466%_)
                          (let ((_%__splice7585075851%_
                                 (gx#syntax-split-splice _%tl4643647466%_ '0)))
                            (let ((_%tl4651847173%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7585075851%_ '1)))
                                  (_%target4651647170%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7585075851%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651847173%_)
                                  (_%__match7601676017%_
                                   _%e4643147449%_
                                   _%hd4643247453%_
                                   _%tl4643347456%_
                                   _%e4643447459%_
                                   _%hd4643547463%_
                                   _%tl4643647466%_
                                   _%e4643747469%_
                                   _%hd4643847473%_
                                   _%tl4643947476%_
                                   _%e4644047479%_
                                   _%hd4644147483%_
                                   _%tl4644247486%_
                                   _%e4644347489%_
                                   _%hd4644447493%_
                                   _%tl4644547496%_
                                   _%__splice7585075851%_
                                   _%target4651647170%_
                                   _%tl4651847173%_)
                                  (if (gx#stx-pair? _%hd4643847473%_)
                                      (let ((_%e4660046754%_
                                             (gx#syntax-e _%hd4643847473%_)))
                                        (let ((_%tl4660246761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046754%_)))
                                              (_%hd4660146758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046754%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642446633%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642446633%_))))))
                          (if (gx#stx-pair? _%hd4643847473%_)
                              (let ((_%e4660046754%_
                                     (gx#syntax-e _%hd4643847473%_)))
                                (let ((_%tl4660246761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4660046754%_)))
                                      (_%hd4660146758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4660046754%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642446633%_))))
                              (let () (declare (not safe)) (_%g4642446633%_))))
                      (if (gx#stx-pair? _%hd4643847473%_)
                          (let ((_%e4660046754%_
                                 (gx#syntax-e _%hd4643847473%_)))
                            (let ((_%tl4660246761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4660046754%_)))
                                  (_%hd4660146758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4660046754%_))))
                              (if (gx#stx-pair/null? _%tl4643647466%_)
                                  (let ((_%__splice7586275863%_
                                         (gx#syntax-split-splice
                                          _%tl4643647466%_
                                          '0)))
                                    (let ((_%tl4660546767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '1)))
                                          (_%target4660346764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7586275863%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660546767%_)
                                          (_%__match7614876149%_
                                           _%e4643147449%_
                                           _%hd4643247453%_
                                           _%tl4643347456%_
                                           _%e4643447459%_
                                           _%hd4643547463%_
                                           _%tl4643647466%_
                                           _%e4643747469%_
                                           _%hd4643847473%_
                                           _%tl4643947476%_
                                           _%e4660046754%_
                                           _%hd4660146758%_
                                           _%tl4660246761%_
                                           _%__splice7586275863%_
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
                                                      (let ((_%e4660046754%_
                                                             (gx#syntax-e
                                                              _%hd4643847473%_)))
                                                        (let ((_%tl4660246761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4660046754%_)))
                      (_%hd4660146758%_
                       (let () (declare (not safe)) (##car _%e4660046754%_))))
                  (if (gx#stx-pair/null? _%tl4643647466%_)
                      (let ((_%__splice7586275863%_
                             (gx#syntax-split-splice _%tl4643647466%_ '0)))
                        (let ((_%tl4660546767%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '1)))
                              (_%target4660346764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7586275863%_ '0))))
                          (if (gx#stx-null? _%tl4660546767%_)
                              (_%__match7614876149%_
                               _%e4643147449%_
                               _%hd4643247453%_
                               _%tl4643347456%_
                               _%e4643447459%_
                               _%hd4643547463%_
                               _%tl4643647466%_
                               _%e4643747469%_
                               _%hd4643847473%_
                               _%tl4643947476%_
                               _%e4660046754%_
                               _%hd4660146758%_
                               _%tl4660246761%_
                               _%__splice7586275863%_
                               _%target4660346764%_
                               _%tl4660546767%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642446633%_)))))
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643847473%_)
                                              (let ((_%e4660046754%_
                                                     (gx#syntax-e
                                                      _%hd4643847473%_)))
                                                (let ((_%tl4660246761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4660046754%_)))
                                                      (_%hd4660146758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4660046754%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643647466%_)
                                                      (let ((_%__splice7586275863%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643647466%_
                                                              '0)))
                                                        (let ((_%tl4660546767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '1)))
                      (_%target4660346764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7586275863%_ '0))))
                  (if (gx#stx-null? _%tl4660546767%_)
                      (_%__match7614876149%_
                       _%e4643147449%_
                       _%hd4643247453%_
                       _%tl4643347456%_
                       _%e4643447459%_
                       _%hd4643547463%_
                       _%tl4643647466%_
                       _%e4643747469%_
                       _%hd4643847473%_
                       _%tl4643947476%_
                       _%e4660046754%_
                       _%hd4660146758%_
                       _%tl4660246761%_
                       _%__splice7586275863%_
                       _%target4660346764%_
                       _%tl4660546767%_)
                      (let () (declare (not safe)) (_%g4642446633%_)))))
              (let () (declare (not safe)) (_%g4642446633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642446633%_))))))
                                  (if (gx#stx-null? _%hd4643547463%_)
                                      (if (gx#stx-pair/null? _%tl4643647466%_)
                                          (let ((_%__splice7586675867%_
                                                 (gx#syntax-split-splice
                                                  _%tl4643647466%_
                                                  '0)))
                                            (let ((_%tl4662146663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7586675867%_
                                                      '1)))
                                                  (_%target4661946660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7586675867%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4662146663%_)
                                                  (_%__match7617076171%_
                                                   _%e4643147449%_
                                                   _%hd4643247453%_
                                                   _%tl4643347456%_
                                                   _%e4643447459%_
                                                   _%hd4643547463%_
                                                   _%tl4643647466%_
                                                   _%__splice7586675867%_
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
                      (let ((_%e4761647652%_ (gx#syntax-e _%g4761247649%_)))
                        (let ((_%hd4761747656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4761647652%_)))
                              (_%tl4761847659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4761647652%_))))
                          (if (gx#stx-pair? _%tl4761847659%_)
                              (let ((_%e4761947662%_
                                     (gx#syntax-e _%tl4761847659%_)))
                                (let ((_%hd4762047666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4761947662%_)))
                                      (_%tl4762147669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4761947662%_))))
                                  (if (gx#stx-pair? _%hd4762047666%_)
                                      (let ((_%e4762247672%_
                                             (gx#syntax-e _%hd4762047666%_)))
                                        (let ((_%hd4762347676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4762247672%_)))
                                              (_%tl4762447679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4762247672%_))))
                                          (if (gx#stx-pair? _%tl4762447679%_)
                                              (let ((_%e4762547682%_
                                                     (gx#syntax-e
                                                      _%tl4762447679%_)))
                                                (let ((_%hd4762647686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4762547682%_)))
                                                      (_%tl4762747689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4762547682%_))))
                                                  (if (gx#identifier?
                                                       _%hd4762647686%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80983_|
                                                           _%hd4762647686%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4762747689%_)
                                                              (let ((_%e4762847692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4762747689%_)))
                        (let ((_%hd4762947696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4762847692%_)))
                              (_%tl4763047699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4762847692%_))))
                          (if (gx#stx-null? _%tl4763047699%_)
                              (if (gx#stx-pair/null? _%tl4762147669%_)
                                  (let ((_g80984_
                                         (gx#syntax-split-splice
                                          _%tl4762147669%_
                                          '0)))
                                    (begin
                                      (let ((_g80985_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80984_)
                                                   (##vector-length _g80984_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80985_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80985_)))
                                      (let ((_%target4763147702%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80984_ 0)))
                                            (_%tl4763347705%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80984_ 1))))
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
               (let ((__obj80821 _%klass48335%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80821
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80821 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80821
                      'slot-types)))))
          (if _%$e48339%_
              ((lambda (_%slot-types48343%_)
                 (assgetq _%slot48337%_ _%slot-types48343%_))
               _%$e48339%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48316%_ _%slot48318%_)
        (let ((_%$e48320%_
               (let ((__obj80822 _%klass48316%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80822
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80822 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80822
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
               (let ((__obj80823 _%klass48297%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj80823
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj80823 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj80823
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
                     (_%__stx7617376174%_ _%contract48074%_)
                     (_%g4807948116%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7617376174%_))))
                (let ((_%__kont7617676177%_
                       (lambda (_%L48266%_ _%L48268%_)
                         (not (gx#free-identifier=?
                               _%L48268%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7617876179%_
                       (lambda (_%L48206%_ _%L48208%_ _%L48209%_)
                         (not (gx#free-identifier=?
                               _%L48208%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7618076181%_ (lambda (_%L48143%_) '#f)))
                  (let* ((_%__match7622676227%_
                          (lambda (_%e4809248166%_
                                   _%hd4809348170%_
                                   _%tl4809448173%_
                                   _%e4809548176%_
                                   _%hd4809648180%_
                                   _%tl4809748183%_
                                   _%e4809848186%_
                                   _%hd4809948190%_
                                   _%tl4810048193%_
                                   _%e4810148196%_
                                   _%hd4810248200%_
                                   _%tl4810348203%_)
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
                                  (_%__kont7617876179%_
                                   _%L48206%_
                                   _%L48208%_
                                   _%L48209%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4807948116%_))))))
                         (_%__match7619676197%_
                          (lambda (_%e4808348246%_
                                   _%hd4808448250%_
                                   _%tl4808548253%_
                                   _%e4808648256%_
                                   _%hd4808748260%_
                                   _%tl4808848263%_)
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
                                  (_%__kont7617676177%_ _%L48266%_ _%L48268%_)
                                  (if (gx#identifier? _%hd4808448250%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80986_|
                                           _%hd4808448250%_)
                                          (_%__kont7618076181%_
                                           _%hd4808748260%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4807948116%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4807948116%_))))))))
                    (if (gx#stx-pair? _%__stx7617376174%_)
                        (let ((_%e4808348246%_
                               (gx#syntax-e _%__stx7617376174%_)))
                          (let ((_%tl4808548253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4808348246%_)))
                                (_%hd4808448250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4808348246%_))))
                            (if (gx#stx-pair? _%tl4808548253%_)
                                (let ((_%e4808648256%_
                                       (gx#syntax-e _%tl4808548253%_)))
                                  (let ((_%tl4808848263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4808648256%_)))
                                        (_%hd4808748260%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4808648256%_))))
                                    (if (gx#stx-null? _%tl4808848263%_)
                                        (_%__match7619676197%_
                                         _%e4808348246%_
                                         _%hd4808448250%_
                                         _%tl4808548253%_
                                         _%e4808648256%_
                                         _%hd4808748260%_
                                         _%tl4808848263%_)
                                        (if (gx#identifier? _%hd4808448250%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80986_|
                                                 _%hd4808448250%_)
                                                (if (gx#stx-pair?
                                                     _%tl4808848263%_)
                                                    (let ((_%e4809848186%_
                                                           (gx#syntax-e
                                                            _%tl4808848263%_)))
                                                      (let ((_%tl4810048193%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4809848186%_)))
                    (_%hd4809948190%_
                     (let () (declare (not safe)) (##car _%e4809848186%_))))
                (if (gx#stx-pair? _%tl4810048193%_)
                    (let ((_%e4810148196%_ (gx#syntax-e _%tl4810048193%_)))
                      (let ((_%tl4810348203%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4810148196%_)))
                            (_%hd4810248200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4810148196%_))))
                        (if (gx#stx-null? _%tl4810348203%_)
                            (_%__match7622676227%_
                             _%e4808348246%_
                             _%hd4808448250%_
                             _%tl4808548253%_
                             _%e4808648256%_
                             _%hd4808748260%_
                             _%tl4808848263%_
                             _%e4809848186%_
                             _%hd4809948190%_
                             _%tl4810048193%_
                             _%e4810148196%_
                             _%hd4810248200%_
                             _%tl4810348203%_)
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
                     (_%__stx7624776248%_ _%contract47842%_)
                     (_%g4784747884%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7624776248%_))))
                (let ((_%__kont7625076251%_
                       (lambda (_%L48034%_ _%L48036%_)
                         (not (gx#free-identifier=?
                               _%L48036%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7625276253%_
                       (lambda (_%L47974%_ _%L47976%_ _%L47977%_) '#t))
                      (_%__kont7625476255%_ (lambda (_%L47911%_) '#t)))
                  (let* ((_%__match7630076301%_
                          (lambda (_%e4786047934%_
                                   _%hd4786147938%_
                                   _%tl4786247941%_
                                   _%e4786347944%_
                                   _%hd4786447948%_
                                   _%tl4786547951%_
                                   _%e4786647954%_
                                   _%hd4786747958%_
                                   _%tl4786847961%_
                                   _%e4786947964%_
                                   _%hd4787047968%_
                                   _%tl4787147971%_)
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
                                  (_%__kont7625276253%_
                                   _%L47974%_
                                   _%L47976%_
                                   _%L47977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4784747884%_))))))
                         (_%__match7627076271%_
                          (lambda (_%e4785148014%_
                                   _%hd4785248018%_
                                   _%tl4785348021%_
                                   _%e4785448024%_
                                   _%hd4785548028%_
                                   _%tl4785648031%_)
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
                                  (_%__kont7625076251%_ _%L48034%_ _%L48036%_)
                                  (if (gx#identifier? _%hd4785248018%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80987_|
                                           _%hd4785248018%_)
                                          (_%__kont7625476255%_
                                           _%hd4785548028%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4784747884%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4784747884%_))))))))
                    (if (gx#stx-pair? _%__stx7624776248%_)
                        (let ((_%e4785148014%_
                               (gx#syntax-e _%__stx7624776248%_)))
                          (let ((_%tl4785348021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4785148014%_)))
                                (_%hd4785248018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4785148014%_))))
                            (if (gx#stx-pair? _%tl4785348021%_)
                                (let ((_%e4785448024%_
                                       (gx#syntax-e _%tl4785348021%_)))
                                  (let ((_%tl4785648031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4785448024%_)))
                                        (_%hd4785548028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4785448024%_))))
                                    (if (gx#stx-null? _%tl4785648031%_)
                                        (_%__match7627076271%_
                                         _%e4785148014%_
                                         _%hd4785248018%_
                                         _%tl4785348021%_
                                         _%e4785448024%_
                                         _%hd4785548028%_
                                         _%tl4785648031%_)
                                        (if (gx#identifier? _%hd4785248018%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g80987_|
                                                 _%hd4785248018%_)
                                                (if (gx#stx-pair?
                                                     _%tl4785648031%_)
                                                    (let ((_%e4786647954%_
                                                           (gx#syntax-e
                                                            _%tl4785648031%_)))
                                                      (let ((_%tl4786847961%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4786647954%_)))
                    (_%hd4786747958%_
                     (let () (declare (not safe)) (##car _%e4786647954%_))))
                (if (gx#stx-pair? _%tl4786847961%_)
                    (let ((_%e4786947964%_ (gx#syntax-e _%tl4786847961%_)))
                      (let ((_%tl4787147971%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4786947964%_)))
                            (_%hd4787047968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4786947964%_))))
                        (if (gx#stx-null? _%tl4787147971%_)
                            (_%__match7630076301%_
                             _%e4785148014%_
                             _%hd4785248018%_
                             _%tl4785348021%_
                             _%e4785448024%_
                             _%hd4785548028%_
                             _%tl4785648031%_
                             _%e4786647954%_
                             _%hd4786747958%_
                             _%tl4786847961%_
                             _%e4786947964%_
                             _%hd4787047968%_
                             _%tl4787147971%_)
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
                (let ((__obj80824 _%klass47798%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80824
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80824 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj80824
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
                    (let ((__obj80825 _%klass47779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80825
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80825 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80825
                           'mutators)))
                    (let ((__obj80826 _%klass47779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80826
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80826 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80826
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
                  (lambda (_%klass49259%_
                           _%var49261%_
                           _%Type49262%_
                           _%body49263%_
                           _%checked?49264%_)
                    (let* ((_%g4926649310%_
                            (lambda (_%g4926749306%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4926749306%_)))
                           (_%g4926549467%_
                            (lambda (_%g4926749314%_)
                              (if (gx#stx-pair? _%g4926749314%_)
                                  (let ((_%e4927549317%_
                                         (gx#syntax-e _%g4926749314%_)))
                                    (let ((_%hd4927649321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4927549317%_)))
                                          (_%tl4927749324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4927549317%_))))
                                      (if (gx#stx-pair? _%tl4927749324%_)
                                          (let ((_%e4927849327%_
                                                 (gx#syntax-e
                                                  _%tl4927749324%_)))
                                            (let ((_%hd4927949331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927849327%_)))
                                                  (_%tl4928049334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927849327%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4928049334%_)
                                                  (let ((_%e4928149337%_
                                                         (gx#syntax-e
                                                          _%tl4928049334%_)))
                                                    (let ((_%hd4928249341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4928149337%_)))
                                                          (_%tl4928349344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4928149337%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4928349344%_)
                                                          (let ((_%e4928449347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4928349344%_)))
                    (let ((_%hd4928549351%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4928449347%_)))
                          (_%tl4928649354%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4928449347%_))))
                      (if (gx#stx-pair? _%tl4928649354%_)
                          (let ((_%e4928749357%_
                                 (gx#syntax-e _%tl4928649354%_)))
                            (let ((_%hd4928849361%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4928749357%_)))
                                  (_%tl4928949364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4928749357%_))))
                              (if (gx#stx-pair? _%tl4928949364%_)
                                  (let ((_%e4929049367%_
                                         (gx#syntax-e _%tl4928949364%_)))
                                    (let ((_%hd4929149371%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4929049367%_)))
                                          (_%tl4929249374%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4929049367%_))))
                                      (if (gx#stx-pair? _%tl4929249374%_)
                                          (let ((_%e4929349377%_
                                                 (gx#syntax-e
                                                  _%tl4929249374%_)))
                                            (let ((_%hd4929449381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4929349377%_)))
                                                  (_%tl4929549384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4929349377%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4929449381%_)
                                                  (let ((_g80988_
                                                         (gx#syntax-split-splice
                                                          _%hd4929449381%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80988_)
                           (##vector-length _g80988_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80989_ 2)))
                    (error "Context expects 2 values" _g80989_)))
              (let ((_%target4929649387%_
                     (let () (declare (not safe)) (##vector-ref _g80988_ 0)))
                    (_%tl4929849390%_
                     (let () (declare (not safe)) (##vector-ref _g80988_ 1))))
                (if (gx#stx-null? _%tl4929849390%_)
                    (letrec ((_%loop4929949393%_
                              (lambda (_%hd4929749397%_ _%body4930349400%_)
                                (if (gx#stx-pair? _%hd4929749397%_)
                                    (let ((_%e4930049403%_
                                           (gx#syntax-e _%hd4929749397%_)))
                                      (let ((_%lp-hd4930149407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4930049403%_)))
                                            (_%lp-tl4930249410%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4930049403%_))))
                                        (_%loop4929949393%_
                                         _%lp-tl4930249410%_
                                         (cons _%lp-hd4930149407%_
                                               _%body4930349400%_))))
                                    (let ((_%body4930449413%_
                                           (reverse _%body4930349400%_)))
                                      (if (gx#stx-null? _%tl4929549384%_)
                                          ((lambda (_%L49417%_
                                                    _%L49419%_
                                                    _%L49420%_
                                                    _%L49421%_
                                                    _%L49422%_
                                                    _%L49423%_
                                                    _%L49424%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49422%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49423%_ '()))
                                         (cons _%L49422%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49424%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49422%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49421%_ '()))
                               (cons _%L49420%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49419%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4945849461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4945949464%_)
                      (cons _%g4945849461%_ _%g4945949464%_))
                    '()
                    _%L49417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4930449413%_
                                           _%hd4929149371%_
                                           _%hd4928849361%_
                                           _%hd4928549351%_
                                           _%hd4928249341%_
                                           _%hd4927949331%_
                                           _%hd4927649321%_)
                                          (_%g4926649310%_
                                           _%g4926749314%_)))))))
                      (_%loop4929949393%_ _%target4929649387%_ '()))
                    (_%g4926649310%_ _%g4926749314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926649310%_
                                                   _%g4926749314%_))))
                                          (_%g4926649310%_ _%g4926749314%_))))
                                  (_%g4926649310%_ _%g4926749314%_))))
                          (_%g4926649310%_ _%g4926749314%_))))
                  (_%g4926649310%_ _%g4926749314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926649310%_
                                                   _%g4926749314%_))))
                                          (_%g4926649310%_ _%g4926749314%_))))
                                  (_%g4926649310%_ _%g4926749314%_)))))
                      (_%g4926549467%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj80827 _%klass49259%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80827
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80827
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj80827
                                    'type-descriptor)))
                             _%var49261%_
                             _%klass49259%_
                             _%checked?49264%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49263%_)))))
                 (_%expand48353%_
                  (lambda (_%var49151%_
                           _%Type49153%_
                           _%body49154%_
                           _%checked?49155%_
                           _%checked-mutators?49156%_
                           _%maybe?49157%_)
                    (let* ((_%klass49159%_
                            (gx#syntax-local-value _%Type49153%_ false))
                           (_%expr-body49166%_
                            (_%expand-body48351%_
                             _%klass49159%_
                             _%var49151%_
                             _%Type49153%_
                             _%body49154%_
                             (let ((_%$e49162%_ _%checked?49155%_))
                               (if _%$e49162%_
                                   _%$e49162%_
                                   _%checked-mutators?49156%_)))))
                      (if _%checked?49155%_
                          (let* ((_%g4917149190%_
                                  (lambda (_%g4917249186%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4917249186%_)))
                                 (_%g4917049252%_
                                  (lambda (_%g4917249194%_)
                                    (if (gx#stx-pair? _%g4917249194%_)
                                        (let ((_%e4917649197%_
                                               (gx#syntax-e _%g4917249194%_)))
                                          (let ((_%hd4917749201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4917649197%_)))
                                                (_%tl4917849204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4917649197%_))))
                                            (if (gx#stx-pair? _%tl4917849204%_)
                                                (let ((_%e4917949207%_
                                                       (gx#syntax-e
                                                        _%tl4917849204%_)))
                                                  (let ((_%hd4918049211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4917949207%_)))
                                                        (_%tl4918149214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4917949207%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4918149214%_)
                                                        (let ((_%e4918249217%_
                                                               (gx#syntax-e
                                                                _%tl4918149214%_)))
                                                          (let ((_%hd4918349221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4918249217%_)))
                        (_%tl4918449224%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4918249217%_))))
                    (if (gx#stx-null? _%tl4918449224%_)
                        ((lambda (_%L49227%_ _%L49229%_ _%L49230%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49229%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49230%_ '())))
                                       (cons _%L49227%_ '()))))
                         _%hd4918349221%_
                         _%hd4918049211%_
                         _%hd4917749201%_)
                        (_%g4917149190%_ _%g4917249194%_))))
                (_%g4917149190%_ _%g4917249194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4917149190%_
                                                 _%g4917249194%_))))
                                        (_%g4917149190%_ _%g4917249194%_)))))
                            (_%g4917049252%_
                             (list (let ((_%instance?49256%_
                                          (let ((__obj80828 _%klass49159%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80828
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80828
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80828
                                                 'predicate)))))
                                     (if _%maybe?49157%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49256%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49256%_))
                                   _%var49151%_
                                   _%expr-body49166%_)))
                          _%expr-body49166%_)))))
          (let* ((_%__stx7632176322%_ _%stx48348%_)
                 (_%g4835948502%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7632176322%_))))
            (let ((_%__kont7632476325%_
                   (lambda (_%L49079%_ _%L49081%_ _%L49082%_ _%L49083%_)
                     (let* ((_%g4910849116%_
                             (lambda (_%g4910949112%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4910949112%_)))
                            (_%g4910749143%_
                             (lambda (_%g4910949120%_)
                               ((lambda (_%L49123%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49083%_
                                                    (cons _%L49082%_
                                                          (cons _%L49123%_
                                                                '())))
                                              (foldr (lambda (_%g4913449137%_
                                                              _%g4913549140%_)
                                                       (cons _%g4913449137%_
                                                             _%g4913549140%_))
                                                     '()
                                                     _%L49079%_))))
                                _%g4910949120%_))))
                       (_%g4910749143%_
                        (let ((__obj80829 (gx#syntax-local-value _%L49081%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80829
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80829
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj80829
                               'identifier)))))))
                  (_%__kont7632876329%_
                   (lambda (_%L48957%_ _%L48959%_ _%L48960%_)
                     (_%expand48353%_
                      _%L48960%_
                      _%L48959%_
                      (foldr (lambda (_%g4898348986%_ _%g4898448989%_)
                               (cons _%g4898348986%_ _%g4898448989%_))
                             '()
                             _%L48957%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7633276333%_
                   (lambda (_%L48835%_ _%L48837%_ _%L48838%_)
                     (_%expand48353%_
                      _%L48838%_
                      _%L48837%_
                      (foldr (lambda (_%g4886148864%_ _%g4886248867%_)
                               (cons _%g4886148864%_ _%g4886248867%_))
                             '()
                             _%L48835%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7633676337%_
                   (lambda (_%L48713%_ _%L48715%_ _%L48716%_)
                     (_%expand48353%_
                      _%L48716%_
                      _%L48715%_
                      (foldr (lambda (_%g4873948742%_ _%g4874048745%_)
                               (cons _%g4873948742%_ _%g4874048745%_))
                             '()
                             _%L48713%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7634076341%_
                   (lambda (_%L48589%_ _%L48591%_ _%L48592%_)
                     (_%expand48353%_
                      _%L48592%_
                      _%L48591%_
                      (foldr (lambda (_%g4861748620%_ _%g4861848623%_)
                               (cons _%g4861748620%_ _%g4861848623%_))
                             '()
                             _%L48589%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7656076561%_
                      (lambda (_%e4847348509%_
                               _%hd4847448513%_
                               _%tl4847548516%_
                               _%e4847648519%_
                               _%hd4847748523%_
                               _%tl4847848526%_
                               _%e4847948529%_
                               _%hd4848048533%_
                               _%tl4848148536%_
                               _%e4848248539%_
                               _%hd4848348543%_
                               _%tl4848448546%_
                               _%e4848548549%_
                               _%hd4848648553%_
                               _%tl4848748556%_
                               _%__splice7634276343%_
                               _%target4848848559%_
                               _%tl4849048562%_)
                        (letrec ((_%loop4849148565%_
                                  (lambda (_%hd4848948569%_ _%body4849548572%_)
                                    (if (gx#stx-pair? _%hd4848948569%_)
                                        (let ((_%e4849248575%_
                                               (gx#syntax-e _%hd4848948569%_)))
                                          (let ((_%lp-tl4849448582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4849248575%_)))
                                                (_%lp-hd4849348579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4849248575%_))))
                                            (_%loop4849148565%_
                                             _%lp-tl4849448582%_
                                             (cons _%lp-hd4849348579%_
                                                   _%body4849548572%_))))
                                        (let ((_%body4849648585%_
                                               (reverse _%body4849548572%_)))
                                          (let ((_%L48589%_ _%body4849648585%_)
                                                (_%L48591%_ _%hd4848648553%_)
                                                (_%L48592%_ _%hd4848048533%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48591%_))
                                                (_%__kont7634076341%_
                                                 _%L48589%_
                                                 _%L48591%_
                                                 _%L48592%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))))))))
                          (_%loop4849148565%_ _%target4848848559%_ '()))))
                     (_%__match7651676517%_
                      (lambda (_%e4844648633%_
                               _%hd4844748637%_
                               _%tl4844848640%_
                               _%e4844948643%_
                               _%hd4845048647%_
                               _%tl4845148650%_
                               _%e4845248653%_
                               _%hd4845348657%_
                               _%tl4845448660%_
                               _%e4845548663%_
                               _%hd4845648667%_
                               _%tl4845748670%_
                               _%e4845848673%_
                               _%hd4845948677%_
                               _%tl4846048680%_
                               _%__splice7633876339%_
                               _%target4846148683%_
                               _%tl4846348686%_)
                        (letrec ((_%loop4846448689%_
                                  (lambda (_%hd4846248693%_ _%body4846848696%_)
                                    (if (gx#stx-pair? _%hd4846248693%_)
                                        (let ((_%e4846548699%_
                                               (gx#syntax-e _%hd4846248693%_)))
                                          (let ((_%lp-tl4846748706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4846548699%_)))
                                                (_%lp-hd4846648703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4846548699%_))))
                                            (_%loop4846448689%_
                                             _%lp-tl4846748706%_
                                             (cons _%lp-hd4846648703%_
                                                   _%body4846848696%_))))
                                        (let ((_%body4846948709%_
                                               (reverse _%body4846848696%_)))
                                          (let ((_%L48713%_ _%body4846948709%_)
                                                (_%L48715%_ _%hd4845948677%_)
                                                (_%L48716%_ _%hd4845348657%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48715%_))
                                                (_%__kont7633676337%_
                                                 _%L48713%_
                                                 _%L48715%_
                                                 _%L48716%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))))))))
                          (_%loop4846448689%_ _%target4846148683%_ '()))))
                     (_%__match7647276473%_
                      (lambda (_%e4841948755%_
                               _%hd4842048759%_
                               _%tl4842148762%_
                               _%e4842248765%_
                               _%hd4842348769%_
                               _%tl4842448772%_
                               _%e4842548775%_
                               _%hd4842648779%_
                               _%tl4842748782%_
                               _%e4842848785%_
                               _%hd4842948789%_
                               _%tl4843048792%_
                               _%e4843148795%_
                               _%hd4843248799%_
                               _%tl4843348802%_
                               _%__splice7633476335%_
                               _%target4843448805%_
                               _%tl4843648808%_)
                        (letrec ((_%loop4843748811%_
                                  (lambda (_%hd4843548815%_ _%body4844148818%_)
                                    (if (gx#stx-pair? _%hd4843548815%_)
                                        (let ((_%e4843848821%_
                                               (gx#syntax-e _%hd4843548815%_)))
                                          (let ((_%lp-tl4844048828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4843848821%_)))
                                                (_%lp-hd4843948825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4843848821%_))))
                                            (_%loop4843748811%_
                                             _%lp-tl4844048828%_
                                             (cons _%lp-hd4843948825%_
                                                   _%body4844148818%_))))
                                        (let ((_%body4844248831%_
                                               (reverse _%body4844148818%_)))
                                          (let ((_%L48835%_ _%body4844248831%_)
                                                (_%L48837%_ _%hd4843248799%_)
                                                (_%L48838%_ _%hd4842648779%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48837%_))
                                                (_%__kont7633276333%_
                                                 _%L48835%_
                                                 _%L48837%_
                                                 _%L48838%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))))))))
                          (_%loop4843748811%_ _%target4843448805%_ '()))))
                     (_%__match7642876429%_
                      (lambda (_%e4839248877%_
                               _%hd4839348881%_
                               _%tl4839448884%_
                               _%e4839548887%_
                               _%hd4839648891%_
                               _%tl4839748894%_
                               _%e4839848897%_
                               _%hd4839948901%_
                               _%tl4840048904%_
                               _%e4840148907%_
                               _%hd4840248911%_
                               _%tl4840348914%_
                               _%e4840448917%_
                               _%hd4840548921%_
                               _%tl4840648924%_
                               _%__splice7633076331%_
                               _%target4840748927%_
                               _%tl4840948930%_)
                        (letrec ((_%loop4841048933%_
                                  (lambda (_%hd4840848937%_ _%body4841448940%_)
                                    (if (gx#stx-pair? _%hd4840848937%_)
                                        (let ((_%e4841148943%_
                                               (gx#syntax-e _%hd4840848937%_)))
                                          (let ((_%lp-tl4841348950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841148943%_)))
                                                (_%lp-hd4841248947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841148943%_))))
                                            (_%loop4841048933%_
                                             _%lp-tl4841348950%_
                                             (cons _%lp-hd4841248947%_
                                                   _%body4841448940%_))))
                                        (let ((_%body4841548953%_
                                               (reverse _%body4841448940%_)))
                                          (let ((_%L48957%_ _%body4841548953%_)
                                                (_%L48959%_ _%hd4840548921%_)
                                                (_%L48960%_ _%hd4839948901%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48959%_))
                                                (_%__kont7632876329%_
                                                 _%L48957%_
                                                 _%L48959%_
                                                 _%L48960%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))))))))
                          (_%loop4841048933%_ _%target4840748927%_ '()))))
                     (_%__match7640876409%_
                      (lambda (_%e4839248877%_
                               _%hd4839348881%_
                               _%tl4839448884%_
                               _%e4839548887%_
                               _%hd4839648891%_
                               _%tl4839748894%_
                               _%e4839848897%_
                               _%hd4839948901%_
                               _%tl4840048904%_
                               _%e4840148907%_
                               _%hd4840248911%_
                               _%tl4840348914%_)
                        (if (gx#identifier? _%hd4840248911%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g80990_|
                                 _%hd4840248911%_)
                                (if (gx#stx-pair? _%tl4840348914%_)
                                    (let ((_%e4840448917%_
                                           (gx#syntax-e _%tl4840348914%_)))
                                      (let ((_%tl4840648924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4840448917%_)))
                                            (_%hd4840548921%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4840448917%_))))
                                        (if (gx#stx-null? _%tl4840648924%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4839748894%_)
                                                (let ((_%__splice7633076331%_
                                                       (gx#syntax-split-splice
                                                        _%tl4839748894%_
                                                        '0)))
                                                  (let ((_%tl4840948930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7633076331%_
                                                            '1)))
                                                        (_%target4840748927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7633076331%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4840948930%_)
                                                        (_%__match7642876429%_
                                                         _%e4839248877%_
                                                         _%hd4839348881%_
                                                         _%tl4839448884%_
                                                         _%e4839548887%_
                                                         _%hd4839648891%_
                                                         _%tl4839748894%_
                                                         _%e4839848897%_
                                                         _%hd4839948901%_
                                                         _%tl4840048904%_
                                                         _%e4840148907%_
                                                         _%hd4840248911%_
                                                         _%tl4840348914%_
                                                         _%e4840448917%_
                                                         _%hd4840548921%_
                                                         _%tl4840648924%_
                                                         _%__splice7633076331%_
                                                         _%target4840748927%_
                                                         _%tl4840948930%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4835948502%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835948502%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835948502%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g80991_|
                                     _%hd4840248911%_)
                                    (if (gx#stx-pair? _%tl4840348914%_)
                                        (let ((_%e4843148795%_
                                               (gx#syntax-e _%tl4840348914%_)))
                                          (let ((_%tl4843348802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4843148795%_)))
                                                (_%hd4843248799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4843148795%_))))
                                            (if (gx#stx-null? _%tl4843348802%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4839748894%_)
                                                    (let ((_%__splice7633476335%_
                                                           (gx#syntax-split-splice
                                                            _%tl4839748894%_
                                                            '0)))
                                                      (let ((_%tl4843648808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7633476335%_ '1)))
                    (_%target4843448805%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7633476335%_ '0))))
                (if (gx#stx-null? _%tl4843648808%_)
                    (_%__match7647276473%_
                     _%e4839248877%_
                     _%hd4839348881%_
                     _%tl4839448884%_
                     _%e4839548887%_
                     _%hd4839648891%_
                     _%tl4839748894%_
                     _%e4839848897%_
                     _%hd4839948901%_
                     _%tl4840048904%_
                     _%e4840148907%_
                     _%hd4840248911%_
                     _%tl4840348914%_
                     _%e4843148795%_
                     _%hd4843248799%_
                     _%tl4843348802%_
                     _%__splice7633476335%_
                     _%target4843448805%_
                     _%tl4843648808%_)
                    (let () (declare (not safe)) (_%g4835948502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835948502%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835948502%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g80992_|
                                         _%hd4840248911%_)
                                        (if (gx#stx-pair? _%tl4840348914%_)
                                            (let ((_%e4845848673%_
                                                   (gx#syntax-e
                                                    _%tl4840348914%_)))
                                              (let ((_%tl4846048680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4845848673%_)))
                                                    (_%hd4845948677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4845848673%_))))
                                                (if (gx#stx-null?
                                                     _%tl4846048680%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4839748894%_)
                                                        (let ((_%__splice7633876339%_
                                                               (gx#syntax-split-splice
                                                                _%tl4839748894%_
                                                                '0)))
                                                          (let ((_%tl4846348686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7633876339%_ '1)))
                        (_%target4846148683%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7633876339%_ '0))))
                    (if (gx#stx-null? _%tl4846348686%_)
                        (_%__match7651676517%_
                         _%e4839248877%_
                         _%hd4839348881%_
                         _%tl4839448884%_
                         _%e4839548887%_
                         _%hd4839648891%_
                         _%tl4839748894%_
                         _%e4839848897%_
                         _%hd4839948901%_
                         _%tl4840048904%_
                         _%e4840148907%_
                         _%hd4840248911%_
                         _%tl4840348914%_
                         _%e4845848673%_
                         _%hd4845948677%_
                         _%tl4846048680%_
                         _%__splice7633876339%_
                         _%target4846148683%_
                         _%tl4846348686%_)
                        (let () (declare (not safe)) (_%g4835948502%_)))))
                (let () (declare (not safe)) (_%g4835948502%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835948502%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835948502%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g80993_|
                                             _%hd4840248911%_)
                                            (if (gx#stx-pair? _%tl4840348914%_)
                                                (let ((_%e4848548549%_
                                                       (gx#syntax-e
                                                        _%tl4840348914%_)))
                                                  (let ((_%tl4848748556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4848548549%_)))
                                                        (_%hd4848648553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4848548549%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4848748556%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4839748894%_)
                                                            (let ((_%__splice7634276343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4839748894%_ '0)))
                      (let ((_%tl4849048562%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7634276343%_ '1)))
                            (_%target4848848559%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7634276343%_ '0))))
                        (if (gx#stx-null? _%tl4849048562%_)
                            (_%__match7656076561%_
                             _%e4839248877%_
                             _%hd4839348881%_
                             _%tl4839448884%_
                             _%e4839548887%_
                             _%hd4839648891%_
                             _%tl4839748894%_
                             _%e4839848897%_
                             _%hd4839948901%_
                             _%tl4840048904%_
                             _%e4840148907%_
                             _%hd4840248911%_
                             _%tl4840348914%_
                             _%e4848548549%_
                             _%hd4848648553%_
                             _%tl4848748556%_
                             _%__splice7634276343%_
                             _%target4848848559%_
                             _%tl4849048562%_)
                            (let () (declare (not safe)) (_%g4835948502%_)))))
                    (let () (declare (not safe)) (_%g4835948502%_)))
                (let () (declare (not safe)) (_%g4835948502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835948502%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835948502%_))))))
                            (let () (declare (not safe)) (_%g4835948502%_)))))
                     (_%__match7638476385%_
                      (lambda (_%e4836548999%_
                               _%hd4836649003%_
                               _%tl4836749006%_
                               _%e4836849009%_
                               _%hd4836949013%_
                               _%tl4837049016%_
                               _%e4837149019%_
                               _%hd4837249023%_
                               _%tl4837349026%_
                               _%e4837449029%_
                               _%hd4837549033%_
                               _%tl4837649036%_
                               _%e4837749039%_
                               _%hd4837849043%_
                               _%tl4837949046%_
                               _%__splice7632676327%_
                               _%target4838049049%_
                               _%tl4838249052%_)
                        (letrec ((_%loop4838349055%_
                                  (lambda (_%hd4838149059%_ _%body4838749062%_)
                                    (if (gx#stx-pair? _%hd4838149059%_)
                                        (let ((_%e4838449065%_
                                               (gx#syntax-e _%hd4838149059%_)))
                                          (let ((_%lp-tl4838649072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838449065%_)))
                                                (_%lp-hd4838549069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838449065%_))))
                                            (_%loop4838349055%_
                                             _%lp-tl4838649072%_
                                             (cons _%lp-hd4838549069%_
                                                   _%body4838749062%_))))
                                        (let ((_%body4838849075%_
                                               (reverse _%body4838749062%_)))
                                          (let ((_%L49079%_ _%body4838849075%_)
                                                (_%L49081%_ _%hd4837849043%_)
                                                (_%L49082%_ _%hd4837549033%_)
                                                (_%L49083%_ _%hd4837249023%_))
                                            (if (let ((__tmp80994
                                                       (gx#syntax-local-value
                                                        _%L49081%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp80994))
                                                (_%__kont7632476325%_
                                                 _%L49079%_
                                                 _%L49081%_
                                                 _%L49082%_
                                                 _%L49083%_)
                                                (_%__match7640876409%_
                                                 _%e4836548999%_
                                                 _%hd4836649003%_
                                                 _%tl4836749006%_
                                                 _%e4836849009%_
                                                 _%hd4836949013%_
                                                 _%tl4837049016%_
                                                 _%e4837149019%_
                                                 _%hd4837249023%_
                                                 _%tl4837349026%_
                                                 _%e4837449029%_
                                                 _%hd4837549033%_
                                                 _%tl4837649036%_))))))))
                          (_%loop4838349055%_ _%target4838049049%_ '())))))
                (if (gx#stx-pair? _%__stx7632176322%_)
                    (let ((_%e4836548999%_ (gx#syntax-e _%__stx7632176322%_)))
                      (let ((_%tl4836749006%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4836548999%_)))
                            (_%hd4836649003%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4836548999%_))))
                        (if (gx#stx-pair? _%tl4836749006%_)
                            (let ((_%e4836849009%_
                                   (gx#syntax-e _%tl4836749006%_)))
                              (let ((_%tl4837049016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4836849009%_)))
                                    (_%hd4836949013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4836849009%_))))
                                (if (gx#stx-pair? _%hd4836949013%_)
                                    (let ((_%e4837149019%_
                                           (gx#syntax-e _%hd4836949013%_)))
                                      (let ((_%tl4837349026%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4837149019%_)))
                                            (_%hd4837249023%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4837149019%_))))
                                        (if (gx#stx-pair? _%tl4837349026%_)
                                            (let ((_%e4837449029%_
                                                   (gx#syntax-e
                                                    _%tl4837349026%_)))
                                              (let ((_%tl4837649036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4837449029%_)))
                                                    (_%hd4837549033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4837449029%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4837649036%_)
                                                    (let ((_%e4837749039%_
                                                           (gx#syntax-e
                                                            _%tl4837649036%_)))
                                                      (let ((_%tl4837949046%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4837749039%_)))
                    (_%hd4837849043%_
                     (let () (declare (not safe)) (##car _%e4837749039%_))))
                (if (gx#stx-null? _%tl4837949046%_)
                    (if (gx#stx-pair/null? _%tl4837049016%_)
                        (let ((_%__splice7632676327%_
                               (gx#syntax-split-splice _%tl4837049016%_ '0)))
                          (let ((_%tl4838249052%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7632676327%_ '1)))
                                (_%target4838049049%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7632676327%_ '0))))
                            (if (gx#stx-null? _%tl4838249052%_)
                                (_%__match7638476385%_
                                 _%e4836548999%_
                                 _%hd4836649003%_
                                 _%tl4836749006%_
                                 _%e4836849009%_
                                 _%hd4836949013%_
                                 _%tl4837049016%_
                                 _%e4837149019%_
                                 _%hd4837249023%_
                                 _%tl4837349026%_
                                 _%e4837449029%_
                                 _%hd4837549033%_
                                 _%tl4837649036%_
                                 _%e4837749039%_
                                 _%hd4837849043%_
                                 _%tl4837949046%_
                                 _%__splice7632676327%_
                                 _%target4838049049%_
                                 _%tl4838249052%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4835948502%_)))))
                        (let () (declare (not safe)) (_%g4835948502%_)))
                    (let () (declare (not safe)) (_%g4835948502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835948502%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835948502%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835948502%_)))))
                            (let () (declare (not safe)) (_%g4835948502%_)))))
                    (let () (declare (not safe)) (_%g4835948502%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49477%_)
        (letrec ((_%expand-body49480%_
                  (lambda (_%var50481%_
                           _%Interface50483%_
                           _%body50484%_
                           _%checked?50485%_)
                    (let* ((_%type50487%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49477%_
                               _%Interface50483%_)))
                           (_%g5049050534%_
                            (lambda (_%g5049150530%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5049150530%_)))
                           (_%g5048950692%_
                            (lambda (_%g5049150538%_)
                              (if (gx#stx-pair? _%g5049150538%_)
                                  (let ((_%e5049950541%_
                                         (gx#syntax-e _%g5049150538%_)))
                                    (let ((_%hd5050050545%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049950541%_)))
                                          (_%tl5050150548%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049950541%_))))
                                      (if (gx#stx-pair? _%tl5050150548%_)
                                          (let ((_%e5050250551%_
                                                 (gx#syntax-e
                                                  _%tl5050150548%_)))
                                            (let ((_%hd5050350555%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5050250551%_)))
                                                  (_%tl5050450558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5050250551%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5050450558%_)
                                                  (let ((_%e5050550561%_
                                                         (gx#syntax-e
                                                          _%tl5050450558%_)))
                                                    (let ((_%hd5050650565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5050550561%_)))
                                                          (_%tl5050750568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5050550561%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5050750568%_)
                                                          (let ((_%e5050850571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5050750568%_)))
                    (let ((_%hd5050950575%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5050850571%_)))
                          (_%tl5051050578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5050850571%_))))
                      (if (gx#stx-pair? _%tl5051050578%_)
                          (let ((_%e5051150581%_
                                 (gx#syntax-e _%tl5051050578%_)))
                            (let ((_%hd5051250585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5051150581%_)))
                                  (_%tl5051350588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5051150581%_))))
                              (if (gx#stx-pair? _%tl5051350588%_)
                                  (let ((_%e5051450591%_
                                         (gx#syntax-e _%tl5051350588%_)))
                                    (let ((_%hd5051550595%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5051450591%_)))
                                          (_%tl5051650598%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5051450591%_))))
                                      (if (gx#stx-pair? _%tl5051650598%_)
                                          (let ((_%e5051750601%_
                                                 (gx#syntax-e
                                                  _%tl5051650598%_)))
                                            (let ((_%hd5051850605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5051750601%_)))
                                                  (_%tl5051950608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5051750601%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5051850605%_)
                                                  (let ((_g80995_
                                                         (gx#syntax-split-splice
                                                          _%hd5051850605%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80995_)
                           (##vector-length _g80995_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80996_ 2)))
                    (error "Context expects 2 values" _g80996_)))
              (let ((_%target5052050611%_
                     (let () (declare (not safe)) (##vector-ref _g80995_ 0)))
                    (_%tl5052250614%_
                     (let () (declare (not safe)) (##vector-ref _g80995_ 1))))
                (if (gx#stx-null? _%tl5052250614%_)
                    (letrec ((_%loop5052350617%_
                              (lambda (_%hd5052150621%_ _%body5052750624%_)
                                (if (gx#stx-pair? _%hd5052150621%_)
                                    (let ((_%e5052450627%_
                                           (gx#syntax-e _%hd5052150621%_)))
                                      (let ((_%lp-hd5052550631%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5052450627%_)))
                                            (_%lp-tl5052650634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5052450627%_))))
                                        (_%loop5052350617%_
                                         _%lp-tl5052650634%_
                                         (cons _%lp-hd5052550631%_
                                               _%body5052750624%_))))
                                    (let ((_%body5052850637%_
                                           (reverse _%body5052750624%_)))
                                      (if (gx#stx-null? _%tl5051950608%_)
                                          ((lambda (_%L50641%_
                                                    _%L50643%_
                                                    _%L50644%_
                                                    _%L50645%_
                                                    _%L50646%_
                                                    _%L50647%_
                                                    _%L50648%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50645%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50646%_ '()))
                                         (cons _%L50645%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50648%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50645%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50647%_ '()))
                               (cons _%L50644%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50643%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5068350686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5068450689%_)
                      (cons _%g5068350686%_ _%g5068450689%_))
                    '()
                    _%L50641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5052850637%_
                                           _%hd5051550595%_
                                           _%hd5051250585%_
                                           _%hd5050950575%_
                                           _%hd5050650565%_
                                           _%hd5050350555%_
                                           _%hd5050050545%_)
                                          (_%g5049050534%_
                                           _%g5049150538%_)))))))
                      (_%loop5052350617%_ _%target5052050611%_ '()))
                    (_%g5049050534%_ _%g5049150538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5049050534%_
                                                   _%g5049150538%_))))
                                          (_%g5049050534%_ _%g5049150538%_))))
                                  (_%g5049050534%_ _%g5049150538%_))))
                          (_%g5049050534%_ _%g5049150538%_))))
                  (_%g5049050534%_ _%g5049150538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5049050534%_
                                                   _%g5049150538%_))))
                                          (_%g5049050534%_ _%g5049150538%_))))
                                  (_%g5049050534%_ _%g5049150538%_)))))
                      (_%g5048950692%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50487%_
                             (let ((__obj80830 _%type50487%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80830
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80830
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80830
                                    'instance-type)))
                             _%var50481%_
                             _%checked?50485%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50484%_)))))
                 (_%expand49482%_
                  (lambda (_%var50280%_
                           _%Interface50282%_
                           _%body50283%_
                           _%checked?50284%_
                           _%checked-methods?50285%_
                           _%maybe?50286%_)
                    (let* ((_%g5028850296%_
                            (lambda (_%g5028950292%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5028950292%_)))
                           (_%g5028750473%_
                            (lambda (_%g5028950300%_)
                              ((lambda (_%L50303%_)
                                 (if _%checked?50284%_
                                     (if _%maybe?50286%_
                                         (let* ((_%g5031550330%_
                                                 (lambda (_%g5031650326%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5031650326%_)))
                                                (_%g5031450376%_
                                                 (lambda (_%g5031650334%_)
                                                   (if (gx#stx-pair?
                                                        _%g5031650334%_)
                                                       (let ((_%e5031950337%_
                                                              (gx#syntax-e
                                                               _%g5031650334%_)))
                                                         (let ((_%hd5032050341%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5031950337%_)))
                       (_%tl5032150344%_
                        (let () (declare (not safe)) (##cdr _%e5031950337%_))))
                   (if (gx#stx-pair? _%tl5032150344%_)
                       (let ((_%e5032250347%_ (gx#syntax-e _%tl5032150344%_)))
                         (let ((_%hd5032350351%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5032250347%_)))
                               (_%tl5032450354%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5032250347%_))))
                           (if (gx#stx-null? _%tl5032450354%_)
                               ((lambda (_%L50357%_ _%L50359%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50359%_
                                                    (cons (cons _%L50357%_
                                                                (cons _%L50359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50359%_
                                                                (cons _%L50303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50359%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5032350351%_
                                _%hd5032050341%_)
                               (_%g5031550330%_ _%g5031650334%_))))
                       (_%g5031550330%_ _%g5031650334%_))))
               (_%g5031550330%_ _%g5031650334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5031450376%_
                                            (list _%var50280%_
                                                  _%Interface50282%_)))
                                         (let* ((_%g5038050395%_
                                                 (lambda (_%g5038150391%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5038150391%_)))
                                                (_%g5037950439%_
                                                 (lambda (_%g5038150399%_)
                                                   (if (gx#stx-pair?
                                                        _%g5038150399%_)
                                                       (let ((_%e5038450402%_
                                                              (gx#syntax-e
                                                               _%g5038150399%_)))
                                                         (let ((_%hd5038550406%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5038450402%_)))
                       (_%tl5038650409%_
                        (let () (declare (not safe)) (##cdr _%e5038450402%_))))
                   (if (gx#stx-pair? _%tl5038650409%_)
                       (let ((_%e5038750412%_ (gx#syntax-e _%tl5038650409%_)))
                         (let ((_%hd5038850416%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5038750412%_)))
                               (_%tl5038950419%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5038750412%_))))
                           (if (gx#stx-null? _%tl5038950419%_)
                               ((lambda (_%L50422%_ _%L50424%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50424%_
                                                    (cons (cons _%L50422%_
                                                                (cons _%L50424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50303%_ '()))))
                                _%hd5038850416%_
                                _%hd5038550406%_)
                               (_%g5038050395%_ _%g5038150399%_))))
                       (_%g5038050395%_ _%g5038150399%_))))
               (_%g5038050395%_ _%g5038150399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5037950439%_
                                            (list _%var50280%_
                                                  _%Interface50282%_))))
                                     (if _%maybe?50286%_
                                         (let* ((_%g5044350451%_
                                                 (lambda (_%g5044450447%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5044450447%_)))
                                                (_%g5044250469%_
                                                 (lambda (_%g5044450455%_)
                                                   ((lambda (_%L50458%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50303%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50458%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5044450455%_))))
                                           (_%g5044250469%_ _%var50280%_))
                                         _%L50303%_)))
                               _%g5028950300%_))))
                      (_%g5028750473%_
                       (_%expand-body49480%_
                        _%var50280%_
                        _%Interface50282%_
                        _%body50283%_
                        (let ((_%$e50477%_ _%checked?50284%_))
                          (if _%$e50477%_
                              _%$e50477%_
                              _%checked-methods?50285%_))))))))
          (let* ((_%__stx7656376564%_ _%stx49477%_)
                 (_%g4948849631%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7656376564%_))))
            (let ((_%__kont7656676567%_
                   (lambda (_%L50208%_ _%L50210%_ _%L50211%_ _%L50212%_)
                     (let* ((_%g5023750245%_
                             (lambda (_%g5023850241%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5023850241%_)))
                            (_%g5023650272%_
                             (lambda (_%g5023850249%_)
                               ((lambda (_%L50252%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50212%_
                                                    (cons _%L50211%_
                                                          (cons _%L50252%_
                                                                '())))
                                              (foldr (lambda (_%g5026350266%_
                                                              _%g5026450269%_)
                                                       (cons _%g5026350266%_
                                                             _%g5026450269%_))
                                                     '()
                                                     _%L50208%_))))
                                _%g5023850249%_))))
                       (_%g5023650272%_
                        (let ((__obj80831 (gx#syntax-local-value _%L50210%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80831
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80831
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj80831
                               'identifier)))))))
                  (_%__kont7657076571%_
                   (lambda (_%L50086%_ _%L50088%_ _%L50089%_)
                     (_%expand49482%_
                      _%L50089%_
                      _%L50088%_
                      (foldr (lambda (_%g5011250115%_ _%g5011350118%_)
                               (cons _%g5011250115%_ _%g5011350118%_))
                             '()
                             _%L50086%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7657476575%_
                   (lambda (_%L49964%_ _%L49966%_ _%L49967%_)
                     (_%expand49482%_
                      _%L49967%_
                      _%L49966%_
                      (foldr (lambda (_%g4999049993%_ _%g4999149996%_)
                               (cons _%g4999049993%_ _%g4999149996%_))
                             '()
                             _%L49964%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7657876579%_
                   (lambda (_%L49842%_ _%L49844%_ _%L49845%_)
                     (_%expand49482%_
                      _%L49845%_
                      _%L49844%_
                      (foldr (lambda (_%g4986849871%_ _%g4986949874%_)
                               (cons _%g4986849871%_ _%g4986949874%_))
                             '()
                             _%L49842%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7658276583%_
                   (lambda (_%L49718%_ _%L49720%_ _%L49721%_)
                     (_%expand49482%_
                      _%L49721%_
                      _%L49720%_
                      (foldr (lambda (_%g4974649749%_ _%g4974749752%_)
                               (cons _%g4974649749%_ _%g4974749752%_))
                             '()
                             _%L49718%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7680276803%_
                      (lambda (_%e4960249638%_
                               _%hd4960349642%_
                               _%tl4960449645%_
                               _%e4960549648%_
                               _%hd4960649652%_
                               _%tl4960749655%_
                               _%e4960849658%_
                               _%hd4960949662%_
                               _%tl4961049665%_
                               _%e4961149668%_
                               _%hd4961249672%_
                               _%tl4961349675%_
                               _%e4961449678%_
                               _%hd4961549682%_
                               _%tl4961649685%_
                               _%__splice7658476585%_
                               _%target4961749688%_
                               _%tl4961949691%_)
                        (letrec ((_%loop4962049694%_
                                  (lambda (_%hd4961849698%_ _%body4962449701%_)
                                    (if (gx#stx-pair? _%hd4961849698%_)
                                        (let ((_%e4962149704%_
                                               (gx#syntax-e _%hd4961849698%_)))
                                          (let ((_%lp-tl4962349711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4962149704%_)))
                                                (_%lp-hd4962249708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4962149704%_))))
                                            (_%loop4962049694%_
                                             _%lp-tl4962349711%_
                                             (cons _%lp-hd4962249708%_
                                                   _%body4962449701%_))))
                                        (let ((_%body4962549714%_
                                               (reverse _%body4962449701%_)))
                                          (let ((_%L49718%_ _%body4962549714%_)
                                                (_%L49720%_ _%hd4961549682%_)
                                                (_%L49721%_ _%hd4960949662%_))
                                            (if (and (gx#identifier?
                                                      _%L49721%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49720%_)))
                                                (_%__kont7658276583%_
                                                 _%L49718%_
                                                 _%L49720%_
                                                 _%L49721%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))))))))
                          (_%loop4962049694%_ _%target4961749688%_ '()))))
                     (_%__match7675876759%_
                      (lambda (_%e4957549762%_
                               _%hd4957649766%_
                               _%tl4957749769%_
                               _%e4957849772%_
                               _%hd4957949776%_
                               _%tl4958049779%_
                               _%e4958149782%_
                               _%hd4958249786%_
                               _%tl4958349789%_
                               _%e4958449792%_
                               _%hd4958549796%_
                               _%tl4958649799%_
                               _%e4958749802%_
                               _%hd4958849806%_
                               _%tl4958949809%_
                               _%__splice7658076581%_
                               _%target4959049812%_
                               _%tl4959249815%_)
                        (letrec ((_%loop4959349818%_
                                  (lambda (_%hd4959149822%_ _%body4959749825%_)
                                    (if (gx#stx-pair? _%hd4959149822%_)
                                        (let ((_%e4959449828%_
                                               (gx#syntax-e _%hd4959149822%_)))
                                          (let ((_%lp-tl4959649835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4959449828%_)))
                                                (_%lp-hd4959549832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4959449828%_))))
                                            (_%loop4959349818%_
                                             _%lp-tl4959649835%_
                                             (cons _%lp-hd4959549832%_
                                                   _%body4959749825%_))))
                                        (let ((_%body4959849838%_
                                               (reverse _%body4959749825%_)))
                                          (let ((_%L49842%_ _%body4959849838%_)
                                                (_%L49844%_ _%hd4958849806%_)
                                                (_%L49845%_ _%hd4958249786%_))
                                            (if (and (gx#identifier?
                                                      _%L49845%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49844%_)))
                                                (_%__kont7657876579%_
                                                 _%L49842%_
                                                 _%L49844%_
                                                 _%L49845%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))))))))
                          (_%loop4959349818%_ _%target4959049812%_ '()))))
                     (_%__match7671476715%_
                      (lambda (_%e4954849884%_
                               _%hd4954949888%_
                               _%tl4955049891%_
                               _%e4955149894%_
                               _%hd4955249898%_
                               _%tl4955349901%_
                               _%e4955449904%_
                               _%hd4955549908%_
                               _%tl4955649911%_
                               _%e4955749914%_
                               _%hd4955849918%_
                               _%tl4955949921%_
                               _%e4956049924%_
                               _%hd4956149928%_
                               _%tl4956249931%_
                               _%__splice7657676577%_
                               _%target4956349934%_
                               _%tl4956549937%_)
                        (letrec ((_%loop4956649940%_
                                  (lambda (_%hd4956449944%_ _%body4957049947%_)
                                    (if (gx#stx-pair? _%hd4956449944%_)
                                        (let ((_%e4956749950%_
                                               (gx#syntax-e _%hd4956449944%_)))
                                          (let ((_%lp-tl4956949957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4956749950%_)))
                                                (_%lp-hd4956849954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4956749950%_))))
                                            (_%loop4956649940%_
                                             _%lp-tl4956949957%_
                                             (cons _%lp-hd4956849954%_
                                                   _%body4957049947%_))))
                                        (let ((_%body4957149960%_
                                               (reverse _%body4957049947%_)))
                                          (let ((_%L49964%_ _%body4957149960%_)
                                                (_%L49966%_ _%hd4956149928%_)
                                                (_%L49967%_ _%hd4955549908%_))
                                            (if (and (gx#identifier?
                                                      _%L49967%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49966%_)))
                                                (_%__kont7657476575%_
                                                 _%L49964%_
                                                 _%L49966%_
                                                 _%L49967%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))))))))
                          (_%loop4956649940%_ _%target4956349934%_ '()))))
                     (_%__match7667076671%_
                      (lambda (_%e4952150006%_
                               _%hd4952250010%_
                               _%tl4952350013%_
                               _%e4952450016%_
                               _%hd4952550020%_
                               _%tl4952650023%_
                               _%e4952750026%_
                               _%hd4952850030%_
                               _%tl4952950033%_
                               _%e4953050036%_
                               _%hd4953150040%_
                               _%tl4953250043%_
                               _%e4953350046%_
                               _%hd4953450050%_
                               _%tl4953550053%_
                               _%__splice7657276573%_
                               _%target4953650056%_
                               _%tl4953850059%_)
                        (letrec ((_%loop4953950062%_
                                  (lambda (_%hd4953750066%_ _%body4954350069%_)
                                    (if (gx#stx-pair? _%hd4953750066%_)
                                        (let ((_%e4954050072%_
                                               (gx#syntax-e _%hd4953750066%_)))
                                          (let ((_%lp-tl4954250079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4954050072%_)))
                                                (_%lp-hd4954150076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4954050072%_))))
                                            (_%loop4953950062%_
                                             _%lp-tl4954250079%_
                                             (cons _%lp-hd4954150076%_
                                                   _%body4954350069%_))))
                                        (let ((_%body4954450082%_
                                               (reverse _%body4954350069%_)))
                                          (let ((_%L50086%_ _%body4954450082%_)
                                                (_%L50088%_ _%hd4953450050%_)
                                                (_%L50089%_ _%hd4952850030%_))
                                            (if (and (gx#identifier?
                                                      _%L50089%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50088%_)))
                                                (_%__kont7657076571%_
                                                 _%L50086%_
                                                 _%L50088%_
                                                 _%L50089%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))))))))
                          (_%loop4953950062%_ _%target4953650056%_ '()))))
                     (_%__match7665076651%_
                      (lambda (_%e4952150006%_
                               _%hd4952250010%_
                               _%tl4952350013%_
                               _%e4952450016%_
                               _%hd4952550020%_
                               _%tl4952650023%_
                               _%e4952750026%_
                               _%hd4952850030%_
                               _%tl4952950033%_
                               _%e4953050036%_
                               _%hd4953150040%_
                               _%tl4953250043%_)
                        (if (gx#identifier? _%hd4953150040%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g80997_|
                                 _%hd4953150040%_)
                                (if (gx#stx-pair? _%tl4953250043%_)
                                    (let ((_%e4953350046%_
                                           (gx#syntax-e _%tl4953250043%_)))
                                      (let ((_%tl4953550053%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4953350046%_)))
                                            (_%hd4953450050%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4953350046%_))))
                                        (if (gx#stx-null? _%tl4953550053%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4952650023%_)
                                                (let ((_%__splice7657276573%_
                                                       (gx#syntax-split-splice
                                                        _%tl4952650023%_
                                                        '0)))
                                                  (let ((_%tl4953850059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7657276573%_
                                                            '1)))
                                                        (_%target4953650056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7657276573%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4953850059%_)
                                                        (_%__match7667076671%_
                                                         _%e4952150006%_
                                                         _%hd4952250010%_
                                                         _%tl4952350013%_
                                                         _%e4952450016%_
                                                         _%hd4952550020%_
                                                         _%tl4952650023%_
                                                         _%e4952750026%_
                                                         _%hd4952850030%_
                                                         _%tl4952950033%_
                                                         _%e4953050036%_
                                                         _%hd4953150040%_
                                                         _%tl4953250043%_
                                                         _%e4953350046%_
                                                         _%hd4953450050%_
                                                         _%tl4953550053%_
                                                         _%__splice7657276573%_
                                                         _%target4953650056%_
                                                         _%tl4953850059%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4948849631%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948849631%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948849631%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g80998_|
                                     _%hd4953150040%_)
                                    (if (gx#stx-pair? _%tl4953250043%_)
                                        (let ((_%e4956049924%_
                                               (gx#syntax-e _%tl4953250043%_)))
                                          (let ((_%tl4956249931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4956049924%_)))
                                                (_%hd4956149928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4956049924%_))))
                                            (if (gx#stx-null? _%tl4956249931%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4952650023%_)
                                                    (let ((_%__splice7657676577%_
                                                           (gx#syntax-split-splice
                                                            _%tl4952650023%_
                                                            '0)))
                                                      (let ((_%tl4956549937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7657676577%_ '1)))
                    (_%target4956349934%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7657676577%_ '0))))
                (if (gx#stx-null? _%tl4956549937%_)
                    (_%__match7671476715%_
                     _%e4952150006%_
                     _%hd4952250010%_
                     _%tl4952350013%_
                     _%e4952450016%_
                     _%hd4952550020%_
                     _%tl4952650023%_
                     _%e4952750026%_
                     _%hd4952850030%_
                     _%tl4952950033%_
                     _%e4953050036%_
                     _%hd4953150040%_
                     _%tl4953250043%_
                     _%e4956049924%_
                     _%hd4956149928%_
                     _%tl4956249931%_
                     _%__splice7657676577%_
                     _%target4956349934%_
                     _%tl4956549937%_)
                    (let () (declare (not safe)) (_%g4948849631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948849631%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4948849631%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g80999_|
                                         _%hd4953150040%_)
                                        (if (gx#stx-pair? _%tl4953250043%_)
                                            (let ((_%e4958749802%_
                                                   (gx#syntax-e
                                                    _%tl4953250043%_)))
                                              (let ((_%tl4958949809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4958749802%_)))
                                                    (_%hd4958849806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4958749802%_))))
                                                (if (gx#stx-null?
                                                     _%tl4958949809%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4952650023%_)
                                                        (let ((_%__splice7658076581%_
                                                               (gx#syntax-split-splice
                                                                _%tl4952650023%_
                                                                '0)))
                                                          (let ((_%tl4959249815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7658076581%_ '1)))
                        (_%target4959049812%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7658076581%_ '0))))
                    (if (gx#stx-null? _%tl4959249815%_)
                        (_%__match7675876759%_
                         _%e4952150006%_
                         _%hd4952250010%_
                         _%tl4952350013%_
                         _%e4952450016%_
                         _%hd4952550020%_
                         _%tl4952650023%_
                         _%e4952750026%_
                         _%hd4952850030%_
                         _%tl4952950033%_
                         _%e4953050036%_
                         _%hd4953150040%_
                         _%tl4953250043%_
                         _%e4958749802%_
                         _%hd4958849806%_
                         _%tl4958949809%_
                         _%__splice7658076581%_
                         _%target4959049812%_
                         _%tl4959249815%_)
                        (let () (declare (not safe)) (_%g4948849631%_)))))
                (let () (declare (not safe)) (_%g4948849631%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948849631%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948849631%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g81000_|
                                             _%hd4953150040%_)
                                            (if (gx#stx-pair? _%tl4953250043%_)
                                                (let ((_%e4961449678%_
                                                       (gx#syntax-e
                                                        _%tl4953250043%_)))
                                                  (let ((_%tl4961649685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4961449678%_)))
                                                        (_%hd4961549682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4961449678%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4961649685%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4952650023%_)
                                                            (let ((_%__splice7658476585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4952650023%_ '0)))
                      (let ((_%tl4961949691%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7658476585%_ '1)))
                            (_%target4961749688%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7658476585%_ '0))))
                        (if (gx#stx-null? _%tl4961949691%_)
                            (_%__match7680276803%_
                             _%e4952150006%_
                             _%hd4952250010%_
                             _%tl4952350013%_
                             _%e4952450016%_
                             _%hd4952550020%_
                             _%tl4952650023%_
                             _%e4952750026%_
                             _%hd4952850030%_
                             _%tl4952950033%_
                             _%e4953050036%_
                             _%hd4953150040%_
                             _%tl4953250043%_
                             _%e4961449678%_
                             _%hd4961549682%_
                             _%tl4961649685%_
                             _%__splice7658476585%_
                             _%target4961749688%_
                             _%tl4961949691%_)
                            (let () (declare (not safe)) (_%g4948849631%_)))))
                    (let () (declare (not safe)) (_%g4948849631%_)))
                (let () (declare (not safe)) (_%g4948849631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948849631%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948849631%_))))))
                            (let () (declare (not safe)) (_%g4948849631%_)))))
                     (_%__match7662676627%_
                      (lambda (_%e4949450128%_
                               _%hd4949550132%_
                               _%tl4949650135%_
                               _%e4949750138%_
                               _%hd4949850142%_
                               _%tl4949950145%_
                               _%e4950050148%_
                               _%hd4950150152%_
                               _%tl4950250155%_
                               _%e4950350158%_
                               _%hd4950450162%_
                               _%tl4950550165%_
                               _%e4950650168%_
                               _%hd4950750172%_
                               _%tl4950850175%_
                               _%__splice7656876569%_
                               _%target4950950178%_
                               _%tl4951150181%_)
                        (letrec ((_%loop4951250184%_
                                  (lambda (_%hd4951050188%_ _%body4951650191%_)
                                    (if (gx#stx-pair? _%hd4951050188%_)
                                        (let ((_%e4951350194%_
                                               (gx#syntax-e _%hd4951050188%_)))
                                          (let ((_%lp-tl4951550201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951350194%_)))
                                                (_%lp-hd4951450198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951350194%_))))
                                            (_%loop4951250184%_
                                             _%lp-tl4951550201%_
                                             (cons _%lp-hd4951450198%_
                                                   _%body4951650191%_))))
                                        (let ((_%body4951750204%_
                                               (reverse _%body4951650191%_)))
                                          (let ((_%L50208%_ _%body4951750204%_)
                                                (_%L50210%_ _%hd4950750172%_)
                                                (_%L50211%_ _%hd4950450162%_)
                                                (_%L50212%_ _%hd4950150152%_))
                                            (if (let ((__tmp81001
                                                       (gx#syntax-local-value
                                                        _%L50210%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp81001))
                                                (_%__kont7656676567%_
                                                 _%L50208%_
                                                 _%L50210%_
                                                 _%L50211%_
                                                 _%L50212%_)
                                                (_%__match7665076651%_
                                                 _%e4949450128%_
                                                 _%hd4949550132%_
                                                 _%tl4949650135%_
                                                 _%e4949750138%_
                                                 _%hd4949850142%_
                                                 _%tl4949950145%_
                                                 _%e4950050148%_
                                                 _%hd4950150152%_
                                                 _%tl4950250155%_
                                                 _%e4950350158%_
                                                 _%hd4950450162%_
                                                 _%tl4950550165%_))))))))
                          (_%loop4951250184%_ _%target4950950178%_ '())))))
                (if (gx#stx-pair? _%__stx7656376564%_)
                    (let ((_%e4949450128%_ (gx#syntax-e _%__stx7656376564%_)))
                      (let ((_%tl4949650135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4949450128%_)))
                            (_%hd4949550132%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4949450128%_))))
                        (if (gx#stx-pair? _%tl4949650135%_)
                            (let ((_%e4949750138%_
                                   (gx#syntax-e _%tl4949650135%_)))
                              (let ((_%tl4949950145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4949750138%_)))
                                    (_%hd4949850142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4949750138%_))))
                                (if (gx#stx-pair? _%hd4949850142%_)
                                    (let ((_%e4950050148%_
                                           (gx#syntax-e _%hd4949850142%_)))
                                      (let ((_%tl4950250155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4950050148%_)))
                                            (_%hd4950150152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4950050148%_))))
                                        (if (gx#stx-pair? _%tl4950250155%_)
                                            (let ((_%e4950350158%_
                                                   (gx#syntax-e
                                                    _%tl4950250155%_)))
                                              (let ((_%tl4950550165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4950350158%_)))
                                                    (_%hd4950450162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4950350158%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4950550165%_)
                                                    (let ((_%e4950650168%_
                                                           (gx#syntax-e
                                                            _%tl4950550165%_)))
                                                      (let ((_%tl4950850175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4950650168%_)))
                    (_%hd4950750172%_
                     (let () (declare (not safe)) (##car _%e4950650168%_))))
                (if (gx#stx-null? _%tl4950850175%_)
                    (if (gx#stx-pair/null? _%tl4949950145%_)
                        (let ((_%__splice7656876569%_
                               (gx#syntax-split-splice _%tl4949950145%_ '0)))
                          (let ((_%tl4951150181%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7656876569%_ '1)))
                                (_%target4950950178%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7656876569%_ '0))))
                            (if (gx#stx-null? _%tl4951150181%_)
                                (_%__match7662676627%_
                                 _%e4949450128%_
                                 _%hd4949550132%_
                                 _%tl4949650135%_
                                 _%e4949750138%_
                                 _%hd4949850142%_
                                 _%tl4949950145%_
                                 _%e4950050148%_
                                 _%hd4950150152%_
                                 _%tl4950250155%_
                                 _%e4950350158%_
                                 _%hd4950450162%_
                                 _%tl4950550165%_
                                 _%e4950650168%_
                                 _%hd4950750172%_
                                 _%tl4950850175%_
                                 _%__splice7656876569%_
                                 _%target4950950178%_
                                 _%tl4951150181%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4948849631%_)))))
                        (let () (declare (not safe)) (_%g4948849631%_)))
                    (let () (declare (not safe)) (_%g4948849631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948849631%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948849631%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948849631%_)))))
                            (let () (declare (not safe)) (_%g4948849631%_)))))
                    (let () (declare (not safe)) (_%g4948849631%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50702%_)
        (let* ((_%__stx7680576806%_ _%stx50702%_)
               (_%g5070750767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7680576806%_))))
          (let ((_%__kont7680876809%_
                 (lambda (_%L51329%_ _%L51331%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51331%_ '()))
                               (foldr (lambda (_%g5134751350%_ _%g5134851353%_)
                                        (cons _%g5134751350%_ _%g5134851353%_))
                                      '()
                                      _%L51329%_)))))
                (_%__kont7681276813%_
                 (lambda (_%L50915%_ _%L50917%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50917%_)
                       (let* ((_%g5093750944%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50702%_
                                _%L50917%_))
                              (_%E5093950950%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5093750944%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5094051248%_
                               (lambda (_%parts50954%_ _%var50956%_)
                                 (let ((_%$e50958%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50956%_))))
                                   (if _%$e50958%_
                                       ((lambda (_%te50962%_)
                                          (let _%loop50965%_ ((_%parts50968%_
                                                               _%parts50954%_)
                                                              (_%type50970%_
                                                               (##direct-structure-ref
                                                                _%te50962%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50971%_
                                                               _%var50956%_)
                                                              (_%checked-method?50972%_
                                                               (##direct-structure-ref
                                                                _%te50962%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50973%_
                                                               '#f))
                                            (let* ((_%parts5097450982%_
                                                    _%parts50968%_)
                                                   (_%else5097651043%_
                                                    (lambda ()
                                                      (let* ((_%g5099451002%_
                                                              (lambda (_%g5099550998%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5099550998%_)))
                     (_%g5099351039%_
                      (lambda (_%g5099551006%_)
                        ((lambda (_%L51009%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L51009%_
                                       (foldr (lambda (_%g5103051033%_
                                                       _%g5103151036%_)
                                                (cons _%g5103051033%_
                                                      _%g5103151036%_))
                                              '()
                                              _%L50915%_))))
                         _%g5099551006%_))))
                (_%g5099351039%_ _%object50971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5097851222%_
                                                    (lambda (_%rest51047%_
                                                             _%part51049%_)
                                                      (if (and (not _%nil-check?50973%_)
                                                               (let ((__tmp81002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51049%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp81002)))
                  (let ((_%str51053%_ (symbol->string _%part51049%_)))
                    (_%loop50965%_
                     (cons (let ((__tmp81003
                                  (substring
                                   _%str51053%_
                                   '1
                                   (string-length _%str51053%_))))
                             (declare (not safe))
                             (##string->symbol __tmp81003))
                           _%rest51047%_)
                     _%type50970%_
                     _%object50971%_
                     _%checked-method?50972%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50970%_))
                      (let* ((_%g5105851073%_
                              (lambda (_%g5105951069%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5105951069%_)))
                             (_%g5105751142%_
                              (lambda (_%g5105951077%_)
                                (if (gx#stx-pair? _%g5105951077%_)
                                    (let ((_%e5106251080%_
                                           (gx#syntax-e _%g5105951077%_)))
                                      (let ((_%hd5106351084%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5106251080%_)))
                                            (_%tl5106451087%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5106251080%_))))
                                        (if (gx#stx-pair? _%tl5106451087%_)
                                            (let ((_%e5106551090%_
                                                   (gx#syntax-e
                                                    _%tl5106451087%_)))
                                              (let ((_%hd5106651094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5106551090%_)))
                                                    (_%tl5106751097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5106551090%_))))
                                                (if (gx#stx-null?
                                                     _%tl5106751097%_)
                                                    ((lambda (_%L51100%_
                                                              _%L51102%_)
                                                       (if (null? _%rest51047%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51100%_ (cons _%L51102%_ '()))
                               (foldr (lambda (_%g5112151124%_ _%g5112251127%_)
                                        (cons _%g5112151124%_ _%g5112251127%_))
                                      '()
                                      _%L50915%_)))
                   (let ((_%$e51130%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50970%_
                           _%part51049%_)))
                     (if _%$e51130%_
                         ((lambda (_%slot-type51134%_)
                            (let ((_%slot-type51137%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50702%_
                                      _%slot-type51134%_))))
                              (_%loop50965%_
                               _%rest51047%_
                               _%slot-type51137%_
                               (cons _%L51100%_ (cons _%L51102%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50970%_
                                _%part51049%_)
                               '#f)))
                          _%$e51130%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50702%_
                          _%L50917%_
                          _%part51049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5106651094%_
                                                     _%hd5106351084%_)
                                                    (_%g5105851073%_
                                                     _%g5105951077%_))))
                                            (_%g5105851073%_
                                             _%g5105951077%_))))
                                    (_%g5105851073%_ _%g5105951077%_)))))
                        (_%g5105751142%_
                         (list (if _%nil-check?50973%_
                                   (cons 'check-nil!
                                         (cons _%object50971%_ '()))
                                   _%object50971%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50702%_
                                _%type50970%_
                                _%part51049%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50970%_))
                          (if (null? _%rest51047%_)
                              (let* ((_%g5114851163%_
                                      (lambda (_%g5114951159%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5114951159%_)))
                                     (_%g5114751216%_
                                      (lambda (_%g5114951167%_)
                                        (if (gx#stx-pair? _%g5114951167%_)
                                            (let ((_%e5115251170%_
                                                   (gx#syntax-e
                                                    _%g5114951167%_)))
                                              (let ((_%hd5115351174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5115251170%_)))
                                                    (_%tl5115451177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5115251170%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5115451177%_)
                                                    (let ((_%e5115551180%_
                                                           (gx#syntax-e
                                                            _%tl5115451177%_)))
                                                      (let ((_%hd5115651184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5115551180%_)))
                    (_%tl5115751187%_
                     (let () (declare (not safe)) (##cdr _%e5115551180%_))))
                (if (gx#stx-null? _%tl5115751187%_)
                    ((lambda (_%L51190%_ _%L51192%_)
                       (cons _%L51190%_
                             (cons _%L51192%_
                                   (foldr (lambda (_%g5120751210%_
                                                   _%g5120851213%_)
                                            (cons _%g5120751210%_
                                                  _%g5120851213%_))
                                          '()
                                          _%L50915%_))))
                     _%hd5115651184%_
                     _%hd5115351174%_)
                    (_%g5114851163%_ _%g5114951167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5114851163%_
                                                     _%g5114951167%_))))
                                            (_%g5114851163%_
                                             _%g5114951167%_)))))
                                (_%g5114751216%_
                                 (list (if _%nil-check?50973%_
                                           (cons 'check-nil!
                                                 (cons _%object50971%_ '()))
                                           _%object50971%_)
                                       (gx#stx-identifier
                                        _%L50917%_
                                        (if _%checked-method?50972%_ '"" '"&")
                                        (let ((__obj80832 _%type50970%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj80832
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj80832
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/contract~InterfaceInfo#interface-info::t
                                               __obj80832
                                               'name)))
                                        '"-"
                                        _%part51049%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50702%_
                               _%L50917%_
                               _%part51049%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50702%_
                           _%type50970%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5097450982%_))
                                                  (let ((_%hd5097951226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5097450982%_)))
                                                        (_%tl5098051229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5097450982%_))))
                                                    (let* ((_%part51232%_
                                                            _%hd5097951226%_)
                                                           (_%rest51235%_
                                                            _%tl5098051229%_))
                                                      (_%K5097851222%_
                                                       _%rest51235%_
                                                       _%part51232%_)))
                                                  (_%else5097651043%_)))))
                                        _%$e50958%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50917%_
                                                   (foldr (lambda (_%g5123951242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5124051245%_)
                    (cons _%g5123951242%_ _%g5124051245%_))
                  '()
                  _%L50915%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5093750944%_))
                             (let ((_%hd5094151252%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5093750944%_)))
                                   (_%tl5094251255%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5093750944%_))))
                               (let* ((_%var51258%_ _%hd5094151252%_)
                                      (_%parts51261%_ _%tl5094251255%_))
                                 (_%K5094051248%_
                                  _%parts51261%_
                                  _%var51258%_)))
                             (_%E5093950950%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50917%_
                                   (foldr (lambda (_%g5126351266%_
                                                   _%g5126451269%_)
                                            (cons _%g5126351266%_
                                                  _%g5126451269%_))
                                          '()
                                          _%L50915%_))))))
                (_%__kont7681676817%_
                 (lambda (_%L50814%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5082950832%_ _%g5083050835%_)
                                  (cons _%g5082950832%_ _%g5083050835%_))
                                '()
                                _%L50814%_)))))
            (let* ((_%__match7689276893%_
                    (lambda (_%e5075050774%_
                             _%hd5075150778%_
                             _%tl5075250781%_
                             _%__splice7681876819%_
                             _%target5075350784%_
                             _%tl5075550787%_)
                      (letrec ((_%loop5075650790%_
                                (lambda (_%hd5075450794%_ _%arg5076050797%_)
                                  (if (gx#stx-pair? _%hd5075450794%_)
                                      (let ((_%e5075750800%_
                                             (gx#syntax-e _%hd5075450794%_)))
                                        (let ((_%lp-tl5075950807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5075750800%_)))
                                              (_%lp-hd5075850804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5075750800%_))))
                                          (_%loop5075650790%_
                                           _%lp-tl5075950807%_
                                           (cons _%lp-hd5075850804%_
                                                 _%arg5076050797%_))))
                                      (let ((_%arg5076150810%_
                                             (reverse _%arg5076050797%_)))
                                        (_%__kont7681676817%_
                                         _%arg5076150810%_))))))
                        (_%loop5075650790%_ _%target5075350784%_ '()))))
                   (_%__match7687876879%_
                    (lambda (_%e5072850845%_
                             _%hd5072950849%_
                             _%tl5073050852%_
                             _%e5073150855%_
                             _%hd5073250859%_
                             _%tl5073350862%_
                             _%e5073450865%_
                             _%hd5073550869%_
                             _%tl5073650872%_
                             _%e5073750875%_
                             _%hd5073850879%_
                             _%tl5073950882%_
                             _%__splice7681476815%_
                             _%target5074050885%_
                             _%tl5074250888%_)
                      (letrec ((_%loop5074350891%_
                                (lambda (_%hd5074150895%_ _%rand5074750898%_)
                                  (if (gx#stx-pair? _%hd5074150895%_)
                                      (let ((_%e5074450901%_
                                             (gx#syntax-e _%hd5074150895%_)))
                                        (let ((_%lp-tl5074650908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5074450901%_)))
                                              (_%lp-hd5074550905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5074450901%_))))
                                          (_%loop5074350891%_
                                           _%lp-tl5074650908%_
                                           (cons _%lp-hd5074550905%_
                                                 _%rand5074750898%_))))
                                      (let ((_%rand5074850911%_
                                             (reverse _%rand5074750898%_)))
                                        (_%__kont7681276813%_
                                         _%rand5074850911%_
                                         _%hd5073850879%_))))))
                        (_%loop5074350891%_ _%target5074050885%_ '()))))
                   (_%__match7685276853%_
                    (lambda (_%e5072850845%_
                             _%hd5072950849%_
                             _%tl5073050852%_
                             _%e5073150855%_
                             _%hd5073250859%_
                             _%tl5073350862%_)
                      (if (gx#stx-pair? _%hd5073250859%_)
                          (let ((_%e5073450865%_
                                 (gx#syntax-e _%hd5073250859%_)))
                            (let ((_%tl5073650872%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5073450865%_)))
                                  (_%hd5073550869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5073450865%_))))
                              (if (gx#identifier? _%hd5073550869%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g81004_|
                                       _%hd5073550869%_)
                                      (if (gx#stx-pair? _%tl5073650872%_)
                                          (let ((_%e5073750875%_
                                                 (gx#syntax-e
                                                  _%tl5073650872%_)))
                                            (let ((_%tl5073950882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5073750875%_)))
                                                  (_%hd5073850879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5073750875%_))))
                                              (if (gx#stx-null?
                                                   _%tl5073950882%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5073350862%_)
                                                      (let ((_%__splice7681476815%_
                                                             (gx#syntax-split-splice
                                                              _%tl5073350862%_
                                                              '0)))
                                                        (let ((_%tl5074250888%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7681476815%_ '1)))
                      (_%target5074050885%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7681476815%_ '0))))
                  (if (gx#stx-null? _%tl5074250888%_)
                      (_%__match7687876879%_
                       _%e5072850845%_
                       _%hd5072950849%_
                       _%tl5073050852%_
                       _%e5073150855%_
                       _%hd5073250859%_
                       _%tl5073350862%_
                       _%e5073450865%_
                       _%hd5073550869%_
                       _%tl5073650872%_
                       _%e5073750875%_
                       _%hd5073850879%_
                       _%tl5073950882%_
                       _%__splice7681476815%_
                       _%target5074050885%_
                       _%tl5074250888%_)
                      (if (gx#stx-pair/null? _%tl5073050852%_)
                          (let ((_%__splice7681876819%_
                                 (gx#syntax-split-splice _%tl5073050852%_ '0)))
                            (let ((_%tl5075550787%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7681876819%_ '1)))
                                  (_%target5075350784%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7681876819%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075550787%_)
                                  (_%__match7689276893%_
                                   _%e5072850845%_
                                   _%hd5072950849%_
                                   _%tl5073050852%_
                                   _%__splice7681876819%_
                                   _%target5075350784%_
                                   _%tl5075550787%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070750767%_)))))
                          (let () (declare (not safe)) (_%g5070750767%_))))))
              (if (gx#stx-pair/null? _%tl5073050852%_)
                  (let ((_%__splice7681876819%_
                         (gx#syntax-split-splice _%tl5073050852%_ '0)))
                    (let ((_%tl5075550787%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '1)))
                          (_%target5075350784%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '0))))
                      (if (gx#stx-null? _%tl5075550787%_)
                          (_%__match7689276893%_
                           _%e5072850845%_
                           _%hd5072950849%_
                           _%tl5073050852%_
                           _%__splice7681876819%_
                           _%target5075350784%_
                           _%tl5075550787%_)
                          (let () (declare (not safe)) (_%g5070750767%_)))))
                  (let () (declare (not safe)) (_%g5070750767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5073050852%_)
                                                      (let ((_%__splice7681876819%_
                                                             (gx#syntax-split-splice
                                                              _%tl5073050852%_
                                                              '0)))
                                                        (let ((_%tl5075550787%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7681876819%_ '1)))
                      (_%target5075350784%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7681876819%_ '0))))
                  (if (gx#stx-null? _%tl5075550787%_)
                      (_%__match7689276893%_
                       _%e5072850845%_
                       _%hd5072950849%_
                       _%tl5073050852%_
                       _%__splice7681876819%_
                       _%target5075350784%_
                       _%tl5075550787%_)
                      (let () (declare (not safe)) (_%g5070750767%_)))))
              (let () (declare (not safe)) (_%g5070750767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5073050852%_)
                                              (let ((_%__splice7681876819%_
                                                     (gx#syntax-split-splice
                                                      _%tl5073050852%_
                                                      '0)))
                                                (let ((_%tl5075550787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7681876819%_
                                                          '1)))
                                                      (_%target5075350784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7681876819%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5075550787%_)
                                                      (_%__match7689276893%_
                                                       _%e5072850845%_
                                                       _%hd5072950849%_
                                                       _%tl5073050852%_
                                                       _%__splice7681876819%_
                                                       _%target5075350784%_
                                                       _%tl5075550787%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5070750767%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070750767%_))))
                                      (if (gx#stx-pair/null? _%tl5073050852%_)
                                          (let ((_%__splice7681876819%_
                                                 (gx#syntax-split-splice
                                                  _%tl5073050852%_
                                                  '0)))
                                            (let ((_%tl5075550787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7681876819%_
                                                      '1)))
                                                  (_%target5075350784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7681876819%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075550787%_)
                                                  (_%__match7689276893%_
                                                   _%e5072850845%_
                                                   _%hd5072950849%_
                                                   _%tl5073050852%_
                                                   _%__splice7681876819%_
                                                   _%target5075350784%_
                                                   _%tl5075550787%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070750767%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070750767%_))))
                                  (if (gx#stx-pair/null? _%tl5073050852%_)
                                      (let ((_%__splice7681876819%_
                                             (gx#syntax-split-splice
                                              _%tl5073050852%_
                                              '0)))
                                        (let ((_%tl5075550787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7681876819%_
                                                  '1)))
                                              (_%target5075350784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7681876819%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5075550787%_)
                                              (_%__match7689276893%_
                                               _%e5072850845%_
                                               _%hd5072950849%_
                                               _%tl5073050852%_
                                               _%__splice7681876819%_
                                               _%target5075350784%_
                                               _%tl5075550787%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070750767%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070750767%_))))))
                          (if (gx#stx-pair/null? _%tl5073050852%_)
                              (let ((_%__splice7681876819%_
                                     (gx#syntax-split-splice
                                      _%tl5073050852%_
                                      '0)))
                                (let ((_%tl5075550787%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '1)))
                                      (_%target5075350784%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075550787%_)
                                      (_%__match7689276893%_
                                       _%e5072850845%_
                                       _%hd5072950849%_
                                       _%tl5073050852%_
                                       _%__splice7681876819%_
                                       _%target5075350784%_
                                       _%tl5075550787%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070750767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070750767%_))))))
                   (_%__match7684076841%_
                    (lambda (_%e5071151279%_
                             _%hd5071251283%_
                             _%tl5071351286%_
                             _%e5071451289%_
                             _%hd5071551293%_
                             _%tl5071651296%_
                             _%__splice7681076811%_
                             _%target5071751299%_
                             _%tl5071951302%_)
                      (letrec ((_%loop5072051305%_
                                (lambda (_%hd5071851309%_ _%rand5072451312%_)
                                  (if (gx#stx-pair? _%hd5071851309%_)
                                      (let ((_%e5072151315%_
                                             (gx#syntax-e _%hd5071851309%_)))
                                        (let ((_%lp-tl5072351322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5072151315%_)))
                                              (_%lp-hd5072251319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5072151315%_))))
                                          (_%loop5072051305%_
                                           _%lp-tl5072351322%_
                                           (cons _%lp-hd5072251319%_
                                                 _%rand5072451312%_))))
                                      (let ((_%rand5072551325%_
                                             (reverse _%rand5072451312%_)))
                                        (let ((_%L51329%_ _%rand5072551325%_)
                                              (_%L51331%_ _%hd5071551293%_))
                                          (if (gx#identifier? _%L51331%_)
                                              (_%__kont7680876809%_
                                               _%L51329%_
                                               _%L51331%_)
                                              (_%__match7685276853%_
                                               _%e5071151279%_
                                               _%hd5071251283%_
                                               _%tl5071351286%_
                                               _%e5071451289%_
                                               _%hd5071551293%_
                                               _%tl5071651296%_))))))))
                        (_%loop5072051305%_ _%target5071751299%_ '())))))
              (if (gx#stx-pair? _%__stx7680576806%_)
                  (let ((_%e5071151279%_ (gx#syntax-e _%__stx7680576806%_)))
                    (let ((_%tl5071351286%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5071151279%_)))
                          (_%hd5071251283%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5071151279%_))))
                      (if (gx#stx-pair? _%tl5071351286%_)
                          (let ((_%e5071451289%_
                                 (gx#syntax-e _%tl5071351286%_)))
                            (let ((_%tl5071651296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5071451289%_)))
                                  (_%hd5071551293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5071451289%_))))
                              (if (gx#stx-pair/null? _%tl5071651296%_)
                                  (let ((_%__splice7681076811%_
                                         (gx#syntax-split-splice
                                          _%tl5071651296%_
                                          '0)))
                                    (let ((_%tl5071951302%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7681076811%_
                                              '1)))
                                          (_%target5071751299%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7681076811%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5071951302%_)
                                          (_%__match7684076841%_
                                           _%e5071151279%_
                                           _%hd5071251283%_
                                           _%tl5071351286%_
                                           _%e5071451289%_
                                           _%hd5071551293%_
                                           _%tl5071651296%_
                                           _%__splice7681076811%_
                                           _%target5071751299%_
                                           _%tl5071951302%_)
                                          (if (gx#stx-pair? _%hd5071551293%_)
                                              (let ((_%e5073450865%_
                                                     (gx#syntax-e
                                                      _%hd5071551293%_)))
                                                (let ((_%tl5073650872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5073450865%_)))
                                                      (_%hd5073550869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5073450865%_))))
                                                  (if (gx#identifier?
                                                       _%hd5073550869%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g81004_|
                                                           _%hd5073550869%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5073650872%_)
                                                              (let ((_%e5073750875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5073650872%_)))
                        (let ((_%tl5073950882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5073750875%_)))
                              (_%hd5073850879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5073750875%_))))
                          (if (gx#stx-pair/null? _%tl5071351286%_)
                              (let ((_%__splice7681876819%_
                                     (gx#syntax-split-splice
                                      _%tl5071351286%_
                                      '0)))
                                (let ((_%tl5075550787%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '1)))
                                      (_%target5075350784%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075550787%_)
                                      (_%__match7689276893%_
                                       _%e5071151279%_
                                       _%hd5071251283%_
                                       _%tl5071351286%_
                                       _%__splice7681876819%_
                                       _%target5075350784%_
                                       _%tl5075550787%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070750767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070750767%_)))))
                      (if (gx#stx-pair/null? _%tl5071351286%_)
                          (let ((_%__splice7681876819%_
                                 (gx#syntax-split-splice _%tl5071351286%_ '0)))
                            (let ((_%tl5075550787%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7681876819%_ '1)))
                                  (_%target5075350784%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7681876819%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075550787%_)
                                  (_%__match7689276893%_
                                   _%e5071151279%_
                                   _%hd5071251283%_
                                   _%tl5071351286%_
                                   _%__splice7681876819%_
                                   _%target5075350784%_
                                   _%tl5075550787%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070750767%_)))))
                          (let () (declare (not safe)) (_%g5070750767%_))))
                  (if (gx#stx-pair/null? _%tl5071351286%_)
                      (let ((_%__splice7681876819%_
                             (gx#syntax-split-splice _%tl5071351286%_ '0)))
                        (let ((_%tl5075550787%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7681876819%_ '1)))
                              (_%target5075350784%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7681876819%_ '0))))
                          (if (gx#stx-null? _%tl5075550787%_)
                              (_%__match7689276893%_
                               _%e5071151279%_
                               _%hd5071251283%_
                               _%tl5071351286%_
                               _%__splice7681876819%_
                               _%target5075350784%_
                               _%tl5075550787%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070750767%_)))))
                      (let () (declare (not safe)) (_%g5070750767%_))))
              (if (gx#stx-pair/null? _%tl5071351286%_)
                  (let ((_%__splice7681876819%_
                         (gx#syntax-split-splice _%tl5071351286%_ '0)))
                    (let ((_%tl5075550787%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '1)))
                          (_%target5075350784%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '0))))
                      (if (gx#stx-null? _%tl5075550787%_)
                          (_%__match7689276893%_
                           _%e5071151279%_
                           _%hd5071251283%_
                           _%tl5071351286%_
                           _%__splice7681876819%_
                           _%target5075350784%_
                           _%tl5075550787%_)
                          (let () (declare (not safe)) (_%g5070750767%_)))))
                  (let () (declare (not safe)) (_%g5070750767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5071351286%_)
                                                  (let ((_%__splice7681876819%_
                                                         (gx#syntax-split-splice
                                                          _%tl5071351286%_
                                                          '0)))
                                                    (let ((_%tl5075550787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7681876819%_
                                                              '1)))
                                                          (_%target5075350784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7681876819%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075550787%_)
                                                          (_%__match7689276893%_
                                                           _%e5071151279%_
                                                           _%hd5071251283%_
                                                           _%tl5071351286%_
                                                           _%__splice7681876819%_
                                                           _%target5075350784%_
                                                           _%tl5075550787%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070750767%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070750767%_)))))))
                                  (if (gx#stx-pair? _%hd5071551293%_)
                                      (let ((_%e5073450865%_
                                             (gx#syntax-e _%hd5071551293%_)))
                                        (let ((_%tl5073650872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073450865%_)))
                                              (_%hd5073550869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073450865%_))))
                                          (if (gx#identifier? _%hd5073550869%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g81004_|
                                                   _%hd5073550869%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5073650872%_)
                                                      (let ((_%e5073750875%_
                                                             (gx#syntax-e
                                                              _%tl5073650872%_)))
                                                        (let ((_%tl5073950882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5073750875%_)))
                      (_%hd5073850879%_
                       (let () (declare (not safe)) (##car _%e5073750875%_))))
                  (if (gx#stx-pair/null? _%tl5071351286%_)
                      (let ((_%__splice7681876819%_
                             (gx#syntax-split-splice _%tl5071351286%_ '0)))
                        (let ((_%tl5075550787%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7681876819%_ '1)))
                              (_%target5075350784%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7681876819%_ '0))))
                          (if (gx#stx-null? _%tl5075550787%_)
                              (_%__match7689276893%_
                               _%e5071151279%_
                               _%hd5071251283%_
                               _%tl5071351286%_
                               _%__splice7681876819%_
                               _%target5075350784%_
                               _%tl5075550787%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070750767%_)))))
                      (let () (declare (not safe)) (_%g5070750767%_)))))
              (if (gx#stx-pair/null? _%tl5071351286%_)
                  (let ((_%__splice7681876819%_
                         (gx#syntax-split-splice _%tl5071351286%_ '0)))
                    (let ((_%tl5075550787%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '1)))
                          (_%target5075350784%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7681876819%_ '0))))
                      (if (gx#stx-null? _%tl5075550787%_)
                          (_%__match7689276893%_
                           _%e5071151279%_
                           _%hd5071251283%_
                           _%tl5071351286%_
                           _%__splice7681876819%_
                           _%target5075350784%_
                           _%tl5075550787%_)
                          (let () (declare (not safe)) (_%g5070750767%_)))))
                  (let () (declare (not safe)) (_%g5070750767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5071351286%_)
                                                      (let ((_%__splice7681876819%_
                                                             (gx#syntax-split-splice
                                                              _%tl5071351286%_
                                                              '0)))
                                                        (let ((_%tl5075550787%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7681876819%_ '1)))
                      (_%target5075350784%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7681876819%_ '0))))
                  (if (gx#stx-null? _%tl5075550787%_)
                      (_%__match7689276893%_
                       _%e5071151279%_
                       _%hd5071251283%_
                       _%tl5071351286%_
                       _%__splice7681876819%_
                       _%target5075350784%_
                       _%tl5075550787%_)
                      (let () (declare (not safe)) (_%g5070750767%_)))))
              (let () (declare (not safe)) (_%g5070750767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5071351286%_)
                                                  (let ((_%__splice7681876819%_
                                                         (gx#syntax-split-splice
                                                          _%tl5071351286%_
                                                          '0)))
                                                    (let ((_%tl5075550787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7681876819%_
                                                              '1)))
                                                          (_%target5075350784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7681876819%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075550787%_)
                                                          (_%__match7689276893%_
                                                           _%e5071151279%_
                                                           _%hd5071251283%_
                                                           _%tl5071351286%_
                                                           _%__splice7681876819%_
                                                           _%target5075350784%_
                                                           _%tl5075550787%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070750767%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070750767%_))))))
                                      (if (gx#stx-pair/null? _%tl5071351286%_)
                                          (let ((_%__splice7681876819%_
                                                 (gx#syntax-split-splice
                                                  _%tl5071351286%_
                                                  '0)))
                                            (let ((_%tl5075550787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7681876819%_
                                                      '1)))
                                                  (_%target5075350784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7681876819%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075550787%_)
                                                  (_%__match7689276893%_
                                                   _%e5071151279%_
                                                   _%hd5071251283%_
                                                   _%tl5071351286%_
                                                   _%__splice7681876819%_
                                                   _%target5075350784%_
                                                   _%tl5075550787%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070750767%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070750767%_)))))))
                          (if (gx#stx-pair/null? _%tl5071351286%_)
                              (let ((_%__splice7681876819%_
                                     (gx#syntax-split-splice
                                      _%tl5071351286%_
                                      '0)))
                                (let ((_%tl5075550787%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '1)))
                                      (_%target5075350784%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7681876819%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075550787%_)
                                      (_%__match7689276893%_
                                       _%e5071151279%_
                                       _%hd5071251283%_
                                       _%tl5071351286%_
                                       _%__splice7681876819%_
                                       _%target5075350784%_
                                       _%tl5075550787%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070750767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070750767%_))))))
                  (let () (declare (not safe)) (_%g5070750767%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51363%_)
        (let* ((_%__stx7689576896%_ _%stx51363%_)
               (_%g5136751388%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7689576896%_))))
          (let ((_%__kont7689876899%_
                 (lambda (_%L51456%_)
                   (let* ((_%g5146851475%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51363%_
                            _%L51456%_))
                          (_%E5147051481%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5146851475%_
                                    '([var . parts]))
                             (void)))
                          (_%K5147151697%_
                           (lambda (_%parts51485%_ _%var51487%_)
                             (let ((_%$e51489%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51487%_))))
                               (if _%$e51489%_
                                   ((lambda (_%te51493%_)
                                      (let _%loop51496%_ ((_%parts51499%_
                                                           _%parts51485%_)
                                                          (_%type51501%_
                                                           (##direct-structure-ref
                                                            _%te51493%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51502%_
                                                           _%var51487%_)
                                                          (_%nil-check?51503%_
                                                           '#f))
                                        (let* ((_%parts5150451512%_
                                                _%parts51499%_)
                                               (_%else5150651524%_
                                                (lambda () _%object51502%_))
                                               (_%K5150851679%_
                                                (lambda (_%rest51528%_
                                                         _%part51530%_)
                                                  (if (and (not _%nil-check?51503%_)
                                                           (let ((__tmp81005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51530%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp81005)))
              (let ((_%str51534%_ (symbol->string _%part51530%_)))
                (_%loop51496%_
                 (cons (let ((__tmp81006
                              (substring
                               _%str51534%_
                               '1
                               (string-length _%str51534%_))))
                         (declare (not safe))
                         (##string->symbol __tmp81006))
                       _%rest51528%_)
                 _%type51501%_
                 _%object51502%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51501%_))
                  (let* ((_%g5153951554%_
                          (lambda (_%g5154051550%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5154051550%_)))
                         (_%g5153851671%_
                          (lambda (_%g5154051558%_)
                            (if (gx#stx-pair? _%g5154051558%_)
                                (let ((_%e5154351561%_
                                       (gx#syntax-e _%g5154051558%_)))
                                  (let ((_%hd5154451565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5154351561%_)))
                                        (_%tl5154551568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5154351561%_))))
                                    (if (gx#stx-pair? _%tl5154551568%_)
                                        (let ((_%e5154651571%_
                                               (gx#syntax-e _%tl5154551568%_)))
                                          (let ((_%hd5154751575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5154651571%_)))
                                                (_%tl5154851578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5154651571%_))))
                                            (if (gx#stx-null? _%tl5154851578%_)
                                                ((lambda (_%L51581%_
                                                          _%L51583%_)
                                                   (if (null? _%rest51528%_)
                                                       (let ((_%$e51613%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51501%_
                                                               _%part51530%_)))
                                                         (if _%$e51613%_
                                                             ((lambda (_%slot-type51617%_)
                                                                (let* ((_%g5162051628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5162151624%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5162151624%_)))
                               (_%g5161951651%_
                                (lambda (_%g5162151632%_)
                                  ((lambda (_%L51635%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51635%_ '()))
                                                 (cons (cons _%L51581%_
                                                             (cons _%L51583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5162151632%_))))
                          (_%g5161951651%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51363%_
                              _%slot-type51617%_)))))
                      _%$e51613%_)
                     (if _%nil-check?51503%_
                         (cons _%L51581%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51583%_ '()))
                                     '()))
                         (cons _%L51581%_ (cons _%L51583%_ '())))))
               (let ((_%$e51659%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51501%_
                       _%part51530%_)))
                 (if _%$e51659%_
                     ((lambda (_%type51663%_)
                        (let ((_%type51666%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51363%_
                                  _%type51663%_))))
                          (if _%nil-check?51503%_
                              (_%loop51496%_
                               _%rest51528%_
                               _%type51666%_
                               (cons _%L51581%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51583%_ '()))
                                           '()))
                               '#f)
                              (_%loop51496%_
                               _%rest51528%_
                               _%type51666%_
                               (cons _%L51581%_ (cons _%L51583%_ '()))
                               '#f))))
                      _%$e51659%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51363%_
                      _%L51456%_
                      _%part51530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5154751575%_
                                                 _%hd5154451565%_)
                                                (_%g5153951554%_
                                                 _%g5154051558%_))))
                                        (_%g5153951554%_ _%g5154051558%_))))
                                (_%g5153951554%_ _%g5154051558%_)))))
                    (_%g5153851671%_
                     (list (if _%nil-check?51503%_
                               (cons 'check-nil! (cons _%object51502%_ '()))
                               _%object51502%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51363%_
                            _%type51501%_
                            _%part51530%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51501%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51363%_
                       _%type51501%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5150451512%_))
                                              (let ((_%hd5150951683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5150451512%_)))
                                                    (_%tl5151051686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5150451512%_))))
                                                (let* ((_%part51689%_
                                                        _%hd5150951683%_)
                                                       (_%rest51692%_
                                                        _%tl5151051686%_))
                                                  (_%K5150851679%_
                                                   _%rest51692%_
                                                   _%part51689%_)))
                                              (_%else5150651524%_)))))
                                    _%$e51489%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51456%_ '())))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5146851475%_))
                         (let ((_%hd5147251701%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5146851475%_)))
                               (_%tl5147351704%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5146851475%_))))
                           (let* ((_%var51707%_ _%hd5147251701%_)
                                  (_%parts51710%_ _%tl5147351704%_))
                             (_%K5147151697%_ _%parts51710%_ _%var51707%_)))
                         (_%E5147051481%_)))))
                (_%__kont7690076901%_
                 (lambda (_%L51415%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51415%_ '())))))
            (let ((_%__match7691676917%_
                   (lambda (_%e5137051436%_
                            _%hd5137151440%_
                            _%tl5137251443%_
                            _%e5137351446%_
                            _%hd5137451450%_
                            _%tl5137551453%_)
                     (let ((_%L51456%_ _%hd5137451450%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51456%_)
                           (_%__kont7689876899%_ _%L51456%_)
                           (_%__kont7690076901%_ _%hd5137451450%_))))))
              (if (gx#stx-pair? _%__stx7689576896%_)
                  (let ((_%e5137051436%_ (gx#syntax-e _%__stx7689576896%_)))
                    (let ((_%tl5137251443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5137051436%_)))
                          (_%hd5137151440%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5137051436%_))))
                      (if (gx#stx-pair? _%tl5137251443%_)
                          (let ((_%e5137351446%_
                                 (gx#syntax-e _%tl5137251443%_)))
                            (let ((_%tl5137551453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5137351446%_)))
                                  (_%hd5137451450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5137351446%_))))
                              (if (gx#stx-null? _%tl5137551453%_)
                                  (_%__match7691676917%_
                                   _%e5137051436%_
                                   _%hd5137151440%_
                                   _%tl5137251443%_
                                   _%e5137351446%_
                                   _%hd5137451450%_
                                   _%tl5137551453%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5136751388%_)))))
                          (let () (declare (not safe)) (_%g5136751388%_)))))
                  (let () (declare (not safe)) (_%g5136751388%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51717%_)
        (let* ((_%__stx7693376934%_ _%stx51717%_)
               (_%g5172151750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7693376934%_))))
          (let ((_%__kont7693676937%_
                 (lambda (_%L51842%_ _%L51844%_)
                   (let* ((_%g5185851865%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51717%_
                            _%L51844%_))
                          (_%E5186051871%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5185851865%_
                                    '([var . parts]))
                             (void)))
                          (_%K5186152101%_
                           (lambda (_%parts51875%_ _%var51877%_)
                             (let ((_%$e51879%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51877%_))))
                               (if _%$e51879%_
                                   ((lambda (_%te51883%_)
                                      (let _%loop51886%_ ((_%parts51889%_
                                                           _%parts51875%_)
                                                          (_%type51891%_
                                                           (##direct-structure-ref
                                                            _%te51883%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51892%_
                                                           _%var51877%_)
                                                          (_%checked-mutator?51893%_
                                                           (##direct-structure-ref
                                                            _%te51883%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51894%_
                                                           '#f))
                                        (let* ((_%parts5189551902%_
                                                _%parts51889%_)
                                               (_%E5189751908%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5189551902%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5189852083%_
                                                (lambda (_%rest51912%_
                                                         _%part51914%_)
                                                  (if (and (not _%nil-check?51894%_)
                                                           (let ((__tmp81007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51914%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp81007)))
              (let ((_%str51918%_ (symbol->string _%part51914%_)))
                (_%loop51886%_
                 (cons (let ((__tmp81008
                              (substring
                               _%str51918%_
                               '1
                               (string-length _%str51918%_))))
                         (declare (not safe))
                         (##string->symbol __tmp81008))
                       _%rest51912%_)
                 _%type51891%_
                 _%object51892%_
                 _%checked-mutator?51893%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51891%_))
                  (if (null? _%rest51912%_)
                      (let* ((_%g5192551940%_
                              (lambda (_%g5192651936%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5192651936%_)))
                             (_%g5192451997%_
                              (lambda (_%g5192651944%_)
                                (if (gx#stx-pair? _%g5192651944%_)
                                    (let ((_%e5192951947%_
                                           (gx#syntax-e _%g5192651944%_)))
                                      (let ((_%hd5193051951%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5192951947%_)))
                                            (_%tl5193151954%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5192951947%_))))
                                        (if (gx#stx-pair? _%tl5193151954%_)
                                            (let ((_%e5193251957%_
                                                   (gx#syntax-e
                                                    _%tl5193151954%_)))
                                              (let ((_%hd5193351961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5193251957%_)))
                                                    (_%tl5193451964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5193251957%_))))
                                                (if (gx#stx-null?
                                                     _%tl5193451964%_)
                                                    ((lambda (_%L51967%_
                                                              _%L51969%_)
                                                       (if _%nil-check?51894%_
                                                           (cons _%L51967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51969%_ '()))
                               (cons _%L51842%_ '())))
                   (cons _%L51967%_ (cons _%L51969%_ (cons _%L51842%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5193351961%_
                                                     _%hd5193051951%_)
                                                    (_%g5192551940%_
                                                     _%g5192651944%_))))
                                            (_%g5192551940%_
                                             _%g5192651944%_))))
                                    (_%g5192551940%_ _%g5192651944%_)))))
                        (_%g5192451997%_
                         (list _%object51892%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51717%_
                                _%type51891%_
                                _%part51914%_
                                (if _%checked-mutator?51893%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51891%_
                                     _%part51914%_)
                                    '#f)))))
                      (let ((_%$e52001%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51891%_
                              _%part51914%_)))
                        (if _%$e52001%_
                            ((lambda (_%type52005%_)
                               (let* ((_%type52008%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51717%_
                                          _%type52005%_)))
                                      (_%g5201152026%_
                                       (lambda (_%g5201252022%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5201252022%_)))
                                      (_%g5201052073%_
                                       (lambda (_%g5201252030%_)
                                         (if (gx#stx-pair? _%g5201252030%_)
                                             (let ((_%e5201552033%_
                                                    (gx#syntax-e
                                                     _%g5201252030%_)))
                                               (let ((_%hd5201652037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5201552033%_)))
                                                     (_%tl5201752040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5201552033%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5201752040%_)
                                                     (let ((_%e5201852043%_
                                                            (gx#syntax-e
                                                             _%tl5201752040%_)))
                                                       (let ((_%hd5201952047%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5201852043%_)))
                     (_%tl5202052050%_
                      (let () (declare (not safe)) (##cdr _%e5201852043%_))))
                 (if (gx#stx-null? _%tl5202052050%_)
                     ((lambda (_%L52053%_ _%L52055%_)
                        (_%loop51886%_
                         _%rest51912%_
                         _%type52008%_
                         (cons _%L52053%_ (cons _%L52055%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type52008%_
                          _%part51914%_)
                         '#f))
                      _%hd5201952047%_
                      _%hd5201652037%_)
                     (_%g5201152026%_ _%g5201252030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5201152026%_
                                                      _%g5201252030%_))))
                                             (_%g5201152026%_
                                              _%g5201252030%_)))))
                                 (_%g5201052073%_
                                  (list (if _%nil-check?51894%_
                                            (cons 'check-nil!
                                                  (cons _%object51892%_ '()))
                                            _%object51892%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51717%_
                                         _%type52008%_
                                         _%part51914%_)))))
                             _%$e52001%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51717%_
                             _%L51844%_
                             _%part51914%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51891%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51717%_
                       _%type51891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5189551902%_))
                                              (let ((_%hd5189952087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5189551902%_)))
                                                    (_%tl5190052090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5189551902%_))))
                                                (let* ((_%part52093%_
                                                        _%hd5189952087%_)
                                                       (_%rest52096%_
                                                        _%tl5190052090%_))
                                                  (_%K5189852083%_
                                                   _%rest52096%_
                                                   _%part52093%_)))
                                              (_%E5189751908%_)))))
                                    _%$e51879%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51717%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5185851865%_))
                         (let ((_%hd5186252105%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5185851865%_)))
                               (_%tl5186352108%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5185851865%_))))
                           (let* ((_%var52111%_ _%hd5186252105%_)
                                  (_%parts52114%_ _%tl5186352108%_))
                             (_%K5186152101%_ _%parts52114%_ _%var52111%_)))
                         (_%E5186051871%_)))))
                (_%__kont7693876939%_
                 (lambda (_%L51787%_ _%L51789%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51717%_)))))
            (let ((_%__match7696076961%_
                   (lambda (_%e5172551812%_
                            _%hd5172651816%_
                            _%tl5172751819%_
                            _%e5172851822%_
                            _%hd5172951826%_
                            _%tl5173051829%_
                            _%e5173151832%_
                            _%hd5173251836%_
                            _%tl5173351839%_)
                     (let ((_%L51842%_ _%hd5173251836%_)
                           (_%L51844%_ _%hd5172951826%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51844%_)
                           (_%__kont7693676937%_ _%L51842%_ _%L51844%_)
                           (_%__kont7693876939%_
                            _%hd5173251836%_
                            _%hd5172951826%_))))))
              (if (gx#stx-pair? _%__stx7693376934%_)
                  (let ((_%e5172551812%_ (gx#syntax-e _%__stx7693376934%_)))
                    (let ((_%tl5172751819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5172551812%_)))
                          (_%hd5172651816%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5172551812%_))))
                      (if (gx#stx-pair? _%tl5172751819%_)
                          (let ((_%e5172851822%_
                                 (gx#syntax-e _%tl5172751819%_)))
                            (let ((_%tl5173051829%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5172851822%_)))
                                  (_%hd5172951826%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5172851822%_))))
                              (if (gx#stx-pair? _%tl5173051829%_)
                                  (let ((_%e5173151832%_
                                         (gx#syntax-e _%tl5173051829%_)))
                                    (let ((_%tl5173351839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5173151832%_)))
                                          (_%hd5173251836%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5173151832%_))))
                                      (if (gx#stx-null? _%tl5173351839%_)
                                          (_%__match7696076961%_
                                           _%e5172551812%_
                                           _%hd5172651816%_
                                           _%tl5172751819%_
                                           _%e5172851822%_
                                           _%hd5172951826%_
                                           _%tl5173051829%_
                                           _%e5173151832%_
                                           _%hd5173251836%_
                                           _%tl5173351839%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5172151750%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5172151750%_)))))
                          (let () (declare (not safe)) (_%g5172151750%_)))))
                  (let () (declare (not safe)) (_%g5172151750%_))))))))))

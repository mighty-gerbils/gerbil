(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g85003_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85004_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85005_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85008_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85009_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85012_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85013_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85014_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85015_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85019_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85020_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85021_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85022_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85026_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46392%_)
        (let* ((_%__stx7931979320%_ _%stx46392%_)
               (_%g4640146610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7931979320%_))))
          (let ((_%__kont7932279323%_
                 (lambda (_%L47516%_
                          _%L47518%_
                          _%L47519%_
                          _%L47520%_
                          _%L47521%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47521%_ (cons _%L47520%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47521%_
                                                       (cons _%L47519%_
                                                             (cons _%L47518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4756447567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4756547570%_)
                  (cons _%g4756447567%_ _%g4756547570%_))
                '()
                _%L47516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7932679327%_
                 (lambda (_%L47360%_
                          _%L47362%_
                          _%L47363%_
                          _%L47364%_
                          _%L47365%_
                          _%L47366%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47366%_ (cons _%L47365%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47366%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47363%_ (cons _%L47362%_ '())))
                           (foldr (lambda (_%g4741047413%_ _%g4741147416%_)
                                    (cons _%g4741047413%_ _%g4741147416%_))
                                  '()
                                  _%L47360%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7933079331%_
                 (lambda (_%L47177%_ _%L47179%_ _%L47180%_ _%L47181%_)
                   (let ((_%meta47218%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46392%_
                             _%L47179%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47218%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47181%_
                                           (cons _%L47180%_
                                                 (cons _%L47179%_ '())))
                                     (foldr (lambda (_%g4722247225%_
                                                     _%g4722347228%_)
                                              (cons _%g4722247225%_
                                                    _%g4722347228%_))
                                            '()
                                            _%L47177%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47218%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47181%_
                                               (cons _%L47180%_
                                                     (cons _%L47179%_ '())))
                                         (foldr (lambda (_%g4723247235%_
                                                         _%g4723347238%_)
                                                  (cons _%g4723247235%_
                                                        _%g4723347238%_))
                                                '()
                                                _%L47177%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46392%_
                              _%L47179%_
                              _%meta47218%_))))))
                (_%__kont7933479335%_
                 (lambda (_%L47055%_ _%L47057%_ _%L47058%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47058%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47057%_ '())))
                               (foldr (lambda (_%g4708147084%_ _%g4708247087%_)
                                        (cons _%g4708147084%_ _%g4708247087%_))
                                      '()
                                      _%L47055%_)))))
                (_%__kont7933879339%_
                 (lambda (_%L46913%_
                          _%L46915%_
                          _%L46916%_
                          _%L46917%_
                          _%L46918%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46918%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46917%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46918%_
                                                       (cons _%L46916%_
                                                             (cons _%L46915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4695946962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4696046965%_)
                  (cons _%g4695946962%_ _%g4696046965%_))
                '()
                _%L46913%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7934279343%_
                 (lambda (_%L46771%_ _%L46773%_ _%L46774%_ _%L46775%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46775%_ _%L46774%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46773%_
                                                 (foldr (lambda (_%g4679746800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4679846803%_)
                  (cons _%g4679746800%_ _%g4679846803%_))
                '()
                _%L46771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7934679347%_
                 (lambda (_%L46667%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4668546688%_ _%g4668646691%_)
                                        (cons _%g4668546688%_ _%g4668646691%_))
                                      '()
                                      _%L46667%_))))))
            (let* ((_%__match7965279653%_
                    (lambda (_%e4659046617%_
                             _%hd4659146621%_
                             _%tl4659246624%_
                             _%e4659346627%_
                             _%hd4659446631%_
                             _%tl4659546634%_
                             _%__splice7934879349%_
                             _%target4659646637%_
                             _%tl4659846640%_)
                      (letrec ((_%loop4659946643%_
                                (lambda (_%hd4659746647%_ _%body4660346650%_)
                                  (if (gx#stx-pair? _%hd4659746647%_)
                                      (let ((_%e4660046653%_
                                             (gx#syntax-e _%hd4659746647%_)))
                                        (let ((_%lp-tl4660246660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660046653%_)))
                                              (_%lp-hd4660146657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660046653%_))))
                                          (_%loop4659946643%_
                                           _%lp-tl4660246660%_
                                           (cons _%lp-hd4660146657%_
                                                 _%body4660346650%_))))
                                      (let ((_%body4660446663%_
                                             (reverse _%body4660346650%_)))
                                        (_%__kont7934679347%_
                                         _%body4660446663%_))))))
                        (_%loop4659946643%_ _%target4659646637%_ '()))))
                   (_%__match7963079631%_
                    (lambda (_%e4656846701%_
                             _%hd4656946705%_
                             _%tl4657046708%_
                             _%e4657146711%_
                             _%hd4657246715%_
                             _%tl4657346718%_
                             _%e4657446721%_
                             _%hd4657546725%_
                             _%tl4657646728%_
                             _%e4657746731%_
                             _%hd4657846735%_
                             _%tl4657946738%_
                             _%__splice7934479345%_
                             _%target4658046741%_
                             _%tl4658246744%_)
                      (letrec ((_%loop4658346747%_
                                (lambda (_%hd4658146751%_ _%body4658746754%_)
                                  (if (gx#stx-pair? _%hd4658146751%_)
                                      (let ((_%e4658446757%_
                                             (gx#syntax-e _%hd4658146751%_)))
                                        (let ((_%lp-tl4658646764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4658446757%_)))
                                              (_%lp-hd4658546761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4658446757%_))))
                                          (_%loop4658346747%_
                                           _%lp-tl4658646764%_
                                           (cons _%lp-hd4658546761%_
                                                 _%body4658746754%_))))
                                      (let ((_%body4658846767%_
                                             (reverse _%body4658746754%_)))
                                        (let ((_%L46771%_ _%body4658846767%_)
                                              (_%L46773%_ _%tl4657646728%_)
                                              (_%L46774%_ _%tl4657946738%_)
                                              (_%L46775%_ _%hd4657846735%_))
                                          (if (gx#identifier? _%L46775%_)
                                              (_%__kont7934279343%_
                                               _%L46771%_
                                               _%L46773%_
                                               _%L46774%_
                                               _%L46775%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_)))))))))
                        (_%loop4658346747%_ _%target4658046741%_ '()))))
                   (_%__match7961679617%_
                    (lambda (_%e4656846701%_
                             _%hd4656946705%_
                             _%tl4657046708%_
                             _%e4657146711%_
                             _%hd4657246715%_
                             _%tl4657346718%_
                             _%e4657446721%_
                             _%hd4657546725%_
                             _%tl4657646728%_)
                      (if (gx#stx-pair? _%hd4657546725%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4657546725%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (if (gx#stx-pair/null? _%tl4657346718%_)
                                  (let ((_%__splice7934479345%_
                                         (gx#syntax-split-splice
                                          _%tl4657346718%_
                                          '0)))
                                    (let ((_%tl4658246744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '1)))
                                          (_%target4658046741%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658246744%_)
                                          (_%__match7963079631%_
                                           _%e4656846701%_
                                           _%hd4656946705%_
                                           _%tl4657046708%_
                                           _%e4657146711%_
                                           _%hd4657246715%_
                                           _%tl4657346718%_
                                           _%e4657446721%_
                                           _%hd4657546725%_
                                           _%tl4657646728%_
                                           _%e4657746731%_
                                           _%hd4657846735%_
                                           _%tl4657946738%_
                                           _%__splice7934479345%_
                                           _%target4658046741%_
                                           _%tl4658246744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                   (_%__match7959879599%_
                    (lambda (_%e4653446813%_
                             _%hd4653546817%_
                             _%tl4653646820%_
                             _%e4653746823%_
                             _%hd4653846827%_
                             _%tl4653946830%_
                             _%e4654046833%_
                             _%hd4654146837%_
                             _%tl4654246840%_
                             _%e4654346843%_
                             _%hd4654446847%_
                             _%tl4654546850%_
                             _%e4654646853%_
                             _%hd4654746857%_
                             _%tl4654846860%_
                             _%e4654946863%_
                             _%hd4655046867%_
                             _%tl4655146870%_
                             _%e4655246873%_
                             _%hd4655346877%_
                             _%tl4655446880%_
                             _%__splice7934079341%_
                             _%target4655546883%_
                             _%tl4655746886%_)
                      (letrec ((_%loop4655846889%_
                                (lambda (_%hd4655646893%_ _%body4656246896%_)
                                  (if (gx#stx-pair? _%hd4655646893%_)
                                      (let ((_%e4655946899%_
                                             (gx#syntax-e _%hd4655646893%_)))
                                        (let ((_%lp-tl4656146906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4655946899%_)))
                                              (_%lp-hd4656046903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4655946899%_))))
                                          (_%loop4655846889%_
                                           _%lp-tl4656146906%_
                                           (cons _%lp-hd4656046903%_
                                                 _%body4656246896%_))))
                                      (let ((_%body4656346909%_
                                             (reverse _%body4656246896%_)))
                                        (let ((_%L46913%_ _%body4656346909%_)
                                              (_%L46915%_ _%hd4655346877%_)
                                              (_%L46916%_ _%hd4655046867%_)
                                              (_%L46917%_ _%hd4654746857%_)
                                              (_%L46918%_ _%hd4654146837%_))
                                          (if (and (gx#identifier? _%L46918%_)
                                                   (gx#identifier? _%L46915%_)
                                                   (gx#identifier? _%L46916%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46916%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7933879339%_
                                               _%L46913%_
                                               _%L46915%_
                                               _%L46916%_
                                               _%L46917%_
                                               _%L46918%_)
                                              (_%__match7961679617%_
                                               _%e4653446813%_
                                               _%hd4653546817%_
                                               _%tl4653646820%_
                                               _%e4653746823%_
                                               _%hd4653846827%_
                                               _%tl4653946830%_
                                               _%e4654046833%_
                                               _%hd4654146837%_
                                               _%tl4654246840%_))))))))
                        (_%loop4655846889%_ _%target4655546883%_ '()))))
                   (_%__match7954279543%_
                    (lambda (_%e4650546975%_
                             _%hd4650646979%_
                             _%tl4650746982%_
                             _%e4650846985%_
                             _%hd4650946989%_
                             _%tl4651046992%_
                             _%e4651146995%_
                             _%hd4651246999%_
                             _%tl4651347002%_
                             _%e4651447005%_
                             _%hd4651547009%_
                             _%tl4651647012%_
                             _%e4651747015%_
                             _%hd4651847019%_
                             _%tl4651947022%_
                             _%__splice7933679337%_
                             _%target4652047025%_
                             _%tl4652247028%_)
                      (letrec ((_%loop4652347031%_
                                (lambda (_%hd4652147035%_ _%body4652747038%_)
                                  (if (gx#stx-pair? _%hd4652147035%_)
                                      (let ((_%e4652447041%_
                                             (gx#syntax-e _%hd4652147035%_)))
                                        (let ((_%lp-tl4652647048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4652447041%_)))
                                              (_%lp-hd4652547045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4652447041%_))))
                                          (_%loop4652347031%_
                                           _%lp-tl4652647048%_
                                           (cons _%lp-hd4652547045%_
                                                 _%body4652747038%_))))
                                      (let ((_%body4652847051%_
                                             (reverse _%body4652747038%_)))
                                        (let ((_%L47055%_ _%body4652847051%_)
                                              (_%L47057%_ _%hd4651847019%_)
                                              (_%L47058%_ _%hd4651246999%_))
                                          (if (gx#identifier? _%L47058%_)
                                              (_%__kont7933479335%_
                                               _%L47055%_
                                               _%L47057%_
                                               _%L47058%_)
                                              (_%__match7961679617%_
                                               _%e4650546975%_
                                               _%hd4650646979%_
                                               _%tl4650746982%_
                                               _%e4650846985%_
                                               _%hd4650946989%_
                                               _%tl4651046992%_
                                               _%e4651146995%_
                                               _%hd4651246999%_
                                               _%tl4651347002%_))))))))
                        (_%loop4652347031%_ _%target4652047025%_ '()))))
                   (_%__match7952279523%_
                    (lambda (_%e4650546975%_
                             _%hd4650646979%_
                             _%tl4650746982%_
                             _%e4650846985%_
                             _%hd4650946989%_
                             _%tl4651046992%_
                             _%e4651146995%_
                             _%hd4651246999%_
                             _%tl4651347002%_
                             _%e4651447005%_
                             _%hd4651547009%_
                             _%tl4651647012%_)
                      (if (gx#identifier? _%hd4651547009%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g85003_|
                               _%hd4651547009%_)
                              (if (gx#stx-pair? _%tl4651647012%_)
                                  (let ((_%e4651747015%_
                                         (gx#syntax-e _%tl4651647012%_)))
                                    (let ((_%tl4651947022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4651747015%_)))
                                          (_%hd4651847019%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4651747015%_))))
                                      (if (gx#stx-null? _%tl4651947022%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4651046992%_)
                                              (let ((_%__splice7933679337%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651046992%_
                                                      '0)))
                                                (let ((_%tl4652247028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7933679337%_
                                                          '1)))
                                                      (_%target4652047025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7933679337%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4652247028%_)
                                                      (_%__match7954279543%_
                                                       _%e4650546975%_
                                                       _%hd4650646979%_
                                                       _%tl4650746982%_
                                                       _%e4650846985%_
                                                       _%hd4650946989%_
                                                       _%tl4651046992%_
                                                       _%e4651146995%_
                                                       _%hd4651246999%_
                                                       _%tl4651347002%_
                                                       _%e4651447005%_
                                                       _%hd4651547009%_
                                                       _%tl4651647012%_
                                                       _%e4651747015%_
                                                       _%hd4651847019%_
                                                       _%tl4651947022%_
                                                       _%__splice7933679337%_
                                                       _%target4652047025%_
                                                       _%tl4652247028%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4651246999%_)
                                                          (let ((_%e4657746731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4651246999%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651246999%_)
                                                  (let ((_%e4657746731%_
                                                         (gx#syntax-e
                                                          _%hd4651246999%_)))
                                                    (let ((_%tl4657946738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746731%_)))
                                                          (_%hd4657846735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746731%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640146610%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))
                                          (if (gx#stx-pair? _%tl4651947022%_)
                                              (let ((_%e4654946863%_
                                                     (gx#syntax-e
                                                      _%tl4651947022%_)))
                                                (let ((_%tl4655146870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4654946863%_)))
                                                      (_%hd4655046867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4654946863%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655146870%_)
                                                      (let ((_%e4655246873%_
                                                             (gx#syntax-e
                                                              _%tl4655146870%_)))
                                                        (let ((_%tl4655446880%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655246873%_)))
                      (_%hd4655346877%_
                       (let () (declare (not safe)) (##car _%e4655246873%_))))
                  (if (gx#stx-null? _%tl4655446880%_)
                      (if (gx#stx-pair/null? _%tl4651046992%_)
                          (let ((_%__splice7934079341%_
                                 (gx#syntax-split-splice _%tl4651046992%_ '0)))
                            (let ((_%tl4655746886%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934079341%_ '1)))
                                  (_%target4655546883%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934079341%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655746886%_)
                                  (_%__match7959879599%_
                                   _%e4650546975%_
                                   _%hd4650646979%_
                                   _%tl4650746982%_
                                   _%e4650846985%_
                                   _%hd4650946989%_
                                   _%tl4651046992%_
                                   _%e4651146995%_
                                   _%hd4651246999%_
                                   _%tl4651347002%_
                                   _%e4651447005%_
                                   _%hd4651547009%_
                                   _%tl4651647012%_
                                   _%e4651747015%_
                                   _%hd4651847019%_
                                   _%tl4651947022%_
                                   _%e4654946863%_
                                   _%hd4655046867%_
                                   _%tl4655146870%_
                                   _%e4655246873%_
                                   _%hd4655346877%_
                                   _%tl4655446880%_
                                   _%__splice7934079341%_
                                   _%target4655546883%_
                                   _%tl4655746886%_)
                                  (if (gx#stx-pair? _%hd4651246999%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4651246999%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))
                          (if (gx#stx-pair? _%hd4651246999%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4651246999%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                      (if (gx#stx-pair? _%hd4651246999%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4651246999%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (if (gx#stx-pair/null? _%tl4651046992%_)
                                  (let ((_%__splice7934479345%_
                                         (gx#syntax-split-splice
                                          _%tl4651046992%_
                                          '0)))
                                    (let ((_%tl4658246744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '1)))
                                          (_%target4658046741%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658246744%_)
                                          (_%__match7963079631%_
                                           _%e4650546975%_
                                           _%hd4650646979%_
                                           _%tl4650746982%_
                                           _%e4650846985%_
                                           _%hd4650946989%_
                                           _%tl4651046992%_
                                           _%e4651146995%_
                                           _%hd4651246999%_
                                           _%tl4651347002%_
                                           _%e4657746731%_
                                           _%hd4657846735%_
                                           _%tl4657946738%_
                                           _%__splice7934479345%_
                                           _%target4658046741%_
                                           _%tl4658246744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_))))))
              (if (gx#stx-pair? _%hd4651246999%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4651246999%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4651046992%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4651046992%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4650546975%_
                                   _%hd4650646979%_
                                   _%tl4650746982%_
                                   _%e4650846985%_
                                   _%hd4650946989%_
                                   _%tl4651046992%_
                                   _%e4651146995%_
                                   _%hd4651246999%_
                                   _%tl4651347002%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4651246999%_)
                                                  (let ((_%e4657746731%_
                                                         (gx#syntax-e
                                                          _%hd4651246999%_)))
                                                    (let ((_%tl4657946738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746731%_)))
                                                          (_%hd4657846735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746731%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4651046992%_)
                                                          (let ((_%__splice7934479345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4651046992%_ '0)))
                    (let ((_%tl4658246744%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '1)))
                          (_%target4658046741%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '0))))
                      (if (gx#stx-null? _%tl4658246744%_)
                          (_%__match7963079631%_
                           _%e4650546975%_
                           _%hd4650646979%_
                           _%tl4650746982%_
                           _%e4650846985%_
                           _%hd4650946989%_
                           _%tl4651046992%_
                           _%e4651146995%_
                           _%hd4651246999%_
                           _%tl4651347002%_
                           _%e4657746731%_
                           _%hd4657846735%_
                           _%tl4657946738%_
                           _%__splice7934479345%_
                           _%target4658046741%_
                           _%tl4658246744%_)
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))))
                                  (if (gx#stx-pair? _%hd4651246999%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4651246999%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4651046992%_)
                                              (let ((_%__splice7934479345%_
                                                     (gx#syntax-split-splice
                                                      _%tl4651046992%_
                                                      '0)))
                                                (let ((_%tl4658246744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '1)))
                                                      (_%target4658046741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658246744%_)
                                                      (_%__match7963079631%_
                                                       _%e4650546975%_
                                                       _%hd4650646979%_
                                                       _%tl4650746982%_
                                                       _%e4650846985%_
                                                       _%hd4650946989%_
                                                       _%tl4651046992%_
                                                       _%e4651146995%_
                                                       _%hd4651246999%_
                                                       _%tl4651347002%_
                                                       _%e4657746731%_
                                                       _%hd4657846735%_
                                                       _%tl4657946738%_
                                                       _%__splice7934479345%_
                                                       _%target4658046741%_
                                                       _%tl4658246744%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640146610%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                              (if (gx#stx-pair? _%hd4651246999%_)
                                  (let ((_%e4657746731%_
                                         (gx#syntax-e _%hd4651246999%_)))
                                    (let ((_%tl4657946738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657746731%_)))
                                          (_%hd4657846735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657746731%_))))
                                      (if (gx#stx-pair/null? _%tl4651046992%_)
                                          (let ((_%__splice7934479345%_
                                                 (gx#syntax-split-splice
                                                  _%tl4651046992%_
                                                  '0)))
                                            (let ((_%tl4658246744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7934479345%_
                                                      '1)))
                                                  (_%target4658046741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7934479345%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4658246744%_)
                                                  (_%__match7963079631%_
                                                   _%e4650546975%_
                                                   _%hd4650646979%_
                                                   _%tl4650746982%_
                                                   _%e4650846985%_
                                                   _%hd4650946989%_
                                                   _%tl4651046992%_
                                                   _%e4651146995%_
                                                   _%hd4651246999%_
                                                   _%tl4651347002%_
                                                   _%e4657746731%_
                                                   _%hd4657846735%_
                                                   _%tl4657946738%_
                                                   _%__splice7934479345%_
                                                   _%target4658046741%_
                                                   _%tl4658246744%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                          (if (gx#stx-pair? _%hd4651246999%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4651246999%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (if (gx#stx-pair/null? _%tl4651046992%_)
                                      (let ((_%__splice7934479345%_
                                             (gx#syntax-split-splice
                                              _%tl4651046992%_
                                              '0)))
                                        (let ((_%tl4658246744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7934479345%_
                                                  '1)))
                                              (_%target4658046741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7934479345%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4658246744%_)
                                              (_%__match7963079631%_
                                               _%e4650546975%_
                                               _%hd4650646979%_
                                               _%tl4650746982%_
                                               _%e4650846985%_
                                               _%hd4650946989%_
                                               _%tl4651046992%_
                                               _%e4651146995%_
                                               _%hd4651246999%_
                                               _%tl4651347002%_
                                               _%e4657746731%_
                                               _%hd4657846735%_
                                               _%tl4657946738%_
                                               _%__splice7934479345%_
                                               _%target4658046741%_
                                               _%tl4658246744%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_))))))
                   (_%__match7949879499%_
                    (lambda (_%e4647847097%_
                             _%hd4647947101%_
                             _%tl4648047104%_
                             _%e4648147107%_
                             _%hd4648247111%_
                             _%tl4648347114%_
                             _%e4648447117%_
                             _%hd4648547121%_
                             _%tl4648647124%_
                             _%e4648747127%_
                             _%hd4648847131%_
                             _%tl4648947134%_
                             _%e4649047137%_
                             _%hd4649147141%_
                             _%tl4649247144%_
                             _%__splice7933279333%_
                             _%target4649347147%_
                             _%tl4649547150%_)
                      (letrec ((_%loop4649647153%_
                                (lambda (_%hd4649447157%_ _%body4650047160%_)
                                  (if (gx#stx-pair? _%hd4649447157%_)
                                      (let ((_%e4649747163%_
                                             (gx#syntax-e _%hd4649447157%_)))
                                        (let ((_%lp-tl4649947170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649747163%_)))
                                              (_%lp-hd4649847167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649747163%_))))
                                          (_%loop4649647153%_
                                           _%lp-tl4649947170%_
                                           (cons _%lp-hd4649847167%_
                                                 _%body4650047160%_))))
                                      (let ((_%body4650147173%_
                                             (reverse _%body4650047160%_)))
                                        (let ((_%L47177%_ _%body4650147173%_)
                                              (_%L47179%_ _%hd4649147141%_)
                                              (_%L47180%_ _%hd4648847131%_)
                                              (_%L47181%_ _%hd4648547121%_))
                                          (if (and (gx#identifier? _%L47181%_)
                                                   (gx#identifier? _%L47179%_)
                                                   (gx#identifier? _%L47180%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47180%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47180%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47180%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47180%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7933079331%_
                                               _%L47177%_
                                               _%L47179%_
                                               _%L47180%_
                                               _%L47181%_)
                                              (_%__match7952279523%_
                                               _%e4647847097%_
                                               _%hd4647947101%_
                                               _%tl4648047104%_
                                               _%e4648147107%_
                                               _%hd4648247111%_
                                               _%tl4648347114%_
                                               _%e4648447117%_
                                               _%hd4648547121%_
                                               _%tl4648647124%_
                                               _%e4648747127%_
                                               _%hd4648847131%_
                                               _%tl4648947134%_))))))))
                        (_%loop4649647153%_ _%target4649347147%_ '()))))
                   (_%__match7945879459%_
                    (lambda (_%e4644147250%_
                             _%hd4644247254%_
                             _%tl4644347257%_
                             _%e4644447260%_
                             _%hd4644547264%_
                             _%tl4644647267%_
                             _%e4644747270%_
                             _%hd4644847274%_
                             _%tl4644947277%_
                             _%e4645047280%_
                             _%hd4645147284%_
                             _%tl4645247287%_
                             _%e4645347290%_
                             _%hd4645447294%_
                             _%tl4645547297%_
                             _%e4645647300%_
                             _%hd4645747304%_
                             _%tl4645847307%_
                             _%e4645947310%_
                             _%hd4646047314%_
                             _%tl4646147317%_
                             _%e4646247320%_
                             _%hd4646347324%_
                             _%tl4646447327%_
                             _%__splice7932879329%_
                             _%target4646547330%_
                             _%tl4646747333%_)
                      (letrec ((_%loop4646847336%_
                                (lambda (_%hd4646647340%_ _%body4647247343%_)
                                  (if (gx#stx-pair? _%hd4646647340%_)
                                      (let ((_%e4646947346%_
                                             (gx#syntax-e _%hd4646647340%_)))
                                        (let ((_%lp-tl4647147353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646947346%_)))
                                              (_%lp-hd4647047350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646947346%_))))
                                          (_%loop4646847336%_
                                           _%lp-tl4647147353%_
                                           (cons _%lp-hd4647047350%_
                                                 _%body4647247343%_))))
                                      (let ((_%body4647347356%_
                                             (reverse _%body4647247343%_)))
                                        (let ((_%L47360%_ _%body4647347356%_)
                                              (_%L47362%_ _%hd4646347324%_)
                                              (_%L47363%_ _%hd4646047314%_)
                                              (_%L47364%_ _%hd4645747304%_)
                                              (_%L47365%_ _%hd4645147284%_)
                                              (_%L47366%_ _%hd4644847274%_))
                                          (if (and (gx#identifier? _%L47366%_)
                                                   (gx#identifier? _%L47362%_)
                                                   (gx#identifier? _%L47363%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47363%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7932679327%_
                                               _%L47360%_
                                               _%L47362%_
                                               _%L47363%_
                                               _%L47364%_
                                               _%L47365%_
                                               _%L47366%_)
                                              (_%__match7952279523%_
                                               _%e4644147250%_
                                               _%hd4644247254%_
                                               _%tl4644347257%_
                                               _%e4644447260%_
                                               _%hd4644547264%_
                                               _%tl4644647267%_
                                               _%e4644747270%_
                                               _%hd4644847274%_
                                               _%tl4644947277%_
                                               _%e4645047280%_
                                               _%hd4645147284%_
                                               _%tl4645247287%_))))))))
                        (_%loop4646847336%_ _%target4646547330%_ '()))))
                   (_%__match7942679427%_
                    (lambda (_%e4644147250%_
                             _%hd4644247254%_
                             _%tl4644347257%_
                             _%e4644447260%_
                             _%hd4644547264%_
                             _%tl4644647267%_
                             _%e4644747270%_
                             _%hd4644847274%_
                             _%tl4644947277%_
                             _%e4645047280%_
                             _%hd4645147284%_
                             _%tl4645247287%_
                             _%e4645347290%_
                             _%hd4645447294%_
                             _%tl4645547297%_)
                      (if (gx#identifier? _%hd4645447294%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g85004_|
                               _%hd4645447294%_)
                              (if (gx#stx-pair? _%tl4645547297%_)
                                  (let ((_%e4645647300%_
                                         (gx#syntax-e _%tl4645547297%_)))
                                    (let ((_%tl4645847307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4645647300%_)))
                                          (_%hd4645747304%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4645647300%_))))
                                      (if (gx#stx-pair? _%tl4645847307%_)
                                          (let ((_%e4645947310%_
                                                 (gx#syntax-e
                                                  _%tl4645847307%_)))
                                            (let ((_%tl4646147317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4645947310%_)))
                                                  (_%hd4646047314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4645947310%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4646147317%_)
                                                  (let ((_%e4646247320%_
                                                         (gx#syntax-e
                                                          _%tl4646147317%_)))
                                                    (let ((_%tl4646447327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4646247320%_)))
                                                          (_%hd4646347324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4646247320%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4646447327%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4644647267%_)
                                                              (let ((_%__splice7932879329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4644647267%_ '0)))
                        (let ((_%tl4646747333%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7932879329%_ '1)))
                              (_%target4646547330%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7932879329%_ '0))))
                          (if (gx#stx-null? _%tl4646747333%_)
                              (_%__match7945879459%_
                               _%e4644147250%_
                               _%hd4644247254%_
                               _%tl4644347257%_
                               _%e4644447260%_
                               _%hd4644547264%_
                               _%tl4644647267%_
                               _%e4644747270%_
                               _%hd4644847274%_
                               _%tl4644947277%_
                               _%e4645047280%_
                               _%hd4645147284%_
                               _%tl4645247287%_
                               _%e4645347290%_
                               _%hd4645447294%_
                               _%tl4645547297%_
                               _%e4645647300%_
                               _%hd4645747304%_
                               _%tl4645847307%_
                               _%e4645947310%_
                               _%hd4646047314%_
                               _%tl4646147317%_
                               _%e4646247320%_
                               _%hd4646347324%_
                               _%tl4646447327%_
                               _%__splice7932879329%_
                               _%target4646547330%_
                               _%tl4646747333%_)
                              (if (gx#stx-pair? _%hd4644847274%_)
                                  (let ((_%e4657746731%_
                                         (gx#syntax-e _%hd4644847274%_)))
                                    (let ((_%tl4657946738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657746731%_)))
                                          (_%hd4657846735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657746731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))))
                      (if (gx#stx-pair? _%hd4644847274%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4644847274%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                  (if (gx#stx-pair? _%hd4644847274%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4644847274%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (if (gx#stx-pair/null? _%tl4644647267%_)
                              (let ((_%__splice7934479345%_
                                     (gx#syntax-split-splice
                                      _%tl4644647267%_
                                      '0)))
                                (let ((_%tl4658246744%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '1)))
                                      (_%target4658046741%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658246744%_)
                                      (_%__match7963079631%_
                                       _%e4644147250%_
                                       _%hd4644247254%_
                                       _%tl4644347257%_
                                       _%e4644447260%_
                                       _%hd4644547264%_
                                       _%tl4644647267%_
                                       _%e4644747270%_
                                       _%hd4644847274%_
                                       _%tl4644947277%_
                                       _%e4657746731%_
                                       _%hd4657846735%_
                                       _%tl4657946738%_
                                       _%__splice7934479345%_
                                       _%target4658046741%_
                                       _%tl4658246744%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4645147284%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85003_|
                                                           _%hd4645147284%_)
                                                          (if (gx#stx-null?
                                                               _%tl4646147317%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4644647267%_)
                          (let ((_%__splice7934079341%_
                                 (gx#syntax-split-splice _%tl4644647267%_ '0)))
                            (let ((_%tl4655746886%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934079341%_ '1)))
                                  (_%target4655546883%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934079341%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655746886%_)
                                  (_%__match7959879599%_
                                   _%e4644147250%_
                                   _%hd4644247254%_
                                   _%tl4644347257%_
                                   _%e4644447260%_
                                   _%hd4644547264%_
                                   _%tl4644647267%_
                                   _%e4644747270%_
                                   _%hd4644847274%_
                                   _%tl4644947277%_
                                   _%e4645047280%_
                                   _%hd4645147284%_
                                   _%tl4645247287%_
                                   _%e4645347290%_
                                   _%hd4645447294%_
                                   _%tl4645547297%_
                                   _%e4645647300%_
                                   _%hd4645747304%_
                                   _%tl4645847307%_
                                   _%e4645947310%_
                                   _%hd4646047314%_
                                   _%tl4646147317%_
                                   _%__splice7934079341%_
                                   _%target4655546883%_
                                   _%tl4655746886%_)
                                  (if (gx#stx-pair? _%hd4644847274%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4644847274%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))
                          (if (gx#stx-pair? _%hd4644847274%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4644847274%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                      (if (gx#stx-pair? _%hd4644847274%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4644847274%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (if (gx#stx-pair/null? _%tl4644647267%_)
                                  (let ((_%__splice7934479345%_
                                         (gx#syntax-split-splice
                                          _%tl4644647267%_
                                          '0)))
                                    (let ((_%tl4658246744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '1)))
                                          (_%target4658046741%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658246744%_)
                                          (_%__match7963079631%_
                                           _%e4644147250%_
                                           _%hd4644247254%_
                                           _%tl4644347257%_
                                           _%e4644447260%_
                                           _%hd4644547264%_
                                           _%tl4644647267%_
                                           _%e4644747270%_
                                           _%hd4644847274%_
                                           _%tl4644947277%_
                                           _%e4657746731%_
                                           _%hd4657846735%_
                                           _%tl4657946738%_
                                           _%__splice7934479345%_
                                           _%target4658046741%_
                                           _%tl4658246744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                  (if (gx#stx-pair? _%hd4644847274%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4644847274%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (if (gx#stx-pair/null? _%tl4644647267%_)
                              (let ((_%__splice7934479345%_
                                     (gx#syntax-split-splice
                                      _%tl4644647267%_
                                      '0)))
                                (let ((_%tl4658246744%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '1)))
                                      (_%target4658046741%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658246744%_)
                                      (_%__match7963079631%_
                                       _%e4644147250%_
                                       _%hd4644247254%_
                                       _%tl4644347257%_
                                       _%e4644447260%_
                                       _%hd4644547264%_
                                       _%tl4644647267%_
                                       _%e4644747270%_
                                       _%hd4644847274%_
                                       _%tl4644947277%_
                                       _%e4657746731%_
                                       _%hd4657846735%_
                                       _%tl4657946738%_
                                       _%__splice7934479345%_
                                       _%target4658046741%_
                                       _%tl4658246744%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
              (if (gx#stx-pair? _%hd4644847274%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4644847274%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4644647267%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4644647267%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4644147250%_
                                   _%hd4644247254%_
                                   _%tl4644347257%_
                                   _%e4644447260%_
                                   _%hd4644547264%_
                                   _%tl4644647267%_
                                   _%e4644747270%_
                                   _%hd4644847274%_
                                   _%tl4644947277%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4644847274%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4644847274%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644647267%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644647267%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4644147250%_
                       _%hd4644247254%_
                       _%tl4644347257%_
                       _%e4644447260%_
                       _%hd4644547264%_
                       _%tl4644647267%_
                       _%e4644747270%_
                       _%hd4644847274%_
                       _%tl4644947277%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))))
                                  (if (gx#stx-null? _%tl4645547297%_)
                                      (if (gx#stx-pair/null? _%tl4644647267%_)
                                          (let ((_%__splice7933279333%_
                                                 (gx#syntax-split-splice
                                                  _%tl4644647267%_
                                                  '0)))
                                            (let ((_%tl4649547150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7933279333%_
                                                      '1)))
                                                  (_%target4649347147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7933279333%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4649547150%_)
                                                  (_%__match7949879499%_
                                                   _%e4644147250%_
                                                   _%hd4644247254%_
                                                   _%tl4644347257%_
                                                   _%e4644447260%_
                                                   _%hd4644547264%_
                                                   _%tl4644647267%_
                                                   _%e4644747270%_
                                                   _%hd4644847274%_
                                                   _%tl4644947277%_
                                                   _%e4645047280%_
                                                   _%hd4645147284%_
                                                   _%tl4645247287%_
                                                   _%e4645347290%_
                                                   _%hd4645447294%_
                                                   _%tl4645547297%_
                                                   _%__splice7933279333%_
                                                   _%target4649347147%_
                                                   _%tl4649547150%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4644847274%_)
                                                      (let ((_%e4657746731%_
                                                             (gx#syntax-e
                                                              _%hd4644847274%_)))
                                                        (let ((_%tl4657946738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746731%_)))
                      (_%hd4657846735%_
                       (let () (declare (not safe)) (##car _%e4657746731%_))))
                  (let () (declare (not safe)) (_%g4640146610%_))))
              (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4644847274%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4644847274%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                      (if (gx#stx-pair? _%hd4644847274%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4644847274%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644647267%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644647267%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4644147250%_
                                                           _%hd4644247254%_
                                                           _%tl4644347257%_
                                                           _%e4644447260%_
                                                           _%hd4644547264%_
                                                           _%tl4644647267%_
                                                           _%e4644747270%_
                                                           _%hd4644847274%_
                                                           _%tl4644947277%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                              (if (gx#stx-null? _%tl4645547297%_)
                                  (if (gx#stx-pair/null? _%tl4644647267%_)
                                      (let ((_%__splice7933279333%_
                                             (gx#syntax-split-splice
                                              _%tl4644647267%_
                                              '0)))
                                        (let ((_%tl4649547150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7933279333%_
                                                  '1)))
                                              (_%target4649347147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7933279333%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4649547150%_)
                                              (_%__match7949879499%_
                                               _%e4644147250%_
                                               _%hd4644247254%_
                                               _%tl4644347257%_
                                               _%e4644447260%_
                                               _%hd4644547264%_
                                               _%tl4644647267%_
                                               _%e4644747270%_
                                               _%hd4644847274%_
                                               _%tl4644947277%_
                                               _%e4645047280%_
                                               _%hd4645147284%_
                                               _%tl4645247287%_
                                               _%e4645347290%_
                                               _%hd4645447294%_
                                               _%tl4645547297%_
                                               _%__splice7933279333%_
                                               _%target4649347147%_
                                               _%tl4649547150%_)
                                              (if (gx#stx-pair?
                                                   _%hd4644847274%_)
                                                  (let ((_%e4657746731%_
                                                         (gx#syntax-e
                                                          _%hd4644847274%_)))
                                                    (let ((_%tl4657946738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746731%_)))
                                                          (_%hd4657846735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746731%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640146610%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))))
                                      (if (gx#stx-pair? _%hd4644847274%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4644847274%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                  (if (gx#identifier? _%hd4645147284%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85003_|
                                           _%hd4645147284%_)
                                          (if (gx#stx-pair? _%tl4645547297%_)
                                              (let ((_%e4654946863%_
                                                     (gx#syntax-e
                                                      _%tl4645547297%_)))
                                                (let ((_%tl4655146870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4654946863%_)))
                                                      (_%hd4655046867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4654946863%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4655146870%_)
                                                      (let ((_%e4655246873%_
                                                             (gx#syntax-e
                                                              _%tl4655146870%_)))
                                                        (let ((_%tl4655446880%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4655246873%_)))
                      (_%hd4655346877%_
                       (let () (declare (not safe)) (##car _%e4655246873%_))))
                  (if (gx#stx-null? _%tl4655446880%_)
                      (if (gx#stx-pair/null? _%tl4644647267%_)
                          (let ((_%__splice7934079341%_
                                 (gx#syntax-split-splice _%tl4644647267%_ '0)))
                            (let ((_%tl4655746886%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934079341%_ '1)))
                                  (_%target4655546883%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934079341%_
                                      '0))))
                              (if (gx#stx-null? _%tl4655746886%_)
                                  (_%__match7959879599%_
                                   _%e4644147250%_
                                   _%hd4644247254%_
                                   _%tl4644347257%_
                                   _%e4644447260%_
                                   _%hd4644547264%_
                                   _%tl4644647267%_
                                   _%e4644747270%_
                                   _%hd4644847274%_
                                   _%tl4644947277%_
                                   _%e4645047280%_
                                   _%hd4645147284%_
                                   _%tl4645247287%_
                                   _%e4645347290%_
                                   _%hd4645447294%_
                                   _%tl4645547297%_
                                   _%e4654946863%_
                                   _%hd4655046867%_
                                   _%tl4655146870%_
                                   _%e4655246873%_
                                   _%hd4655346877%_
                                   _%tl4655446880%_
                                   _%__splice7934079341%_
                                   _%target4655546883%_
                                   _%tl4655746886%_)
                                  (if (gx#stx-pair? _%hd4644847274%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4644847274%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))
                          (if (gx#stx-pair? _%hd4644847274%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4644847274%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                      (if (gx#stx-pair? _%hd4644847274%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4644847274%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (if (gx#stx-pair/null? _%tl4644647267%_)
                                  (let ((_%__splice7934479345%_
                                         (gx#syntax-split-splice
                                          _%tl4644647267%_
                                          '0)))
                                    (let ((_%tl4658246744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '1)))
                                          (_%target4658046741%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658246744%_)
                                          (_%__match7963079631%_
                                           _%e4644147250%_
                                           _%hd4644247254%_
                                           _%tl4644347257%_
                                           _%e4644447260%_
                                           _%hd4644547264%_
                                           _%tl4644647267%_
                                           _%e4644747270%_
                                           _%hd4644847274%_
                                           _%tl4644947277%_
                                           _%e4657746731%_
                                           _%hd4657846735%_
                                           _%tl4657946738%_
                                           _%__splice7934479345%_
                                           _%target4658046741%_
                                           _%tl4658246744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_))))))
              (if (gx#stx-pair? _%hd4644847274%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4644847274%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4644647267%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4644647267%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4644147250%_
                                   _%hd4644247254%_
                                   _%tl4644347257%_
                                   _%e4644447260%_
                                   _%hd4644547264%_
                                   _%tl4644647267%_
                                   _%e4644747270%_
                                   _%hd4644847274%_
                                   _%tl4644947277%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4644847274%_)
                                                  (let ((_%e4657746731%_
                                                         (gx#syntax-e
                                                          _%hd4644847274%_)))
                                                    (let ((_%tl4657946738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746731%_)))
                                                          (_%hd4657846735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746731%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644647267%_)
                                                          (let ((_%__splice7934479345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644647267%_ '0)))
                    (let ((_%tl4658246744%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '1)))
                          (_%target4658046741%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '0))))
                      (if (gx#stx-null? _%tl4658246744%_)
                          (_%__match7963079631%_
                           _%e4644147250%_
                           _%hd4644247254%_
                           _%tl4644347257%_
                           _%e4644447260%_
                           _%hd4644547264%_
                           _%tl4644647267%_
                           _%e4644747270%_
                           _%hd4644847274%_
                           _%tl4644947277%_
                           _%e4657746731%_
                           _%hd4657846735%_
                           _%tl4657946738%_
                           _%__splice7934479345%_
                           _%target4658046741%_
                           _%tl4658246744%_)
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))
                                          (if (gx#stx-pair? _%hd4644847274%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4644847274%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644647267%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644647267%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4644147250%_
                       _%hd4644247254%_
                       _%tl4644347257%_
                       _%e4644447260%_
                       _%hd4644547264%_
                       _%tl4644647267%_
                       _%e4644747270%_
                       _%hd4644847274%_
                       _%tl4644947277%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                      (if (gx#stx-pair? _%hd4644847274%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4644847274%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644647267%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644647267%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4644147250%_
                                                           _%hd4644247254%_
                                                           _%tl4644347257%_
                                                           _%e4644447260%_
                                                           _%hd4644547264%_
                                                           _%tl4644647267%_
                                                           _%e4644747270%_
                                                           _%hd4644847274%_
                                                           _%tl4644947277%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))))
                          (if (gx#stx-null? _%tl4645547297%_)
                              (if (gx#stx-pair/null? _%tl4644647267%_)
                                  (let ((_%__splice7933279333%_
                                         (gx#syntax-split-splice
                                          _%tl4644647267%_
                                          '0)))
                                    (let ((_%tl4649547150%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7933279333%_
                                              '1)))
                                          (_%target4649347147%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7933279333%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4649547150%_)
                                          (_%__match7949879499%_
                                           _%e4644147250%_
                                           _%hd4644247254%_
                                           _%tl4644347257%_
                                           _%e4644447260%_
                                           _%hd4644547264%_
                                           _%tl4644647267%_
                                           _%e4644747270%_
                                           _%hd4644847274%_
                                           _%tl4644947277%_
                                           _%e4645047280%_
                                           _%hd4645147284%_
                                           _%tl4645247287%_
                                           _%e4645347290%_
                                           _%hd4645447294%_
                                           _%tl4645547297%_
                                           _%__splice7933279333%_
                                           _%target4649347147%_
                                           _%tl4649547150%_)
                                          (if (gx#stx-pair? _%hd4644847274%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4644847274%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))))
                                  (if (gx#stx-pair? _%hd4644847274%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4644847274%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                              (if (gx#identifier? _%hd4645147284%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85003_|
                                       _%hd4645147284%_)
                                      (if (gx#stx-pair? _%tl4645547297%_)
                                          (let ((_%e4654946863%_
                                                 (gx#syntax-e
                                                  _%tl4645547297%_)))
                                            (let ((_%tl4655146870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4654946863%_)))
                                                  (_%hd4655046867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4654946863%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4655146870%_)
                                                  (let ((_%e4655246873%_
                                                         (gx#syntax-e
                                                          _%tl4655146870%_)))
                                                    (let ((_%tl4655446880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4655246873%_)))
                                                          (_%hd4655346877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4655246873%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4655446880%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4644647267%_)
                                                              (let ((_%__splice7934079341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4644647267%_ '0)))
                        (let ((_%tl4655746886%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934079341%_ '1)))
                              (_%target4655546883%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934079341%_ '0))))
                          (if (gx#stx-null? _%tl4655746886%_)
                              (_%__match7959879599%_
                               _%e4644147250%_
                               _%hd4644247254%_
                               _%tl4644347257%_
                               _%e4644447260%_
                               _%hd4644547264%_
                               _%tl4644647267%_
                               _%e4644747270%_
                               _%hd4644847274%_
                               _%tl4644947277%_
                               _%e4645047280%_
                               _%hd4645147284%_
                               _%tl4645247287%_
                               _%e4645347290%_
                               _%hd4645447294%_
                               _%tl4645547297%_
                               _%e4654946863%_
                               _%hd4655046867%_
                               _%tl4655146870%_
                               _%e4655246873%_
                               _%hd4655346877%_
                               _%tl4655446880%_
                               _%__splice7934079341%_
                               _%target4655546883%_
                               _%tl4655746886%_)
                              (if (gx#stx-pair? _%hd4644847274%_)
                                  (let ((_%e4657746731%_
                                         (gx#syntax-e _%hd4644847274%_)))
                                    (let ((_%tl4657946738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657746731%_)))
                                          (_%hd4657846735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657746731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))))
                      (if (gx#stx-pair? _%hd4644847274%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4644847274%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                  (if (gx#stx-pair? _%hd4644847274%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4644847274%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (if (gx#stx-pair/null? _%tl4644647267%_)
                              (let ((_%__splice7934479345%_
                                     (gx#syntax-split-splice
                                      _%tl4644647267%_
                                      '0)))
                                (let ((_%tl4658246744%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '1)))
                                      (_%target4658046741%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658246744%_)
                                      (_%__match7963079631%_
                                       _%e4644147250%_
                                       _%hd4644247254%_
                                       _%tl4644347257%_
                                       _%e4644447260%_
                                       _%hd4644547264%_
                                       _%tl4644647267%_
                                       _%e4644747270%_
                                       _%hd4644847274%_
                                       _%tl4644947277%_
                                       _%e4657746731%_
                                       _%hd4657846735%_
                                       _%tl4657946738%_
                                       _%__splice7934479345%_
                                       _%target4658046741%_
                                       _%tl4658246744%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4644847274%_)
                                                      (let ((_%e4657746731%_
                                                             (gx#syntax-e
                                                              _%hd4644847274%_)))
                                                        (let ((_%tl4657946738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746731%_)))
                      (_%hd4657846735%_
                       (let () (declare (not safe)) (##car _%e4657746731%_))))
                  (if (gx#stx-pair/null? _%tl4644647267%_)
                      (let ((_%__splice7934479345%_
                             (gx#syntax-split-splice _%tl4644647267%_ '0)))
                        (let ((_%tl4658246744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '1)))
                              (_%target4658046741%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '0))))
                          (if (gx#stx-null? _%tl4658246744%_)
                              (_%__match7963079631%_
                               _%e4644147250%_
                               _%hd4644247254%_
                               _%tl4644347257%_
                               _%e4644447260%_
                               _%hd4644547264%_
                               _%tl4644647267%_
                               _%e4644747270%_
                               _%hd4644847274%_
                               _%tl4644947277%_
                               _%e4657746731%_
                               _%hd4657846735%_
                               _%tl4657946738%_
                               _%__splice7934479345%_
                               _%target4658046741%_
                               _%tl4658246744%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4644847274%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4644847274%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644647267%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644647267%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4644147250%_
                       _%hd4644247254%_
                       _%tl4644347257%_
                       _%e4644447260%_
                       _%hd4644547264%_
                       _%tl4644647267%_
                       _%e4644747270%_
                       _%hd4644847274%_
                       _%tl4644947277%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                      (if (gx#stx-pair? _%hd4644847274%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4644847274%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644647267%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644647267%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4644147250%_
                                                           _%hd4644247254%_
                                                           _%tl4644347257%_
                                                           _%e4644447260%_
                                                           _%hd4644547264%_
                                                           _%tl4644647267%_
                                                           _%e4644747270%_
                                                           _%hd4644847274%_
                                                           _%tl4644947277%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                  (if (gx#stx-pair? _%hd4644847274%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4644847274%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4644647267%_)
                                              (let ((_%__splice7934479345%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644647267%_
                                                      '0)))
                                                (let ((_%tl4658246744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '1)))
                                                      (_%target4658046741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658246744%_)
                                                      (_%__match7963079631%_
                                                       _%e4644147250%_
                                                       _%hd4644247254%_
                                                       _%tl4644347257%_
                                                       _%e4644447260%_
                                                       _%hd4644547264%_
                                                       _%tl4644647267%_
                                                       _%e4644747270%_
                                                       _%hd4644847274%_
                                                       _%tl4644947277%_
                                                       _%e4657746731%_
                                                       _%hd4657846735%_
                                                       _%tl4657946738%_
                                                       _%__splice7934479345%_
                                                       _%target4658046741%_
                                                       _%tl4658246744%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640146610%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))))
                   (_%__match7939679397%_
                    (lambda (_%e4640847426%_
                             _%hd4640947430%_
                             _%tl4641047433%_
                             _%e4641147436%_
                             _%hd4641247440%_
                             _%tl4641347443%_
                             _%e4641447446%_
                             _%hd4641547450%_
                             _%tl4641647453%_
                             _%e4641747456%_
                             _%hd4641847460%_
                             _%tl4641947463%_
                             _%e4642047466%_
                             _%hd4642147470%_
                             _%tl4642247473%_
                             _%e4642347476%_
                             _%hd4642447480%_
                             _%tl4642547483%_
                             _%__splice7932479325%_
                             _%target4642647486%_
                             _%tl4642847489%_)
                      (letrec ((_%loop4642947492%_
                                (lambda (_%hd4642747496%_ _%body4643347499%_)
                                  (if (gx#stx-pair? _%hd4642747496%_)
                                      (let ((_%e4643047502%_
                                             (gx#syntax-e _%hd4642747496%_)))
                                        (let ((_%lp-tl4643247509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4643047502%_)))
                                              (_%lp-hd4643147506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4643047502%_))))
                                          (_%loop4642947492%_
                                           _%lp-tl4643247509%_
                                           (cons _%lp-hd4643147506%_
                                                 _%body4643347499%_))))
                                      (let ((_%body4643447512%_
                                             (reverse _%body4643347499%_)))
                                        (let ((_%L47516%_ _%body4643447512%_)
                                              (_%L47518%_ _%hd4642447480%_)
                                              (_%L47519%_ _%hd4642147470%_)
                                              (_%L47520%_ _%hd4641847460%_)
                                              (_%L47521%_ _%hd4641547450%_))
                                          (if (and (gx#identifier? _%L47521%_)
                                                   (gx#identifier? _%L47519%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47519%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47519%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47519%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47519%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47519%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7932279323%_
                                               _%L47516%_
                                               _%L47518%_
                                               _%L47519%_
                                               _%L47520%_
                                               _%L47521%_)
                                              (_%__match7942679427%_
                                               _%e4640847426%_
                                               _%hd4640947430%_
                                               _%tl4641047433%_
                                               _%e4641147436%_
                                               _%hd4641247440%_
                                               _%tl4641347443%_
                                               _%e4641447446%_
                                               _%hd4641547450%_
                                               _%tl4641647453%_
                                               _%e4641747456%_
                                               _%hd4641847460%_
                                               _%tl4641947463%_
                                               _%e4642047466%_
                                               _%hd4642147470%_
                                               _%tl4642247473%_))))))))
                        (_%loop4642947492%_ _%target4642647486%_ '())))))
              (if (gx#stx-pair? _%__stx7931979320%_)
                  (let ((_%e4640847426%_ (gx#syntax-e _%__stx7931979320%_)))
                    (let ((_%tl4641047433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4640847426%_)))
                          (_%hd4640947430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4640847426%_))))
                      (if (gx#stx-pair? _%tl4641047433%_)
                          (let ((_%e4641147436%_
                                 (gx#syntax-e _%tl4641047433%_)))
                            (let ((_%tl4641347443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4641147436%_)))
                                  (_%hd4641247440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4641147436%_))))
                              (if (gx#stx-pair? _%hd4641247440%_)
                                  (let ((_%e4641447446%_
                                         (gx#syntax-e _%hd4641247440%_)))
                                    (let ((_%tl4641647453%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4641447446%_)))
                                          (_%hd4641547450%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4641447446%_))))
                                      (if (gx#stx-pair? _%tl4641647453%_)
                                          (let ((_%e4641747456%_
                                                 (gx#syntax-e
                                                  _%tl4641647453%_)))
                                            (let ((_%tl4641947463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4641747456%_)))
                                                  (_%hd4641847460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4641747456%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4641947463%_)
                                                  (let ((_%e4642047466%_
                                                         (gx#syntax-e
                                                          _%tl4641947463%_)))
                                                    (let ((_%tl4642247473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4642047466%_)))
                                                          (_%hd4642147470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4642047466%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4642247473%_)
                                                          (let ((_%e4642347476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4642247473%_)))
                    (let ((_%tl4642547483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4642347476%_)))
                          (_%hd4642447480%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4642347476%_))))
                      (if (gx#stx-null? _%tl4642547483%_)
                          (if (gx#stx-pair/null? _%tl4641347443%_)
                              (let ((_%__splice7932479325%_
                                     (gx#syntax-split-splice
                                      _%tl4641347443%_
                                      '0)))
                                (let ((_%tl4642847489%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7932479325%_
                                          '1)))
                                      (_%target4642647486%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7932479325%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4642847489%_)
                                      (_%__match7939679397%_
                                       _%e4640847426%_
                                       _%hd4640947430%_
                                       _%tl4641047433%_
                                       _%e4641147436%_
                                       _%hd4641247440%_
                                       _%tl4641347443%_
                                       _%e4641447446%_
                                       _%hd4641547450%_
                                       _%tl4641647453%_
                                       _%e4641747456%_
                                       _%hd4641847460%_
                                       _%tl4641947463%_
                                       _%e4642047466%_
                                       _%hd4642147470%_
                                       _%tl4642247473%_
                                       _%e4642347476%_
                                       _%hd4642447480%_
                                       _%tl4642547483%_
                                       _%__splice7932479325%_
                                       _%target4642647486%_
                                       _%tl4642847489%_)
                                      (if (gx#stx-pair? _%hd4641547450%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4641547450%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))))
                              (if (gx#stx-pair? _%hd4641547450%_)
                                  (let ((_%e4657746731%_
                                         (gx#syntax-e _%hd4641547450%_)))
                                    (let ((_%tl4657946738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657746731%_)))
                                          (_%hd4657846735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657746731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                          (if (gx#identifier? _%hd4642147470%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g85004_|
                                   _%hd4642147470%_)
                                  (if (gx#stx-pair? _%tl4642547483%_)
                                      (let ((_%e4645947310%_
                                             (gx#syntax-e _%tl4642547483%_)))
                                        (let ((_%tl4646147317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4645947310%_)))
                                              (_%hd4646047314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4645947310%_))))
                                          (if (gx#stx-pair? _%tl4646147317%_)
                                              (let ((_%e4646247320%_
                                                     (gx#syntax-e
                                                      _%tl4646147317%_)))
                                                (let ((_%tl4646447327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4646247320%_)))
                                                      (_%hd4646347324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4646247320%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4646447327%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641347443%_)
                                                          (let ((_%__splice7932879329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641347443%_ '0)))
                    (let ((_%tl4646747333%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7932879329%_ '1)))
                          (_%target4646547330%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7932879329%_ '0))))
                      (if (gx#stx-null? _%tl4646747333%_)
                          (_%__match7945879459%_
                           _%e4640847426%_
                           _%hd4640947430%_
                           _%tl4641047433%_
                           _%e4641147436%_
                           _%hd4641247440%_
                           _%tl4641347443%_
                           _%e4641447446%_
                           _%hd4641547450%_
                           _%tl4641647453%_
                           _%e4641747456%_
                           _%hd4641847460%_
                           _%tl4641947463%_
                           _%e4642047466%_
                           _%hd4642147470%_
                           _%tl4642247473%_
                           _%e4642347476%_
                           _%hd4642447480%_
                           _%tl4642547483%_
                           _%e4645947310%_
                           _%hd4646047314%_
                           _%tl4646147317%_
                           _%e4646247320%_
                           _%hd4646347324%_
                           _%tl4646447327%_
                           _%__splice7932879329%_
                           _%target4646547330%_
                           _%tl4646747333%_)
                          (if (gx#stx-pair? _%hd4641547450%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4641547450%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_))))))
                  (if (gx#stx-pair? _%hd4641547450%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
              (if (gx#stx-pair? _%hd4641547450%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4641347443%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4641347443%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4640847426%_
                                   _%hd4640947430%_
                                   _%tl4641047433%_
                                   _%e4641147436%_
                                   _%hd4641247440%_
                                   _%tl4641347443%_
                                   _%e4641447446%_
                                   _%hd4641547450%_
                                   _%tl4641647453%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4641847460%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g85003_|
                                                       _%hd4641847460%_)
                                                      (if (gx#stx-null?
                                                           _%tl4646147317%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4641347443%_)
                                                              (let ((_%__splice7934079341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4641347443%_ '0)))
                        (let ((_%tl4655746886%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934079341%_ '1)))
                              (_%target4655546883%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934079341%_ '0))))
                          (if (gx#stx-null? _%tl4655746886%_)
                              (_%__match7959879599%_
                               _%e4640847426%_
                               _%hd4640947430%_
                               _%tl4641047433%_
                               _%e4641147436%_
                               _%hd4641247440%_
                               _%tl4641347443%_
                               _%e4641447446%_
                               _%hd4641547450%_
                               _%tl4641647453%_
                               _%e4641747456%_
                               _%hd4641847460%_
                               _%tl4641947463%_
                               _%e4642047466%_
                               _%hd4642147470%_
                               _%tl4642247473%_
                               _%e4642347476%_
                               _%hd4642447480%_
                               _%tl4642547483%_
                               _%e4645947310%_
                               _%hd4646047314%_
                               _%tl4646147317%_
                               _%__splice7934079341%_
                               _%target4655546883%_
                               _%tl4655746886%_)
                              (if (gx#stx-pair? _%hd4641547450%_)
                                  (let ((_%e4657746731%_
                                         (gx#syntax-e _%hd4641547450%_)))
                                    (let ((_%tl4657946738%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4657746731%_)))
                                          (_%hd4657846735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4657746731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))))
                      (if (gx#stx-pair? _%hd4641547450%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4641547450%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                  (if (gx#stx-pair? _%hd4641547450%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (if (gx#stx-pair/null? _%tl4641347443%_)
                              (let ((_%__splice7934479345%_
                                     (gx#syntax-split-splice
                                      _%tl4641347443%_
                                      '0)))
                                (let ((_%tl4658246744%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '1)))
                                      (_%target4658046741%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934479345%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4658246744%_)
                                      (_%__match7963079631%_
                                       _%e4640847426%_
                                       _%hd4640947430%_
                                       _%tl4641047433%_
                                       _%e4641147436%_
                                       _%hd4641247440%_
                                       _%tl4641347443%_
                                       _%e4641447446%_
                                       _%hd4641547450%_
                                       _%tl4641647453%_
                                       _%e4657746731%_
                                       _%hd4657846735%_
                                       _%tl4657946738%_
                                       _%__splice7934479345%_
                                       _%target4658046741%_
                                       _%tl4658246744%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
              (if (gx#stx-pair? _%hd4641547450%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4641347443%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4641347443%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4640847426%_
                                   _%hd4640947430%_
                                   _%tl4641047433%_
                                   _%e4641147436%_
                                   _%hd4641247440%_
                                   _%tl4641347443%_
                                   _%e4641447446%_
                                   _%hd4641547450%_
                                   _%tl4641647453%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641547450%_)
                                                      (let ((_%e4657746731%_
                                                             (gx#syntax-e
                                                              _%hd4641547450%_)))
                                                        (let ((_%tl4657946738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746731%_)))
                      (_%hd4657846735%_
                       (let () (declare (not safe)) (##car _%e4657746731%_))))
                  (if (gx#stx-pair/null? _%tl4641347443%_)
                      (let ((_%__splice7934479345%_
                             (gx#syntax-split-splice _%tl4641347443%_ '0)))
                        (let ((_%tl4658246744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '1)))
                              (_%target4658046741%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '0))))
                          (if (gx#stx-null? _%tl4658246744%_)
                              (_%__match7963079631%_
                               _%e4640847426%_
                               _%hd4640947430%_
                               _%tl4641047433%_
                               _%e4641147436%_
                               _%hd4641247440%_
                               _%tl4641347443%_
                               _%e4641447446%_
                               _%hd4641547450%_
                               _%tl4641647453%_
                               _%e4657746731%_
                               _%hd4657846735%_
                               _%tl4657946738%_
                               _%__splice7934479345%_
                               _%target4658046741%_
                               _%tl4658246744%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4641547450%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4641547450%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641347443%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641347443%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4640847426%_
                                                           _%hd4640947430%_
                                                           _%tl4641047433%_
                                                           _%e4641147436%_
                                                           _%hd4641247440%_
                                                           _%tl4641347443%_
                                                           _%e4641447446%_
                                                           _%hd4641547450%_
                                                           _%tl4641647453%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                  (if (gx#identifier? _%hd4641847460%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85003_|
                                           _%hd4641847460%_)
                                          (if (gx#stx-pair? _%tl4642547483%_)
                                              (let ((_%e4655246873%_
                                                     (gx#syntax-e
                                                      _%tl4642547483%_)))
                                                (let ((_%tl4655446880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4655246873%_)))
                                                      (_%hd4655346877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4655246873%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4655446880%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641347443%_)
                                                          (let ((_%__splice7934079341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641347443%_ '0)))
                    (let ((_%tl4655746886%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934079341%_ '1)))
                          (_%target4655546883%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934079341%_ '0))))
                      (if (gx#stx-null? _%tl4655746886%_)
                          (_%__match7959879599%_
                           _%e4640847426%_
                           _%hd4640947430%_
                           _%tl4641047433%_
                           _%e4641147436%_
                           _%hd4641247440%_
                           _%tl4641347443%_
                           _%e4641447446%_
                           _%hd4641547450%_
                           _%tl4641647453%_
                           _%e4641747456%_
                           _%hd4641847460%_
                           _%tl4641947463%_
                           _%e4642047466%_
                           _%hd4642147470%_
                           _%tl4642247473%_
                           _%e4642347476%_
                           _%hd4642447480%_
                           _%tl4642547483%_
                           _%e4655246873%_
                           _%hd4655346877%_
                           _%tl4655446880%_
                           _%__splice7934079341%_
                           _%target4655546883%_
                           _%tl4655746886%_)
                          (if (gx#stx-pair? _%hd4641547450%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4641547450%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_))))))
                  (if (gx#stx-pair? _%hd4641547450%_)
                      (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                        (let ((_%tl4657946738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4657746731%_)))
                              (_%hd4657846735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4657746731%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
              (if (gx#stx-pair? _%hd4641547450%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (if (gx#stx-pair/null? _%tl4641347443%_)
                          (let ((_%__splice7934479345%_
                                 (gx#syntax-split-splice _%tl4641347443%_ '0)))
                            (let ((_%tl4658246744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7934479345%_ '1)))
                                  (_%target4658046741%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7934479345%_
                                      '0))))
                              (if (gx#stx-null? _%tl4658246744%_)
                                  (_%__match7963079631%_
                                   _%e4640847426%_
                                   _%hd4640947430%_
                                   _%tl4641047433%_
                                   _%e4641147436%_
                                   _%hd4641247440%_
                                   _%tl4641347443%_
                                   _%e4641447446%_
                                   _%hd4641547450%_
                                   _%tl4641647453%_
                                   _%e4657746731%_
                                   _%hd4657846735%_
                                   _%tl4657946738%_
                                   _%__splice7934479345%_
                                   _%target4658046741%_
                                   _%tl4658246744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4641547450%_)
                                                  (let ((_%e4657746731%_
                                                         (gx#syntax-e
                                                          _%hd4641547450%_)))
                                                    (let ((_%tl4657946738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657746731%_)))
                                                          (_%hd4657846735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657746731%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4641347443%_)
                                                          (let ((_%__splice7934479345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4641347443%_ '0)))
                    (let ((_%tl4658246744%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '1)))
                          (_%target4658046741%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934479345%_ '0))))
                      (if (gx#stx-null? _%tl4658246744%_)
                          (_%__match7963079631%_
                           _%e4640847426%_
                           _%hd4640947430%_
                           _%tl4641047433%_
                           _%e4641147436%_
                           _%hd4641247440%_
                           _%tl4641347443%_
                           _%e4641447446%_
                           _%hd4641547450%_
                           _%tl4641647453%_
                           _%e4657746731%_
                           _%hd4657846735%_
                           _%tl4657946738%_
                           _%__splice7934479345%_
                           _%target4658046741%_
                           _%tl4658246744%_)
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_))))
                                          (if (gx#stx-pair? _%hd4641547450%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4641547450%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641347443%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641347443%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4640847426%_
                       _%hd4640947430%_
                       _%tl4641047433%_
                       _%e4641147436%_
                       _%hd4641247440%_
                       _%tl4641347443%_
                       _%e4641447446%_
                       _%hd4641547450%_
                       _%tl4641647453%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                      (if (gx#stx-pair? _%hd4641547450%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4641547450%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641347443%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641347443%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4640847426%_
                                                           _%hd4640947430%_
                                                           _%tl4641047433%_
                                                           _%e4641147436%_
                                                           _%hd4641247440%_
                                                           _%tl4641347443%_
                                                           _%e4641447446%_
                                                           _%hd4641547450%_
                                                           _%tl4641647453%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                              (if (gx#identifier? _%hd4641847460%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85003_|
                                       _%hd4641847460%_)
                                      (if (gx#stx-pair? _%tl4642547483%_)
                                          (let ((_%e4655246873%_
                                                 (gx#syntax-e
                                                  _%tl4642547483%_)))
                                            (let ((_%tl4655446880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4655246873%_)))
                                                  (_%hd4655346877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4655246873%_))))
                                              (if (gx#stx-null?
                                                   _%tl4655446880%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641347443%_)
                                                      (let ((_%__splice7934079341%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641347443%_
                                                              '0)))
                                                        (let ((_%tl4655746886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934079341%_ '1)))
                      (_%target4655546883%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934079341%_ '0))))
                  (if (gx#stx-null? _%tl4655746886%_)
                      (_%__match7959879599%_
                       _%e4640847426%_
                       _%hd4640947430%_
                       _%tl4641047433%_
                       _%e4641147436%_
                       _%hd4641247440%_
                       _%tl4641347443%_
                       _%e4641447446%_
                       _%hd4641547450%_
                       _%tl4641647453%_
                       _%e4641747456%_
                       _%hd4641847460%_
                       _%tl4641947463%_
                       _%e4642047466%_
                       _%hd4642147470%_
                       _%tl4642247473%_
                       _%e4642347476%_
                       _%hd4642447480%_
                       _%tl4642547483%_
                       _%e4655246873%_
                       _%hd4655346877%_
                       _%tl4655446880%_
                       _%__splice7934079341%_
                       _%target4655546883%_
                       _%tl4655746886%_)
                      (if (gx#stx-pair? _%hd4641547450%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4641547450%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                          (let () (declare (not safe)) (_%g4640146610%_))))))
              (if (gx#stx-pair? _%hd4641547450%_)
                  (let ((_%e4657746731%_ (gx#syntax-e _%hd4641547450%_)))
                    (let ((_%tl4657946738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4657746731%_)))
                          (_%hd4657846735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4657746731%_))))
                      (let () (declare (not safe)) (_%g4640146610%_))))
                  (let () (declare (not safe)) (_%g4640146610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641547450%_)
                                                      (let ((_%e4657746731%_
                                                             (gx#syntax-e
                                                              _%hd4641547450%_)))
                                                        (let ((_%tl4657946738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746731%_)))
                      (_%hd4657846735%_
                       (let () (declare (not safe)) (##car _%e4657746731%_))))
                  (if (gx#stx-pair/null? _%tl4641347443%_)
                      (let ((_%__splice7934479345%_
                             (gx#syntax-split-splice _%tl4641347443%_ '0)))
                        (let ((_%tl4658246744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '1)))
                              (_%target4658046741%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '0))))
                          (if (gx#stx-null? _%tl4658246744%_)
                              (_%__match7963079631%_
                               _%e4640847426%_
                               _%hd4640947430%_
                               _%tl4641047433%_
                               _%e4641147436%_
                               _%hd4641247440%_
                               _%tl4641347443%_
                               _%e4641447446%_
                               _%hd4641547450%_
                               _%tl4641647453%_
                               _%e4657746731%_
                               _%hd4657846735%_
                               _%tl4657946738%_
                               _%__splice7934479345%_
                               _%target4658046741%_
                               _%tl4658246744%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4641547450%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4641547450%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641347443%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641347443%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4640847426%_
                       _%hd4640947430%_
                       _%tl4641047433%_
                       _%e4641147436%_
                       _%hd4641247440%_
                       _%tl4641347443%_
                       _%e4641447446%_
                       _%hd4641547450%_
                       _%tl4641647453%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))
                                      (if (gx#stx-pair? _%hd4641547450%_)
                                          (let ((_%e4657746731%_
                                                 (gx#syntax-e
                                                  _%hd4641547450%_)))
                                            (let ((_%tl4657946738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657746731%_)))
                                                  (_%hd4657846735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657746731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4641347443%_)
                                                  (let ((_%__splice7934479345%_
                                                         (gx#syntax-split-splice
                                                          _%tl4641347443%_
                                                          '0)))
                                                    (let ((_%tl4658246744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '1)))
                                                          (_%target4658046741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7934479345%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4658246744%_)
                                                          (_%__match7963079631%_
                                                           _%e4640847426%_
                                                           _%hd4640947430%_
                                                           _%tl4641047433%_
                                                           _%e4641147436%_
                                                           _%hd4641247440%_
                                                           _%tl4641347443%_
                                                           _%e4641447446%_
                                                           _%hd4641547450%_
                                                           _%tl4641647453%_
                                                           _%e4657746731%_
                                                           _%hd4657846735%_
                                                           _%tl4657946738%_
                                                           _%__splice7934479345%_
                                                           _%target4658046741%_
                                                           _%tl4658246744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4640146610%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                  (if (gx#stx-pair? _%hd4641547450%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4641547450%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4641347443%_)
                                              (let ((_%__splice7934479345%_
                                                     (gx#syntax-split-splice
                                                      _%tl4641347443%_
                                                      '0)))
                                                (let ((_%tl4658246744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '1)))
                                                      (_%target4658046741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7934479345%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4658246744%_)
                                                      (_%__match7963079631%_
                                                       _%e4640847426%_
                                                       _%hd4640947430%_
                                                       _%tl4641047433%_
                                                       _%e4641147436%_
                                                       _%hd4641247440%_
                                                       _%tl4641347443%_
                                                       _%e4641447446%_
                                                       _%hd4641547450%_
                                                       _%tl4641647453%_
                                                       _%e4657746731%_
                                                       _%hd4657846735%_
                                                       _%tl4657946738%_
                                                       _%__splice7934479345%_
                                                       _%target4658046741%_
                                                       _%tl4658246744%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4640146610%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))))
                  (if (gx#stx-null? _%tl4642247473%_)
                      (if (gx#stx-pair/null? _%tl4641347443%_)
                          (let ((_%__splice7933279333%_
                                 (gx#syntax-split-splice _%tl4641347443%_ '0)))
                            (let ((_%tl4649547150%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7933279333%_ '1)))
                                  (_%target4649347147%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7933279333%_
                                      '0))))
                              (if (gx#stx-null? _%tl4649547150%_)
                                  (_%__match7949879499%_
                                   _%e4640847426%_
                                   _%hd4640947430%_
                                   _%tl4641047433%_
                                   _%e4641147436%_
                                   _%hd4641247440%_
                                   _%tl4641347443%_
                                   _%e4641447446%_
                                   _%hd4641547450%_
                                   _%tl4641647453%_
                                   _%e4641747456%_
                                   _%hd4641847460%_
                                   _%tl4641947463%_
                                   _%e4642047466%_
                                   _%hd4642147470%_
                                   _%tl4642247473%_
                                   _%__splice7933279333%_
                                   _%target4649347147%_
                                   _%tl4649547150%_)
                                  (if (gx#stx-pair? _%hd4641547450%_)
                                      (let ((_%e4657746731%_
                                             (gx#syntax-e _%hd4641547450%_)))
                                        (let ((_%tl4657946738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746731%_)))
                                              (_%hd4657846735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))
                          (if (gx#stx-pair? _%hd4641547450%_)
                              (let ((_%e4657746731%_
                                     (gx#syntax-e _%hd4641547450%_)))
                                (let ((_%tl4657946738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4657746731%_)))
                                      (_%hd4657846735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4657746731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_))))
                              (let () (declare (not safe)) (_%g4640146610%_))))
                      (if (gx#stx-pair? _%hd4641547450%_)
                          (let ((_%e4657746731%_
                                 (gx#syntax-e _%hd4641547450%_)))
                            (let ((_%tl4657946738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4657746731%_)))
                                  (_%hd4657846735%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4657746731%_))))
                              (if (gx#stx-pair/null? _%tl4641347443%_)
                                  (let ((_%__splice7934479345%_
                                         (gx#syntax-split-splice
                                          _%tl4641347443%_
                                          '0)))
                                    (let ((_%tl4658246744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '1)))
                                          (_%target4658046741%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7934479345%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4658246744%_)
                                          (_%__match7963079631%_
                                           _%e4640847426%_
                                           _%hd4640947430%_
                                           _%tl4641047433%_
                                           _%e4641147436%_
                                           _%hd4641247440%_
                                           _%tl4641347443%_
                                           _%e4641447446%_
                                           _%hd4641547450%_
                                           _%tl4641647453%_
                                           _%e4657746731%_
                                           _%hd4657846735%_
                                           _%tl4657946738%_
                                           _%__splice7934479345%_
                                           _%target4658046741%_
                                           _%tl4658246744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4640146610%_)))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4641547450%_)
                                                      (let ((_%e4657746731%_
                                                             (gx#syntax-e
                                                              _%hd4641547450%_)))
                                                        (let ((_%tl4657946738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657746731%_)))
                      (_%hd4657846735%_
                       (let () (declare (not safe)) (##car _%e4657746731%_))))
                  (if (gx#stx-pair/null? _%tl4641347443%_)
                      (let ((_%__splice7934479345%_
                             (gx#syntax-split-splice _%tl4641347443%_ '0)))
                        (let ((_%tl4658246744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '1)))
                              (_%target4658046741%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934479345%_ '0))))
                          (if (gx#stx-null? _%tl4658246744%_)
                              (_%__match7963079631%_
                               _%e4640847426%_
                               _%hd4640947430%_
                               _%tl4641047433%_
                               _%e4641147436%_
                               _%hd4641247440%_
                               _%tl4641347443%_
                               _%e4641447446%_
                               _%hd4641547450%_
                               _%tl4641647453%_
                               _%e4657746731%_
                               _%hd4657846735%_
                               _%tl4657946738%_
                               _%__splice7934479345%_
                               _%target4658046741%_
                               _%tl4658246744%_)
                              (let ()
                                (declare (not safe))
                                (_%g4640146610%_)))))
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4641547450%_)
                                              (let ((_%e4657746731%_
                                                     (gx#syntax-e
                                                      _%hd4641547450%_)))
                                                (let ((_%tl4657946738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657746731%_)))
                                                      (_%hd4657846735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657746731%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4641347443%_)
                                                      (let ((_%__splice7934479345%_
                                                             (gx#syntax-split-splice
                                                              _%tl4641347443%_
                                                              '0)))
                                                        (let ((_%tl4658246744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '1)))
                      (_%target4658046741%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7934479345%_ '0))))
                  (if (gx#stx-null? _%tl4658246744%_)
                      (_%__match7963079631%_
                       _%e4640847426%_
                       _%hd4640947430%_
                       _%tl4641047433%_
                       _%e4641147436%_
                       _%hd4641247440%_
                       _%tl4641347443%_
                       _%e4641447446%_
                       _%hd4641547450%_
                       _%tl4641647453%_
                       _%e4657746731%_
                       _%hd4657846735%_
                       _%tl4657946738%_
                       _%__splice7934479345%_
                       _%target4658046741%_
                       _%tl4658246744%_)
                      (let () (declare (not safe)) (_%g4640146610%_)))))
              (let () (declare (not safe)) (_%g4640146610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640146610%_))))))
                                  (if (gx#stx-null? _%hd4641247440%_)
                                      (if (gx#stx-pair/null? _%tl4641347443%_)
                                          (let ((_%__splice7934879349%_
                                                 (gx#syntax-split-splice
                                                  _%tl4641347443%_
                                                  '0)))
                                            (let ((_%tl4659846640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7934879349%_
                                                      '1)))
                                                  (_%target4659646637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7934879349%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4659846640%_)
                                                  (_%__match7965279653%_
                                                   _%e4640847426%_
                                                   _%hd4640947430%_
                                                   _%tl4641047433%_
                                                   _%e4641147436%_
                                                   _%hd4641247440%_
                                                   _%tl4641347443%_
                                                   _%__splice7934879349%_
                                                   _%target4659646637%_
                                                   _%tl4659846640%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4640146610%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4640146610%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640146610%_))))))
                          (let () (declare (not safe)) (_%g4640146610%_)))))
                  (let () (declare (not safe)) (_%g4640146610%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47584%_)
        (let* ((_%g4758847622%_
                (lambda (_%g4758947618%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4758947618%_)))
               (_%g4758747745%_
                (lambda (_%g4758947626%_)
                  (if (gx#stx-pair? _%g4758947626%_)
                      (let ((_%e4759347629%_ (gx#syntax-e _%g4758947626%_)))
                        (let ((_%hd4759447633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4759347629%_)))
                              (_%tl4759547636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4759347629%_))))
                          (if (gx#stx-pair? _%tl4759547636%_)
                              (let ((_%e4759647639%_
                                     (gx#syntax-e _%tl4759547636%_)))
                                (let ((_%hd4759747643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4759647639%_)))
                                      (_%tl4759847646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4759647639%_))))
                                  (if (gx#stx-pair? _%hd4759747643%_)
                                      (let ((_%e4759947649%_
                                             (gx#syntax-e _%hd4759747643%_)))
                                        (let ((_%hd4760047653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4759947649%_)))
                                              (_%tl4760147656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4759947649%_))))
                                          (if (gx#stx-pair? _%tl4760147656%_)
                                              (let ((_%e4760247659%_
                                                     (gx#syntax-e
                                                      _%tl4760147656%_)))
                                                (let ((_%hd4760347663%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4760247659%_)))
                                                      (_%tl4760447666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4760247659%_))))
                                                  (if (gx#identifier?
                                                       _%hd4760347663%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85005_|
                                                           _%hd4760347663%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4760447666%_)
                                                              (let ((_%e4760547669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4760447666%_)))
                        (let ((_%hd4760647673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4760547669%_)))
                              (_%tl4760747676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4760547669%_))))
                          (if (gx#stx-null? _%tl4760747676%_)
                              (if (gx#stx-pair/null? _%tl4759847646%_)
                                  (let ((_g85006_
                                         (gx#syntax-split-splice
                                          _%tl4759847646%_
                                          '0)))
                                    (begin
                                      (let ((_g85007_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85006_)
                                                   (##values-length _g85006_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85007_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85007_)))
                                      (let ((_%target4760847679%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85006_ 0)))
                                            (_%tl4761047682%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85006_ 1))))
                                        (if (gx#stx-null? _%tl4761047682%_)
                                            (letrec ((_%loop4761147685%_
                                                      (lambda (_%hd4760947689%_
                                                               _%body4761547692%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4760947689%_)
                                                            (let ((_%e4761247695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4760947689%_)))
                      (let ((_%lp-hd4761347699%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4761247695%_)))
                            (_%lp-tl4761447702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4761247695%_))))
                        (_%loop4761147685%_
                         _%lp-tl4761447702%_
                         (cons _%lp-hd4761347699%_ _%body4761547692%_))))
                    (let ((_%body4761647705%_ (reverse _%body4761547692%_)))
                      ((lambda (_%L47709%_ _%L47711%_ _%L47712%_)
                         (if (gx#identifier? _%L47712%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47711%_
                                               (cons _%L47712%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4773647739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4773747742%_)
                            (cons _%g4773647739%_ _%g4773747742%_))
                          '()
                          _%L47709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47711%_ (cons _%L47712%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4758847622%_ _%g4758947626%_)))
                       _%body4761647705%_
                       _%hd4760647673%_
                       _%hd4760047653%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4761147685%_
                                               _%target4760847679%_
                                               '()))
                                            (_%g4758847622%_
                                             _%g4758947626%_)))))
                                  (_%g4758847622%_ _%g4758947626%_))
                              (_%g4758847622%_ _%g4758947626%_))))
                      (_%g4758847622%_ _%g4758947626%_))
                  (_%g4758847622%_ _%g4758947626%_))
              (_%g4758847622%_ _%g4758947626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4758847622%_
                                               _%g4758947626%_))))
                                      (_%g4758847622%_ _%g4758947626%_))))
                              (_%g4758847622%_ _%g4758947626%_))))
                      (_%g4758847622%_ _%g4758947626%_)))))
          (_%g4758747745%_ _%$stx47584%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48312%_ _%slot48314%_)
        (let ((_%$e48316%_
               (let ((__obj84826 _%klass48312%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84826
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84826 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84826
                      'slot-types)))))
          (if _%$e48316%_
              ((lambda (_%slot-types48320%_)
                 (agetq _%slot48314%_ _%slot-types48320%_))
               _%$e48316%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48293%_ _%slot48295%_)
        (let ((_%$e48297%_
               (let ((__obj84827 _%klass48293%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84827
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84827 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84827
                      'slot-defaults)))))
          (if _%$e48297%_
              ((lambda (_%slot-defaults48301%_)
                 (let ((_%$e48304%_
                        (agetq _%slot48295%_ _%slot-defaults48301%_)))
                   (if _%$e48304%_
                       (gx#syntax-local-introduce _%$e48304%_)
                       '#f)))
               _%$e48297%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48274%_ _%slot48276%_)
        (let ((_%$e48278%_
               (let ((__obj84828 _%klass48274%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84828
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84828 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84828
                      'slot-defaults)))))
          (if _%$e48278%_
              ((lambda (_%slot-defaults48282%_)
                 (let ((_%$e48285%_
                        (agetq _%slot48276%_ _%slot-defaults48282%_)))
                   (if _%$e48285%_
                       (gx#syntax-local-introduce _%$e48285%_)
                       '#f)))
               _%$e48278%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48042%_ _%slot48044%_)
        (let ((_%contract4804548047%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48042%_
                _%slot48044%_)))
          (if _%contract4804548047%_
              (let* ((_%contract48051%_ _%contract4804548047%_)
                     (_%__stx7965579656%_ _%contract48051%_)
                     (_%g4805648093%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7965579656%_))))
                (let ((_%__kont7965879659%_
                       (lambda (_%L48243%_ _%L48245%_)
                         (not (gx#free-identifier=?
                               _%L48245%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7966079661%_
                       (lambda (_%L48183%_ _%L48185%_ _%L48186%_)
                         (not (gx#free-identifier=?
                               _%L48185%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7966279663%_ (lambda (_%L48120%_) '#f)))
                  (let* ((_%__match7970879709%_
                          (lambda (_%e4806948143%_
                                   _%hd4807048147%_
                                   _%tl4807148150%_
                                   _%e4807248153%_
                                   _%hd4807348157%_
                                   _%tl4807448160%_
                                   _%e4807548163%_
                                   _%hd4807648167%_
                                   _%tl4807748170%_
                                   _%e4807848173%_
                                   _%hd4807948177%_
                                   _%tl4808048180%_)
                            (let ((_%L48183%_ _%hd4807948177%_)
                                  (_%L48185%_ _%hd4807648167%_)
                                  (_%L48186%_ _%hd4807348157%_))
                              (if (and (gx#identifier? _%L48185%_)
                                       (or (gx#free-identifier=?
                                            _%L48185%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48185%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48185%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48185%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7966079661%_
                                   _%L48183%_
                                   _%L48185%_
                                   _%L48186%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4805648093%_))))))
                         (_%__match7967879679%_
                          (lambda (_%e4806048223%_
                                   _%hd4806148227%_
                                   _%tl4806248230%_
                                   _%e4806348233%_
                                   _%hd4806448237%_
                                   _%tl4806548240%_)
                            (let ((_%L48243%_ _%hd4806448237%_)
                                  (_%L48245%_ _%hd4806148227%_))
                              (if (and (gx#identifier? _%L48245%_)
                                       (or (gx#free-identifier=?
                                            _%L48245%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48245%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48245%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48245%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7965879659%_ _%L48243%_ _%L48245%_)
                                  (if (gx#identifier? _%hd4806148227%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85008_|
                                           _%hd4806148227%_)
                                          (_%__kont7966279663%_
                                           _%hd4806448237%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4805648093%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4805648093%_))))))))
                    (if (gx#stx-pair? _%__stx7965579656%_)
                        (let ((_%e4806048223%_
                               (gx#syntax-e _%__stx7965579656%_)))
                          (let ((_%tl4806248230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4806048223%_)))
                                (_%hd4806148227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4806048223%_))))
                            (if (gx#stx-pair? _%tl4806248230%_)
                                (let ((_%e4806348233%_
                                       (gx#syntax-e _%tl4806248230%_)))
                                  (let ((_%tl4806548240%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4806348233%_)))
                                        (_%hd4806448237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4806348233%_))))
                                    (if (gx#stx-null? _%tl4806548240%_)
                                        (_%__match7967879679%_
                                         _%e4806048223%_
                                         _%hd4806148227%_
                                         _%tl4806248230%_
                                         _%e4806348233%_
                                         _%hd4806448237%_
                                         _%tl4806548240%_)
                                        (if (gx#identifier? _%hd4806148227%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g85008_|
                                                 _%hd4806148227%_)
                                                (if (gx#stx-pair?
                                                     _%tl4806548240%_)
                                                    (let ((_%e4807548163%_
                                                           (gx#syntax-e
                                                            _%tl4806548240%_)))
                                                      (let ((_%tl4807748170%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4807548163%_)))
                    (_%hd4807648167%_
                     (let () (declare (not safe)) (##car _%e4807548163%_))))
                (if (gx#stx-pair? _%tl4807748170%_)
                    (let ((_%e4807848173%_ (gx#syntax-e _%tl4807748170%_)))
                      (let ((_%tl4808048180%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4807848173%_)))
                            (_%hd4807948177%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4807848173%_))))
                        (if (gx#stx-null? _%tl4808048180%_)
                            (_%__match7970879709%_
                             _%e4806048223%_
                             _%hd4806148227%_
                             _%tl4806248230%_
                             _%e4806348233%_
                             _%hd4806448237%_
                             _%tl4806548240%_
                             _%e4807548163%_
                             _%hd4807648167%_
                             _%tl4807748170%_
                             _%e4807848173%_
                             _%hd4807948177%_
                             _%tl4808048180%_)
                            (let () (declare (not safe)) (_%g4805648093%_)))))
                    (let () (declare (not safe)) (_%g4805648093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4805648093%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805648093%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4805648093%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4805648093%_)))))
                        (let () (declare (not safe)) (_%g4805648093%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47810%_ _%slot47812%_)
        (let ((_%contract4781347815%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47810%_
                _%slot47812%_)))
          (if _%contract4781347815%_
              (let* ((_%contract47819%_ _%contract4781347815%_)
                     (_%__stx7972979730%_ _%contract47819%_)
                     (_%g4782447861%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7972979730%_))))
                (let ((_%__kont7973279733%_
                       (lambda (_%L48011%_ _%L48013%_)
                         (not (gx#free-identifier=?
                               _%L48013%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7973479735%_
                       (lambda (_%L47951%_ _%L47953%_ _%L47954%_) '#t))
                      (_%__kont7973679737%_ (lambda (_%L47888%_) '#t)))
                  (let* ((_%__match7978279783%_
                          (lambda (_%e4783747911%_
                                   _%hd4783847915%_
                                   _%tl4783947918%_
                                   _%e4784047921%_
                                   _%hd4784147925%_
                                   _%tl4784247928%_
                                   _%e4784347931%_
                                   _%hd4784447935%_
                                   _%tl4784547938%_
                                   _%e4784647941%_
                                   _%hd4784747945%_
                                   _%tl4784847948%_)
                            (let ((_%L47951%_ _%hd4784747945%_)
                                  (_%L47953%_ _%hd4784447935%_)
                                  (_%L47954%_ _%hd4784147925%_))
                              (if (and (gx#identifier? _%L47953%_)
                                       (or (gx#free-identifier=?
                                            _%L47953%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47953%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47953%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47953%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7973479735%_
                                   _%L47951%_
                                   _%L47953%_
                                   _%L47954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4782447861%_))))))
                         (_%__match7975279753%_
                          (lambda (_%e4782847991%_
                                   _%hd4782947995%_
                                   _%tl4783047998%_
                                   _%e4783148001%_
                                   _%hd4783248005%_
                                   _%tl4783348008%_)
                            (let ((_%L48011%_ _%hd4783248005%_)
                                  (_%L48013%_ _%hd4782947995%_))
                              (if (and (gx#identifier? _%L48013%_)
                                       (or (gx#free-identifier=?
                                            _%L48013%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48013%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48013%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48013%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7973279733%_ _%L48011%_ _%L48013%_)
                                  (if (gx#identifier? _%hd4782947995%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85009_|
                                           _%hd4782947995%_)
                                          (_%__kont7973679737%_
                                           _%hd4783248005%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4782447861%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4782447861%_))))))))
                    (if (gx#stx-pair? _%__stx7972979730%_)
                        (let ((_%e4782847991%_
                               (gx#syntax-e _%__stx7972979730%_)))
                          (let ((_%tl4783047998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4782847991%_)))
                                (_%hd4782947995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4782847991%_))))
                            (if (gx#stx-pair? _%tl4783047998%_)
                                (let ((_%e4783148001%_
                                       (gx#syntax-e _%tl4783047998%_)))
                                  (let ((_%tl4783348008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4783148001%_)))
                                        (_%hd4783248005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4783148001%_))))
                                    (if (gx#stx-null? _%tl4783348008%_)
                                        (_%__match7975279753%_
                                         _%e4782847991%_
                                         _%hd4782947995%_
                                         _%tl4783047998%_
                                         _%e4783148001%_
                                         _%hd4783248005%_
                                         _%tl4783348008%_)
                                        (if (gx#identifier? _%hd4782947995%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g85009_|
                                                 _%hd4782947995%_)
                                                (if (gx#stx-pair?
                                                     _%tl4783348008%_)
                                                    (let ((_%e4784347931%_
                                                           (gx#syntax-e
                                                            _%tl4783348008%_)))
                                                      (let ((_%tl4784547938%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4784347931%_)))
                    (_%hd4784447935%_
                     (let () (declare (not safe)) (##car _%e4784347931%_))))
                (if (gx#stx-pair? _%tl4784547938%_)
                    (let ((_%e4784647941%_ (gx#syntax-e _%tl4784547938%_)))
                      (let ((_%tl4784847948%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4784647941%_)))
                            (_%hd4784747945%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4784647941%_))))
                        (if (gx#stx-null? _%tl4784847948%_)
                            (_%__match7978279783%_
                             _%e4782847991%_
                             _%hd4782947995%_
                             _%tl4783047998%_
                             _%e4783148001%_
                             _%hd4783248005%_
                             _%tl4783348008%_
                             _%e4784347931%_
                             _%hd4784447935%_
                             _%tl4784547938%_
                             _%e4784647941%_
                             _%hd4784747945%_
                             _%tl4784847948%_)
                            (let () (declare (not safe)) (_%g4782447861%_)))))
                    (let () (declare (not safe)) (_%g4782447861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4782447861%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4782447861%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4782447861%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4782447861%_)))))
                        (let () (declare (not safe)) (_%g4782447861%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47796%_)
        (if (gx#identifier? _%id47796%_)
            (let* ((_%str47799%_ (symbol->string (gx#stx-e _%id47796%_)))
                   (_%index4780147803%_ (string-index _%str47799%_ '#\.)))
              (if _%index4780147803%_
                  (let ((_%index47807%_ _%index4780147803%_))
                    (if (let () (declare (not safe)) (##fx> _%index47807%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47799%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47789%_ _%id47791%_)
        (let ((_%parts47793%_
               (string-split (symbol->string (gx#stx-e _%id47791%_)) '#\.)))
          (if (find string-empty? _%parts47793%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47789%_
               _%id47791%_)
              (cons (gx#stx-identifier _%id47791%_ (car _%parts47793%_))
                    (map string->symbol (cdr _%parts47793%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47770%_ _%klass-or-id47772%_ _%slot47773%_)
        (let* ((_%klass47775%_
                (if (gx#identifier? _%klass-or-id47772%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47770%_
                       _%klass-or-id47772%_))
                    _%klass-or-id47772%_))
               (_%accessors47778%_
                (let ((__obj84829 _%klass47775%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84829
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84829 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84829
                       'unchecked-accessors))))
               (_%$e47783%_ (agetq _%slot47773%_ _%accessors47778%_)))
          (if _%$e47783%_
              _%$e47783%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47770%_
               _%klass47775%_
               _%slot47773%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47750%_
               _%klass-or-id47752%_
               _%slot47753%_
               _%checked?47754%_)
        (let* ((_%klass47756%_
                (if (gx#identifier? _%klass-or-id47752%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47750%_
                       _%klass-or-id47752%_))
                    _%klass-or-id47752%_))
               (_%mutators47759%_
                (if _%checked?47754%_
                    (let ((__obj84830 _%klass47756%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84830
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84830 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84830
                           'mutators)))
                    (let ((__obj84831 _%klass47756%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84831
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84831 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84831
                           'unchecked-mutators)))))
               (_%$e47764%_ (agetq _%slot47753%_ _%mutators47759%_)))
          (if _%$e47764%_
              _%$e47764%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47750%_
               _%klass47756%_
               _%slot47753%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48325%_)
        (letrec ((_%expand-body48328%_
                  (lambda (_%klass49236%_
                           _%var49238%_
                           _%Type49239%_
                           _%body49240%_
                           _%checked?49241%_)
                    (let* ((_%g4924349287%_
                            (lambda (_%g4924449283%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4924449283%_)))
                           (_%g4924249444%_
                            (lambda (_%g4924449291%_)
                              (if (gx#stx-pair? _%g4924449291%_)
                                  (let ((_%e4925249294%_
                                         (gx#syntax-e _%g4924449291%_)))
                                    (let ((_%hd4925349298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4925249294%_)))
                                          (_%tl4925449301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4925249294%_))))
                                      (if (gx#stx-pair? _%tl4925449301%_)
                                          (let ((_%e4925549304%_
                                                 (gx#syntax-e
                                                  _%tl4925449301%_)))
                                            (let ((_%hd4925649308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4925549304%_)))
                                                  (_%tl4925749311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4925549304%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4925749311%_)
                                                  (let ((_%e4925849314%_
                                                         (gx#syntax-e
                                                          _%tl4925749311%_)))
                                                    (let ((_%hd4925949318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4925849314%_)))
                                                          (_%tl4926049321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4925849314%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4926049321%_)
                                                          (let ((_%e4926149324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4926049321%_)))
                    (let ((_%hd4926249328%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4926149324%_)))
                          (_%tl4926349331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4926149324%_))))
                      (if (gx#stx-pair? _%tl4926349331%_)
                          (let ((_%e4926449334%_
                                 (gx#syntax-e _%tl4926349331%_)))
                            (let ((_%hd4926549338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4926449334%_)))
                                  (_%tl4926649341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4926449334%_))))
                              (if (gx#stx-pair? _%tl4926649341%_)
                                  (let ((_%e4926749344%_
                                         (gx#syntax-e _%tl4926649341%_)))
                                    (let ((_%hd4926849348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4926749344%_)))
                                          (_%tl4926949351%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4926749344%_))))
                                      (if (gx#stx-pair? _%tl4926949351%_)
                                          (let ((_%e4927049354%_
                                                 (gx#syntax-e
                                                  _%tl4926949351%_)))
                                            (let ((_%hd4927149358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927049354%_)))
                                                  (_%tl4927249361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927049354%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4927149358%_)
                                                  (let ((_g85010_
                                                         (gx#syntax-split-splice
                                                          _%hd4927149358%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85011_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85010_)
                           (##values-length _g85010_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85011_ 2)))
                    (error "Context expects 2 values" _g85011_)))
              (let ((_%target4927349364%_
                     (let () (declare (not safe)) (##values-ref _g85010_ 0)))
                    (_%tl4927549367%_
                     (let () (declare (not safe)) (##values-ref _g85010_ 1))))
                (if (gx#stx-null? _%tl4927549367%_)
                    (letrec ((_%loop4927649370%_
                              (lambda (_%hd4927449374%_ _%body4928049377%_)
                                (if (gx#stx-pair? _%hd4927449374%_)
                                    (let ((_%e4927749380%_
                                           (gx#syntax-e _%hd4927449374%_)))
                                      (let ((_%lp-hd4927849384%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4927749380%_)))
                                            (_%lp-tl4927949387%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4927749380%_))))
                                        (_%loop4927649370%_
                                         _%lp-tl4927949387%_
                                         (cons _%lp-hd4927849384%_
                                               _%body4928049377%_))))
                                    (let ((_%body4928149390%_
                                           (reverse _%body4928049377%_)))
                                      (if (gx#stx-null? _%tl4927249361%_)
                                          ((lambda (_%L49394%_
                                                    _%L49396%_
                                                    _%L49397%_
                                                    _%L49398%_
                                                    _%L49399%_
                                                    _%L49400%_
                                                    _%L49401%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49399%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49400%_ '()))
                                         (cons _%L49399%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49401%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49399%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49398%_ '()))
                               (cons _%L49397%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49396%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4943549438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4943649441%_)
                      (cons _%g4943549438%_ _%g4943649441%_))
                    '()
                    _%L49394%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4928149390%_
                                           _%hd4926849348%_
                                           _%hd4926549338%_
                                           _%hd4926249328%_
                                           _%hd4925949318%_
                                           _%hd4925649308%_
                                           _%hd4925349298%_)
                                          (_%g4924349287%_
                                           _%g4924449291%_)))))))
                      (_%loop4927649370%_ _%target4927349364%_ '()))
                    (_%g4924349287%_ _%g4924449291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924349287%_
                                                   _%g4924449291%_))))
                                          (_%g4924349287%_ _%g4924449291%_))))
                                  (_%g4924349287%_ _%g4924449291%_))))
                          (_%g4924349287%_ _%g4924449291%_))))
                  (_%g4924349287%_ _%g4924449291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4924349287%_
                                                   _%g4924449291%_))))
                                          (_%g4924349287%_ _%g4924449291%_))))
                                  (_%g4924349287%_ _%g4924449291%_)))))
                      (_%g4924249444%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj84832 _%klass49236%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84832
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84832
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj84832
                                    'type-descriptor)))
                             _%var49238%_
                             _%klass49236%_
                             _%checked?49241%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49240%_)))))
                 (_%expand48330%_
                  (lambda (_%var49128%_
                           _%Type49130%_
                           _%body49131%_
                           _%checked?49132%_
                           _%checked-mutators?49133%_
                           _%maybe?49134%_)
                    (let* ((_%klass49136%_
                            (gx#syntax-local-value _%Type49130%_ false))
                           (_%expr-body49143%_
                            (_%expand-body48328%_
                             _%klass49136%_
                             _%var49128%_
                             _%Type49130%_
                             _%body49131%_
                             (let ((_%$e49139%_ _%checked?49132%_))
                               (if _%$e49139%_
                                   _%$e49139%_
                                   _%checked-mutators?49133%_)))))
                      (if _%checked?49132%_
                          (let* ((_%g4914849167%_
                                  (lambda (_%g4914949163%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4914949163%_)))
                                 (_%g4914749229%_
                                  (lambda (_%g4914949171%_)
                                    (if (gx#stx-pair? _%g4914949171%_)
                                        (let ((_%e4915349174%_
                                               (gx#syntax-e _%g4914949171%_)))
                                          (let ((_%hd4915449178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4915349174%_)))
                                                (_%tl4915549181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4915349174%_))))
                                            (if (gx#stx-pair? _%tl4915549181%_)
                                                (let ((_%e4915649184%_
                                                       (gx#syntax-e
                                                        _%tl4915549181%_)))
                                                  (let ((_%hd4915749188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4915649184%_)))
                                                        (_%tl4915849191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4915649184%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4915849191%_)
                                                        (let ((_%e4915949194%_
                                                               (gx#syntax-e
                                                                _%tl4915849191%_)))
                                                          (let ((_%hd4916049198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4915949194%_)))
                        (_%tl4916149201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4915949194%_))))
                    (if (gx#stx-null? _%tl4916149201%_)
                        ((lambda (_%L49204%_ _%L49206%_ _%L49207%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49206%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49207%_ '())))
                                       (cons _%L49204%_ '()))))
                         _%hd4916049198%_
                         _%hd4915749188%_
                         _%hd4915449178%_)
                        (_%g4914849167%_ _%g4914949171%_))))
                (_%g4914849167%_ _%g4914949171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4914849167%_
                                                 _%g4914949171%_))))
                                        (_%g4914849167%_ _%g4914949171%_)))))
                            (_%g4914749229%_
                             (list (let ((_%instance?49233%_
                                          (let ((__obj84833 _%klass49136%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84833
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84833
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84833
                                                 'predicate)))))
                                     (if _%maybe?49134%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49233%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49233%_))
                                   _%var49128%_
                                   _%expr-body49143%_)))
                          _%expr-body49143%_)))))
          (let* ((_%__stx7980379804%_ _%stx48325%_)
                 (_%g4833648479%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7980379804%_))))
            (let ((_%__kont7980679807%_
                   (lambda (_%L49056%_ _%L49058%_ _%L49059%_ _%L49060%_)
                     (let* ((_%g4908549093%_
                             (lambda (_%g4908649089%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4908649089%_)))
                            (_%g4908449120%_
                             (lambda (_%g4908649097%_)
                               ((lambda (_%L49100%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49060%_
                                                    (cons _%L49059%_
                                                          (cons _%L49100%_
                                                                '())))
                                              (foldr (lambda (_%g4911149114%_
                                                              _%g4911249117%_)
                                                       (cons _%g4911149114%_
                                                             _%g4911249117%_))
                                                     '()
                                                     _%L49056%_))))
                                _%g4908649097%_))))
                       (_%g4908449120%_
                        (let ((__obj84834 (gx#syntax-local-value _%L49058%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84834
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84834
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84834
                               'identifier)))))))
                  (_%__kont7981079811%_
                   (lambda (_%L48934%_ _%L48936%_ _%L48937%_)
                     (_%expand48330%_
                      _%L48937%_
                      _%L48936%_
                      (foldr (lambda (_%g4896048963%_ _%g4896148966%_)
                               (cons _%g4896048963%_ _%g4896148966%_))
                             '()
                             _%L48934%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7981479815%_
                   (lambda (_%L48812%_ _%L48814%_ _%L48815%_)
                     (_%expand48330%_
                      _%L48815%_
                      _%L48814%_
                      (foldr (lambda (_%g4883848841%_ _%g4883948844%_)
                               (cons _%g4883848841%_ _%g4883948844%_))
                             '()
                             _%L48812%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7981879819%_
                   (lambda (_%L48690%_ _%L48692%_ _%L48693%_)
                     (_%expand48330%_
                      _%L48693%_
                      _%L48692%_
                      (foldr (lambda (_%g4871648719%_ _%g4871748722%_)
                               (cons _%g4871648719%_ _%g4871748722%_))
                             '()
                             _%L48690%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7982279823%_
                   (lambda (_%L48566%_ _%L48568%_ _%L48569%_)
                     (_%expand48330%_
                      _%L48569%_
                      _%L48568%_
                      (foldr (lambda (_%g4859448597%_ _%g4859548600%_)
                               (cons _%g4859448597%_ _%g4859548600%_))
                             '()
                             _%L48566%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8004280043%_
                      (lambda (_%e4845048486%_
                               _%hd4845148490%_
                               _%tl4845248493%_
                               _%e4845348496%_
                               _%hd4845448500%_
                               _%tl4845548503%_
                               _%e4845648506%_
                               _%hd4845748510%_
                               _%tl4845848513%_
                               _%e4845948516%_
                               _%hd4846048520%_
                               _%tl4846148523%_
                               _%e4846248526%_
                               _%hd4846348530%_
                               _%tl4846448533%_
                               _%__splice7982479825%_
                               _%target4846548536%_
                               _%tl4846748539%_)
                        (letrec ((_%loop4846848542%_
                                  (lambda (_%hd4846648546%_ _%body4847248549%_)
                                    (if (gx#stx-pair? _%hd4846648546%_)
                                        (let ((_%e4846948552%_
                                               (gx#syntax-e _%hd4846648546%_)))
                                          (let ((_%lp-tl4847148559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4846948552%_)))
                                                (_%lp-hd4847048556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4846948552%_))))
                                            (_%loop4846848542%_
                                             _%lp-tl4847148559%_
                                             (cons _%lp-hd4847048556%_
                                                   _%body4847248549%_))))
                                        (let ((_%body4847348562%_
                                               (reverse _%body4847248549%_)))
                                          (let ((_%L48566%_ _%body4847348562%_)
                                                (_%L48568%_ _%hd4846348530%_)
                                                (_%L48569%_ _%hd4845748510%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48568%_))
                                                (_%__kont7982279823%_
                                                 _%L48566%_
                                                 _%L48568%_
                                                 _%L48569%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))))))))
                          (_%loop4846848542%_ _%target4846548536%_ '()))))
                     (_%__match7999879999%_
                      (lambda (_%e4842348610%_
                               _%hd4842448614%_
                               _%tl4842548617%_
                               _%e4842648620%_
                               _%hd4842748624%_
                               _%tl4842848627%_
                               _%e4842948630%_
                               _%hd4843048634%_
                               _%tl4843148637%_
                               _%e4843248640%_
                               _%hd4843348644%_
                               _%tl4843448647%_
                               _%e4843548650%_
                               _%hd4843648654%_
                               _%tl4843748657%_
                               _%__splice7982079821%_
                               _%target4843848660%_
                               _%tl4844048663%_)
                        (letrec ((_%loop4844148666%_
                                  (lambda (_%hd4843948670%_ _%body4844548673%_)
                                    (if (gx#stx-pair? _%hd4843948670%_)
                                        (let ((_%e4844248676%_
                                               (gx#syntax-e _%hd4843948670%_)))
                                          (let ((_%lp-tl4844448683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4844248676%_)))
                                                (_%lp-hd4844348680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4844248676%_))))
                                            (_%loop4844148666%_
                                             _%lp-tl4844448683%_
                                             (cons _%lp-hd4844348680%_
                                                   _%body4844548673%_))))
                                        (let ((_%body4844648686%_
                                               (reverse _%body4844548673%_)))
                                          (let ((_%L48690%_ _%body4844648686%_)
                                                (_%L48692%_ _%hd4843648654%_)
                                                (_%L48693%_ _%hd4843048634%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48692%_))
                                                (_%__kont7981879819%_
                                                 _%L48690%_
                                                 _%L48692%_
                                                 _%L48693%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))))))))
                          (_%loop4844148666%_ _%target4843848660%_ '()))))
                     (_%__match7995479955%_
                      (lambda (_%e4839648732%_
                               _%hd4839748736%_
                               _%tl4839848739%_
                               _%e4839948742%_
                               _%hd4840048746%_
                               _%tl4840148749%_
                               _%e4840248752%_
                               _%hd4840348756%_
                               _%tl4840448759%_
                               _%e4840548762%_
                               _%hd4840648766%_
                               _%tl4840748769%_
                               _%e4840848772%_
                               _%hd4840948776%_
                               _%tl4841048779%_
                               _%__splice7981679817%_
                               _%target4841148782%_
                               _%tl4841348785%_)
                        (letrec ((_%loop4841448788%_
                                  (lambda (_%hd4841248792%_ _%body4841848795%_)
                                    (if (gx#stx-pair? _%hd4841248792%_)
                                        (let ((_%e4841548798%_
                                               (gx#syntax-e _%hd4841248792%_)))
                                          (let ((_%lp-tl4841748805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4841548798%_)))
                                                (_%lp-hd4841648802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4841548798%_))))
                                            (_%loop4841448788%_
                                             _%lp-tl4841748805%_
                                             (cons _%lp-hd4841648802%_
                                                   _%body4841848795%_))))
                                        (let ((_%body4841948808%_
                                               (reverse _%body4841848795%_)))
                                          (let ((_%L48812%_ _%body4841948808%_)
                                                (_%L48814%_ _%hd4840948776%_)
                                                (_%L48815%_ _%hd4840348756%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48814%_))
                                                (_%__kont7981479815%_
                                                 _%L48812%_
                                                 _%L48814%_
                                                 _%L48815%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))))))))
                          (_%loop4841448788%_ _%target4841148782%_ '()))))
                     (_%__match7991079911%_
                      (lambda (_%e4836948854%_
                               _%hd4837048858%_
                               _%tl4837148861%_
                               _%e4837248864%_
                               _%hd4837348868%_
                               _%tl4837448871%_
                               _%e4837548874%_
                               _%hd4837648878%_
                               _%tl4837748881%_
                               _%e4837848884%_
                               _%hd4837948888%_
                               _%tl4838048891%_
                               _%e4838148894%_
                               _%hd4838248898%_
                               _%tl4838348901%_
                               _%__splice7981279813%_
                               _%target4838448904%_
                               _%tl4838648907%_)
                        (letrec ((_%loop4838748910%_
                                  (lambda (_%hd4838548914%_ _%body4839148917%_)
                                    (if (gx#stx-pair? _%hd4838548914%_)
                                        (let ((_%e4838848920%_
                                               (gx#syntax-e _%hd4838548914%_)))
                                          (let ((_%lp-tl4839048927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838848920%_)))
                                                (_%lp-hd4838948924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838848920%_))))
                                            (_%loop4838748910%_
                                             _%lp-tl4839048927%_
                                             (cons _%lp-hd4838948924%_
                                                   _%body4839148917%_))))
                                        (let ((_%body4839248930%_
                                               (reverse _%body4839148917%_)))
                                          (let ((_%L48934%_ _%body4839248930%_)
                                                (_%L48936%_ _%hd4838248898%_)
                                                (_%L48937%_ _%hd4837648878%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48936%_))
                                                (_%__kont7981079811%_
                                                 _%L48934%_
                                                 _%L48936%_
                                                 _%L48937%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))))))))
                          (_%loop4838748910%_ _%target4838448904%_ '()))))
                     (_%__match7989079891%_
                      (lambda (_%e4836948854%_
                               _%hd4837048858%_
                               _%tl4837148861%_
                               _%e4837248864%_
                               _%hd4837348868%_
                               _%tl4837448871%_
                               _%e4837548874%_
                               _%hd4837648878%_
                               _%tl4837748881%_
                               _%e4837848884%_
                               _%hd4837948888%_
                               _%tl4838048891%_)
                        (if (gx#identifier? _%hd4837948888%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g85012_|
                                 _%hd4837948888%_)
                                (if (gx#stx-pair? _%tl4838048891%_)
                                    (let ((_%e4838148894%_
                                           (gx#syntax-e _%tl4838048891%_)))
                                      (let ((_%tl4838348901%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4838148894%_)))
                                            (_%hd4838248898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4838148894%_))))
                                        (if (gx#stx-null? _%tl4838348901%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4837448871%_)
                                                (let ((_%__splice7981279813%_
                                                       (gx#syntax-split-splice
                                                        _%tl4837448871%_
                                                        '0)))
                                                  (let ((_%tl4838648907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7981279813%_
                                                            '1)))
                                                        (_%target4838448904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7981279813%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4838648907%_)
                                                        (_%__match7991079911%_
                                                         _%e4836948854%_
                                                         _%hd4837048858%_
                                                         _%tl4837148861%_
                                                         _%e4837248864%_
                                                         _%hd4837348868%_
                                                         _%tl4837448871%_
                                                         _%e4837548874%_
                                                         _%hd4837648878%_
                                                         _%tl4837748881%_
                                                         _%e4837848884%_
                                                         _%hd4837948888%_
                                                         _%tl4838048891%_
                                                         _%e4838148894%_
                                                         _%hd4838248898%_
                                                         _%tl4838348901%_
                                                         _%__splice7981279813%_
                                                         _%target4838448904%_
                                                         _%tl4838648907%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4833648479%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833648479%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4833648479%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g85013_|
                                     _%hd4837948888%_)
                                    (if (gx#stx-pair? _%tl4838048891%_)
                                        (let ((_%e4840848772%_
                                               (gx#syntax-e _%tl4838048891%_)))
                                          (let ((_%tl4841048779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840848772%_)))
                                                (_%hd4840948776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840848772%_))))
                                            (if (gx#stx-null? _%tl4841048779%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4837448871%_)
                                                    (let ((_%__splice7981679817%_
                                                           (gx#syntax-split-splice
                                                            _%tl4837448871%_
                                                            '0)))
                                                      (let ((_%tl4841348785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7981679817%_ '1)))
                    (_%target4841148782%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7981679817%_ '0))))
                (if (gx#stx-null? _%tl4841348785%_)
                    (_%__match7995479955%_
                     _%e4836948854%_
                     _%hd4837048858%_
                     _%tl4837148861%_
                     _%e4837248864%_
                     _%hd4837348868%_
                     _%tl4837448871%_
                     _%e4837548874%_
                     _%hd4837648878%_
                     _%tl4837748881%_
                     _%e4837848884%_
                     _%hd4837948888%_
                     _%tl4838048891%_
                     _%e4840848772%_
                     _%hd4840948776%_
                     _%tl4841048779%_
                     _%__splice7981679817%_
                     _%target4841148782%_
                     _%tl4841348785%_)
                    (let () (declare (not safe)) (_%g4833648479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833648479%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4833648479%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g85014_|
                                         _%hd4837948888%_)
                                        (if (gx#stx-pair? _%tl4838048891%_)
                                            (let ((_%e4843548650%_
                                                   (gx#syntax-e
                                                    _%tl4838048891%_)))
                                              (let ((_%tl4843748657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4843548650%_)))
                                                    (_%hd4843648654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4843548650%_))))
                                                (if (gx#stx-null?
                                                     _%tl4843748657%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4837448871%_)
                                                        (let ((_%__splice7982079821%_
                                                               (gx#syntax-split-splice
                                                                _%tl4837448871%_
                                                                '0)))
                                                          (let ((_%tl4844048663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7982079821%_ '1)))
                        (_%target4843848660%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7982079821%_ '0))))
                    (if (gx#stx-null? _%tl4844048663%_)
                        (_%__match7999879999%_
                         _%e4836948854%_
                         _%hd4837048858%_
                         _%tl4837148861%_
                         _%e4837248864%_
                         _%hd4837348868%_
                         _%tl4837448871%_
                         _%e4837548874%_
                         _%hd4837648878%_
                         _%tl4837748881%_
                         _%e4837848884%_
                         _%hd4837948888%_
                         _%tl4838048891%_
                         _%e4843548650%_
                         _%hd4843648654%_
                         _%tl4843748657%_
                         _%__splice7982079821%_
                         _%target4843848660%_
                         _%tl4844048663%_)
                        (let () (declare (not safe)) (_%g4833648479%_)))))
                (let () (declare (not safe)) (_%g4833648479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833648479%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833648479%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g85015_|
                                             _%hd4837948888%_)
                                            (if (gx#stx-pair? _%tl4838048891%_)
                                                (let ((_%e4846248526%_
                                                       (gx#syntax-e
                                                        _%tl4838048891%_)))
                                                  (let ((_%tl4846448533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4846248526%_)))
                                                        (_%hd4846348530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4846248526%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4846448533%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4837448871%_)
                                                            (let ((_%__splice7982479825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4837448871%_ '0)))
                      (let ((_%tl4846748539%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7982479825%_ '1)))
                            (_%target4846548536%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7982479825%_ '0))))
                        (if (gx#stx-null? _%tl4846748539%_)
                            (_%__match8004280043%_
                             _%e4836948854%_
                             _%hd4837048858%_
                             _%tl4837148861%_
                             _%e4837248864%_
                             _%hd4837348868%_
                             _%tl4837448871%_
                             _%e4837548874%_
                             _%hd4837648878%_
                             _%tl4837748881%_
                             _%e4837848884%_
                             _%hd4837948888%_
                             _%tl4838048891%_
                             _%e4846248526%_
                             _%hd4846348530%_
                             _%tl4846448533%_
                             _%__splice7982479825%_
                             _%target4846548536%_
                             _%tl4846748539%_)
                            (let () (declare (not safe)) (_%g4833648479%_)))))
                    (let () (declare (not safe)) (_%g4833648479%_)))
                (let () (declare (not safe)) (_%g4833648479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4833648479%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833648479%_))))))
                            (let () (declare (not safe)) (_%g4833648479%_)))))
                     (_%__match7986679867%_
                      (lambda (_%e4834248976%_
                               _%hd4834348980%_
                               _%tl4834448983%_
                               _%e4834548986%_
                               _%hd4834648990%_
                               _%tl4834748993%_
                               _%e4834848996%_
                               _%hd4834949000%_
                               _%tl4835049003%_
                               _%e4835149006%_
                               _%hd4835249010%_
                               _%tl4835349013%_
                               _%e4835449016%_
                               _%hd4835549020%_
                               _%tl4835649023%_
                               _%__splice7980879809%_
                               _%target4835749026%_
                               _%tl4835949029%_)
                        (letrec ((_%loop4836049032%_
                                  (lambda (_%hd4835849036%_ _%body4836449039%_)
                                    (if (gx#stx-pair? _%hd4835849036%_)
                                        (let ((_%e4836149042%_
                                               (gx#syntax-e _%hd4835849036%_)))
                                          (let ((_%lp-tl4836349049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4836149042%_)))
                                                (_%lp-hd4836249046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4836149042%_))))
                                            (_%loop4836049032%_
                                             _%lp-tl4836349049%_
                                             (cons _%lp-hd4836249046%_
                                                   _%body4836449039%_))))
                                        (let ((_%body4836549052%_
                                               (reverse _%body4836449039%_)))
                                          (let ((_%L49056%_ _%body4836549052%_)
                                                (_%L49058%_ _%hd4835549020%_)
                                                (_%L49059%_ _%hd4835249010%_)
                                                (_%L49060%_ _%hd4834949000%_))
                                            (if (let ((__tmp85016
                                                       (gx#syntax-local-value
                                                        _%L49058%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp85016))
                                                (_%__kont7980679807%_
                                                 _%L49056%_
                                                 _%L49058%_
                                                 _%L49059%_
                                                 _%L49060%_)
                                                (_%__match7989079891%_
                                                 _%e4834248976%_
                                                 _%hd4834348980%_
                                                 _%tl4834448983%_
                                                 _%e4834548986%_
                                                 _%hd4834648990%_
                                                 _%tl4834748993%_
                                                 _%e4834848996%_
                                                 _%hd4834949000%_
                                                 _%tl4835049003%_
                                                 _%e4835149006%_
                                                 _%hd4835249010%_
                                                 _%tl4835349013%_))))))))
                          (_%loop4836049032%_ _%target4835749026%_ '())))))
                (if (gx#stx-pair? _%__stx7980379804%_)
                    (let ((_%e4834248976%_ (gx#syntax-e _%__stx7980379804%_)))
                      (let ((_%tl4834448983%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4834248976%_)))
                            (_%hd4834348980%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4834248976%_))))
                        (if (gx#stx-pair? _%tl4834448983%_)
                            (let ((_%e4834548986%_
                                   (gx#syntax-e _%tl4834448983%_)))
                              (let ((_%tl4834748993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4834548986%_)))
                                    (_%hd4834648990%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4834548986%_))))
                                (if (gx#stx-pair? _%hd4834648990%_)
                                    (let ((_%e4834848996%_
                                           (gx#syntax-e _%hd4834648990%_)))
                                      (let ((_%tl4835049003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4834848996%_)))
                                            (_%hd4834949000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4834848996%_))))
                                        (if (gx#stx-pair? _%tl4835049003%_)
                                            (let ((_%e4835149006%_
                                                   (gx#syntax-e
                                                    _%tl4835049003%_)))
                                              (let ((_%tl4835349013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4835149006%_)))
                                                    (_%hd4835249010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4835149006%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4835349013%_)
                                                    (let ((_%e4835449016%_
                                                           (gx#syntax-e
                                                            _%tl4835349013%_)))
                                                      (let ((_%tl4835649023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4835449016%_)))
                    (_%hd4835549020%_
                     (let () (declare (not safe)) (##car _%e4835449016%_))))
                (if (gx#stx-null? _%tl4835649023%_)
                    (if (gx#stx-pair/null? _%tl4834748993%_)
                        (let ((_%__splice7980879809%_
                               (gx#syntax-split-splice _%tl4834748993%_ '0)))
                          (let ((_%tl4835949029%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7980879809%_ '1)))
                                (_%target4835749026%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7980879809%_ '0))))
                            (if (gx#stx-null? _%tl4835949029%_)
                                (_%__match7986679867%_
                                 _%e4834248976%_
                                 _%hd4834348980%_
                                 _%tl4834448983%_
                                 _%e4834548986%_
                                 _%hd4834648990%_
                                 _%tl4834748993%_
                                 _%e4834848996%_
                                 _%hd4834949000%_
                                 _%tl4835049003%_
                                 _%e4835149006%_
                                 _%hd4835249010%_
                                 _%tl4835349013%_
                                 _%e4835449016%_
                                 _%hd4835549020%_
                                 _%tl4835649023%_
                                 _%__splice7980879809%_
                                 _%target4835749026%_
                                 _%tl4835949029%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4833648479%_)))))
                        (let () (declare (not safe)) (_%g4833648479%_)))
                    (let () (declare (not safe)) (_%g4833648479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4833648479%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4833648479%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4833648479%_)))))
                            (let () (declare (not safe)) (_%g4833648479%_)))))
                    (let () (declare (not safe)) (_%g4833648479%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49454%_)
        (letrec ((_%expand-body49457%_
                  (lambda (_%var50458%_
                           _%Interface50460%_
                           _%body50461%_
                           _%checked?50462%_)
                    (let* ((_%type50464%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49454%_
                               _%Interface50460%_)))
                           (_%g5046750511%_
                            (lambda (_%g5046850507%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5046850507%_)))
                           (_%g5046650669%_
                            (lambda (_%g5046850515%_)
                              (if (gx#stx-pair? _%g5046850515%_)
                                  (let ((_%e5047650518%_
                                         (gx#syntax-e _%g5046850515%_)))
                                    (let ((_%hd5047750522%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5047650518%_)))
                                          (_%tl5047850525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5047650518%_))))
                                      (if (gx#stx-pair? _%tl5047850525%_)
                                          (let ((_%e5047950528%_
                                                 (gx#syntax-e
                                                  _%tl5047850525%_)))
                                            (let ((_%hd5048050532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5047950528%_)))
                                                  (_%tl5048150535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5047950528%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5048150535%_)
                                                  (let ((_%e5048250538%_
                                                         (gx#syntax-e
                                                          _%tl5048150535%_)))
                                                    (let ((_%hd5048350542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5048250538%_)))
                                                          (_%tl5048450545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5048250538%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5048450545%_)
                                                          (let ((_%e5048550548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5048450545%_)))
                    (let ((_%hd5048650552%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5048550548%_)))
                          (_%tl5048750555%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5048550548%_))))
                      (if (gx#stx-pair? _%tl5048750555%_)
                          (let ((_%e5048850558%_
                                 (gx#syntax-e _%tl5048750555%_)))
                            (let ((_%hd5048950562%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5048850558%_)))
                                  (_%tl5049050565%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5048850558%_))))
                              (if (gx#stx-pair? _%tl5049050565%_)
                                  (let ((_%e5049150568%_
                                         (gx#syntax-e _%tl5049050565%_)))
                                    (let ((_%hd5049250572%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049150568%_)))
                                          (_%tl5049350575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049150568%_))))
                                      (if (gx#stx-pair? _%tl5049350575%_)
                                          (let ((_%e5049450578%_
                                                 (gx#syntax-e
                                                  _%tl5049350575%_)))
                                            (let ((_%hd5049550582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5049450578%_)))
                                                  (_%tl5049650585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5049450578%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5049550582%_)
                                                  (let ((_g85017_
                                                         (gx#syntax-split-splice
                                                          _%hd5049550582%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85018_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85017_)
                           (##values-length _g85017_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85018_ 2)))
                    (error "Context expects 2 values" _g85018_)))
              (let ((_%target5049750588%_
                     (let () (declare (not safe)) (##values-ref _g85017_ 0)))
                    (_%tl5049950591%_
                     (let () (declare (not safe)) (##values-ref _g85017_ 1))))
                (if (gx#stx-null? _%tl5049950591%_)
                    (letrec ((_%loop5050050594%_
                              (lambda (_%hd5049850598%_ _%body5050450601%_)
                                (if (gx#stx-pair? _%hd5049850598%_)
                                    (let ((_%e5050150604%_
                                           (gx#syntax-e _%hd5049850598%_)))
                                      (let ((_%lp-hd5050250608%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5050150604%_)))
                                            (_%lp-tl5050350611%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5050150604%_))))
                                        (_%loop5050050594%_
                                         _%lp-tl5050350611%_
                                         (cons _%lp-hd5050250608%_
                                               _%body5050450601%_))))
                                    (let ((_%body5050550614%_
                                           (reverse _%body5050450601%_)))
                                      (if (gx#stx-null? _%tl5049650585%_)
                                          ((lambda (_%L50618%_
                                                    _%L50620%_
                                                    _%L50621%_
                                                    _%L50622%_
                                                    _%L50623%_
                                                    _%L50624%_
                                                    _%L50625%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50622%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50623%_ '()))
                                         (cons _%L50622%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50625%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50622%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50624%_ '()))
                               (cons _%L50621%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50620%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5066050663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5066150666%_)
                      (cons _%g5066050663%_ _%g5066150666%_))
                    '()
                    _%L50618%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5050550614%_
                                           _%hd5049250572%_
                                           _%hd5048950562%_
                                           _%hd5048650552%_
                                           _%hd5048350542%_
                                           _%hd5048050532%_
                                           _%hd5047750522%_)
                                          (_%g5046750511%_
                                           _%g5046850515%_)))))))
                      (_%loop5050050594%_ _%target5049750588%_ '()))
                    (_%g5046750511%_ _%g5046850515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5046750511%_
                                                   _%g5046850515%_))))
                                          (_%g5046750511%_ _%g5046850515%_))))
                                  (_%g5046750511%_ _%g5046850515%_))))
                          (_%g5046750511%_ _%g5046850515%_))))
                  (_%g5046750511%_ _%g5046850515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5046750511%_
                                                   _%g5046850515%_))))
                                          (_%g5046750511%_ _%g5046850515%_))))
                                  (_%g5046750511%_ _%g5046850515%_)))))
                      (_%g5046650669%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50464%_
                             (let ((__obj84835 _%type50464%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84835
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84835
                                      '7
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj84835
                                    'instance-type)))
                             _%var50458%_
                             _%checked?50462%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50461%_)))))
                 (_%expand49459%_
                  (lambda (_%var50257%_
                           _%Interface50259%_
                           _%body50260%_
                           _%checked?50261%_
                           _%checked-methods?50262%_
                           _%maybe?50263%_)
                    (let* ((_%g5026550273%_
                            (lambda (_%g5026650269%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5026650269%_)))
                           (_%g5026450450%_
                            (lambda (_%g5026650277%_)
                              ((lambda (_%L50280%_)
                                 (if _%checked?50261%_
                                     (if _%maybe?50263%_
                                         (let* ((_%g5029250307%_
                                                 (lambda (_%g5029350303%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5029350303%_)))
                                                (_%g5029150353%_
                                                 (lambda (_%g5029350311%_)
                                                   (if (gx#stx-pair?
                                                        _%g5029350311%_)
                                                       (let ((_%e5029650314%_
                                                              (gx#syntax-e
                                                               _%g5029350311%_)))
                                                         (let ((_%hd5029750318%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5029650314%_)))
                       (_%tl5029850321%_
                        (let () (declare (not safe)) (##cdr _%e5029650314%_))))
                   (if (gx#stx-pair? _%tl5029850321%_)
                       (let ((_%e5029950324%_ (gx#syntax-e _%tl5029850321%_)))
                         (let ((_%hd5030050328%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5029950324%_)))
                               (_%tl5030150331%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5029950324%_))))
                           (if (gx#stx-null? _%tl5030150331%_)
                               ((lambda (_%L50334%_ _%L50336%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50336%_
                                                    (cons (cons _%L50334%_
                                                                (cons _%L50336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50336%_
                                                                (cons _%L50280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50336%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5030050328%_
                                _%hd5029750318%_)
                               (_%g5029250307%_ _%g5029350311%_))))
                       (_%g5029250307%_ _%g5029350311%_))))
               (_%g5029250307%_ _%g5029350311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5029150353%_
                                            (list _%var50257%_
                                                  _%Interface50259%_)))
                                         (let* ((_%g5035750372%_
                                                 (lambda (_%g5035850368%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5035850368%_)))
                                                (_%g5035650416%_
                                                 (lambda (_%g5035850376%_)
                                                   (if (gx#stx-pair?
                                                        _%g5035850376%_)
                                                       (let ((_%e5036150379%_
                                                              (gx#syntax-e
                                                               _%g5035850376%_)))
                                                         (let ((_%hd5036250383%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5036150379%_)))
                       (_%tl5036350386%_
                        (let () (declare (not safe)) (##cdr _%e5036150379%_))))
                   (if (gx#stx-pair? _%tl5036350386%_)
                       (let ((_%e5036450389%_ (gx#syntax-e _%tl5036350386%_)))
                         (let ((_%hd5036550393%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5036450389%_)))
                               (_%tl5036650396%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5036450389%_))))
                           (if (gx#stx-null? _%tl5036650396%_)
                               ((lambda (_%L50399%_ _%L50401%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50401%_
                                                    (cons (cons _%L50399%_
                                                                (cons _%L50401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50280%_ '()))))
                                _%hd5036550393%_
                                _%hd5036250383%_)
                               (_%g5035750372%_ _%g5035850376%_))))
                       (_%g5035750372%_ _%g5035850376%_))))
               (_%g5035750372%_ _%g5035850376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5035650416%_
                                            (list _%var50257%_
                                                  _%Interface50259%_))))
                                     (if _%maybe?50263%_
                                         (let* ((_%g5042050428%_
                                                 (lambda (_%g5042150424%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5042150424%_)))
                                                (_%g5041950446%_
                                                 (lambda (_%g5042150432%_)
                                                   ((lambda (_%L50435%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50280%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50435%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5042150432%_))))
                                           (_%g5041950446%_ _%var50257%_))
                                         _%L50280%_)))
                               _%g5026650277%_))))
                      (_%g5026450450%_
                       (_%expand-body49457%_
                        _%var50257%_
                        _%Interface50259%_
                        _%body50260%_
                        (let ((_%$e50454%_ _%checked?50261%_))
                          (if _%$e50454%_
                              _%$e50454%_
                              _%checked-methods?50262%_))))))))
          (let* ((_%__stx8004580046%_ _%stx49454%_)
                 (_%g4946549608%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8004580046%_))))
            (let ((_%__kont8004880049%_
                   (lambda (_%L50185%_ _%L50187%_ _%L50188%_ _%L50189%_)
                     (let* ((_%g5021450222%_
                             (lambda (_%g5021550218%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5021550218%_)))
                            (_%g5021350249%_
                             (lambda (_%g5021550226%_)
                               ((lambda (_%L50229%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50189%_
                                                    (cons _%L50188%_
                                                          (cons _%L50229%_
                                                                '())))
                                              (foldr (lambda (_%g5024050243%_
                                                              _%g5024150246%_)
                                                       (cons _%g5024050243%_
                                                             _%g5024150246%_))
                                                     '()
                                                     _%L50185%_))))
                                _%g5021550226%_))))
                       (_%g5021350249%_
                        (let ((__obj84836 (gx#syntax-local-value _%L50187%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84836
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84836
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84836
                               'identifier)))))))
                  (_%__kont8005280053%_
                   (lambda (_%L50063%_ _%L50065%_ _%L50066%_)
                     (_%expand49459%_
                      _%L50066%_
                      _%L50065%_
                      (foldr (lambda (_%g5008950092%_ _%g5009050095%_)
                               (cons _%g5008950092%_ _%g5009050095%_))
                             '()
                             _%L50063%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8005680057%_
                   (lambda (_%L49941%_ _%L49943%_ _%L49944%_)
                     (_%expand49459%_
                      _%L49944%_
                      _%L49943%_
                      (foldr (lambda (_%g4996749970%_ _%g4996849973%_)
                               (cons _%g4996749970%_ _%g4996849973%_))
                             '()
                             _%L49941%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8006080061%_
                   (lambda (_%L49819%_ _%L49821%_ _%L49822%_)
                     (_%expand49459%_
                      _%L49822%_
                      _%L49821%_
                      (foldr (lambda (_%g4984549848%_ _%g4984649851%_)
                               (cons _%g4984549848%_ _%g4984649851%_))
                             '()
                             _%L49819%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8006480065%_
                   (lambda (_%L49695%_ _%L49697%_ _%L49698%_)
                     (_%expand49459%_
                      _%L49698%_
                      _%L49697%_
                      (foldr (lambda (_%g4972349726%_ _%g4972449729%_)
                               (cons _%g4972349726%_ _%g4972449729%_))
                             '()
                             _%L49695%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8028480285%_
                      (lambda (_%e4957949615%_
                               _%hd4958049619%_
                               _%tl4958149622%_
                               _%e4958249625%_
                               _%hd4958349629%_
                               _%tl4958449632%_
                               _%e4958549635%_
                               _%hd4958649639%_
                               _%tl4958749642%_
                               _%e4958849645%_
                               _%hd4958949649%_
                               _%tl4959049652%_
                               _%e4959149655%_
                               _%hd4959249659%_
                               _%tl4959349662%_
                               _%__splice8006680067%_
                               _%target4959449665%_
                               _%tl4959649668%_)
                        (letrec ((_%loop4959749671%_
                                  (lambda (_%hd4959549675%_ _%body4960149678%_)
                                    (if (gx#stx-pair? _%hd4959549675%_)
                                        (let ((_%e4959849681%_
                                               (gx#syntax-e _%hd4959549675%_)))
                                          (let ((_%lp-tl4960049688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4959849681%_)))
                                                (_%lp-hd4959949685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4959849681%_))))
                                            (_%loop4959749671%_
                                             _%lp-tl4960049688%_
                                             (cons _%lp-hd4959949685%_
                                                   _%body4960149678%_))))
                                        (let ((_%body4960249691%_
                                               (reverse _%body4960149678%_)))
                                          (let ((_%L49695%_ _%body4960249691%_)
                                                (_%L49697%_ _%hd4959249659%_)
                                                (_%L49698%_ _%hd4958649639%_))
                                            (if (and (gx#identifier?
                                                      _%L49698%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49697%_)))
                                                (_%__kont8006480065%_
                                                 _%L49695%_
                                                 _%L49697%_
                                                 _%L49698%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))))))))
                          (_%loop4959749671%_ _%target4959449665%_ '()))))
                     (_%__match8024080241%_
                      (lambda (_%e4955249739%_
                               _%hd4955349743%_
                               _%tl4955449746%_
                               _%e4955549749%_
                               _%hd4955649753%_
                               _%tl4955749756%_
                               _%e4955849759%_
                               _%hd4955949763%_
                               _%tl4956049766%_
                               _%e4956149769%_
                               _%hd4956249773%_
                               _%tl4956349776%_
                               _%e4956449779%_
                               _%hd4956549783%_
                               _%tl4956649786%_
                               _%__splice8006280063%_
                               _%target4956749789%_
                               _%tl4956949792%_)
                        (letrec ((_%loop4957049795%_
                                  (lambda (_%hd4956849799%_ _%body4957449802%_)
                                    (if (gx#stx-pair? _%hd4956849799%_)
                                        (let ((_%e4957149805%_
                                               (gx#syntax-e _%hd4956849799%_)))
                                          (let ((_%lp-tl4957349812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4957149805%_)))
                                                (_%lp-hd4957249809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4957149805%_))))
                                            (_%loop4957049795%_
                                             _%lp-tl4957349812%_
                                             (cons _%lp-hd4957249809%_
                                                   _%body4957449802%_))))
                                        (let ((_%body4957549815%_
                                               (reverse _%body4957449802%_)))
                                          (let ((_%L49819%_ _%body4957549815%_)
                                                (_%L49821%_ _%hd4956549783%_)
                                                (_%L49822%_ _%hd4955949763%_))
                                            (if (and (gx#identifier?
                                                      _%L49822%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49821%_)))
                                                (_%__kont8006080061%_
                                                 _%L49819%_
                                                 _%L49821%_
                                                 _%L49822%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))))))))
                          (_%loop4957049795%_ _%target4956749789%_ '()))))
                     (_%__match8019680197%_
                      (lambda (_%e4952549861%_
                               _%hd4952649865%_
                               _%tl4952749868%_
                               _%e4952849871%_
                               _%hd4952949875%_
                               _%tl4953049878%_
                               _%e4953149881%_
                               _%hd4953249885%_
                               _%tl4953349888%_
                               _%e4953449891%_
                               _%hd4953549895%_
                               _%tl4953649898%_
                               _%e4953749901%_
                               _%hd4953849905%_
                               _%tl4953949908%_
                               _%__splice8005880059%_
                               _%target4954049911%_
                               _%tl4954249914%_)
                        (letrec ((_%loop4954349917%_
                                  (lambda (_%hd4954149921%_ _%body4954749924%_)
                                    (if (gx#stx-pair? _%hd4954149921%_)
                                        (let ((_%e4954449927%_
                                               (gx#syntax-e _%hd4954149921%_)))
                                          (let ((_%lp-tl4954649934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4954449927%_)))
                                                (_%lp-hd4954549931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4954449927%_))))
                                            (_%loop4954349917%_
                                             _%lp-tl4954649934%_
                                             (cons _%lp-hd4954549931%_
                                                   _%body4954749924%_))))
                                        (let ((_%body4954849937%_
                                               (reverse _%body4954749924%_)))
                                          (let ((_%L49941%_ _%body4954849937%_)
                                                (_%L49943%_ _%hd4953849905%_)
                                                (_%L49944%_ _%hd4953249885%_))
                                            (if (and (gx#identifier?
                                                      _%L49944%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49943%_)))
                                                (_%__kont8005680057%_
                                                 _%L49941%_
                                                 _%L49943%_
                                                 _%L49944%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))))))))
                          (_%loop4954349917%_ _%target4954049911%_ '()))))
                     (_%__match8015280153%_
                      (lambda (_%e4949849983%_
                               _%hd4949949987%_
                               _%tl4950049990%_
                               _%e4950149993%_
                               _%hd4950249997%_
                               _%tl4950350000%_
                               _%e4950450003%_
                               _%hd4950550007%_
                               _%tl4950650010%_
                               _%e4950750013%_
                               _%hd4950850017%_
                               _%tl4950950020%_
                               _%e4951050023%_
                               _%hd4951150027%_
                               _%tl4951250030%_
                               _%__splice8005480055%_
                               _%target4951350033%_
                               _%tl4951550036%_)
                        (letrec ((_%loop4951650039%_
                                  (lambda (_%hd4951450043%_ _%body4952050046%_)
                                    (if (gx#stx-pair? _%hd4951450043%_)
                                        (let ((_%e4951750049%_
                                               (gx#syntax-e _%hd4951450043%_)))
                                          (let ((_%lp-tl4951950056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4951750049%_)))
                                                (_%lp-hd4951850053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4951750049%_))))
                                            (_%loop4951650039%_
                                             _%lp-tl4951950056%_
                                             (cons _%lp-hd4951850053%_
                                                   _%body4952050046%_))))
                                        (let ((_%body4952150059%_
                                               (reverse _%body4952050046%_)))
                                          (let ((_%L50063%_ _%body4952150059%_)
                                                (_%L50065%_ _%hd4951150027%_)
                                                (_%L50066%_ _%hd4950550007%_))
                                            (if (and (gx#identifier?
                                                      _%L50066%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50065%_)))
                                                (_%__kont8005280053%_
                                                 _%L50063%_
                                                 _%L50065%_
                                                 _%L50066%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))))))))
                          (_%loop4951650039%_ _%target4951350033%_ '()))))
                     (_%__match8013280133%_
                      (lambda (_%e4949849983%_
                               _%hd4949949987%_
                               _%tl4950049990%_
                               _%e4950149993%_
                               _%hd4950249997%_
                               _%tl4950350000%_
                               _%e4950450003%_
                               _%hd4950550007%_
                               _%tl4950650010%_
                               _%e4950750013%_
                               _%hd4950850017%_
                               _%tl4950950020%_)
                        (if (gx#identifier? _%hd4950850017%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g85019_|
                                 _%hd4950850017%_)
                                (if (gx#stx-pair? _%tl4950950020%_)
                                    (let ((_%e4951050023%_
                                           (gx#syntax-e _%tl4950950020%_)))
                                      (let ((_%tl4951250030%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4951050023%_)))
                                            (_%hd4951150027%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4951050023%_))))
                                        (if (gx#stx-null? _%tl4951250030%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4950350000%_)
                                                (let ((_%__splice8005480055%_
                                                       (gx#syntax-split-splice
                                                        _%tl4950350000%_
                                                        '0)))
                                                  (let ((_%tl4951550036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8005480055%_
                                                            '1)))
                                                        (_%target4951350033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8005480055%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4951550036%_)
                                                        (_%__match8015280153%_
                                                         _%e4949849983%_
                                                         _%hd4949949987%_
                                                         _%tl4950049990%_
                                                         _%e4950149993%_
                                                         _%hd4950249997%_
                                                         _%tl4950350000%_
                                                         _%e4950450003%_
                                                         _%hd4950550007%_
                                                         _%tl4950650010%_
                                                         _%e4950750013%_
                                                         _%hd4950850017%_
                                                         _%tl4950950020%_
                                                         _%e4951050023%_
                                                         _%hd4951150027%_
                                                         _%tl4951250030%_
                                                         _%__splice8005480055%_
                                                         _%target4951350033%_
                                                         _%tl4951550036%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4946549608%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946549608%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4946549608%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g85020_|
                                     _%hd4950850017%_)
                                    (if (gx#stx-pair? _%tl4950950020%_)
                                        (let ((_%e4953749901%_
                                               (gx#syntax-e _%tl4950950020%_)))
                                          (let ((_%tl4953949908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953749901%_)))
                                                (_%hd4953849905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953749901%_))))
                                            (if (gx#stx-null? _%tl4953949908%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4950350000%_)
                                                    (let ((_%__splice8005880059%_
                                                           (gx#syntax-split-splice
                                                            _%tl4950350000%_
                                                            '0)))
                                                      (let ((_%tl4954249914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8005880059%_ '1)))
                    (_%target4954049911%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8005880059%_ '0))))
                (if (gx#stx-null? _%tl4954249914%_)
                    (_%__match8019680197%_
                     _%e4949849983%_
                     _%hd4949949987%_
                     _%tl4950049990%_
                     _%e4950149993%_
                     _%hd4950249997%_
                     _%tl4950350000%_
                     _%e4950450003%_
                     _%hd4950550007%_
                     _%tl4950650010%_
                     _%e4950750013%_
                     _%hd4950850017%_
                     _%tl4950950020%_
                     _%e4953749901%_
                     _%hd4953849905%_
                     _%tl4953949908%_
                     _%__splice8005880059%_
                     _%target4954049911%_
                     _%tl4954249914%_)
                    (let () (declare (not safe)) (_%g4946549608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946549608%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4946549608%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g85021_|
                                         _%hd4950850017%_)
                                        (if (gx#stx-pair? _%tl4950950020%_)
                                            (let ((_%e4956449779%_
                                                   (gx#syntax-e
                                                    _%tl4950950020%_)))
                                              (let ((_%tl4956649786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4956449779%_)))
                                                    (_%hd4956549783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4956449779%_))))
                                                (if (gx#stx-null?
                                                     _%tl4956649786%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4950350000%_)
                                                        (let ((_%__splice8006280063%_
                                                               (gx#syntax-split-splice
                                                                _%tl4950350000%_
                                                                '0)))
                                                          (let ((_%tl4956949792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8006280063%_ '1)))
                        (_%target4956749789%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8006280063%_ '0))))
                    (if (gx#stx-null? _%tl4956949792%_)
                        (_%__match8024080241%_
                         _%e4949849983%_
                         _%hd4949949987%_
                         _%tl4950049990%_
                         _%e4950149993%_
                         _%hd4950249997%_
                         _%tl4950350000%_
                         _%e4950450003%_
                         _%hd4950550007%_
                         _%tl4950650010%_
                         _%e4950750013%_
                         _%hd4950850017%_
                         _%tl4950950020%_
                         _%e4956449779%_
                         _%hd4956549783%_
                         _%tl4956649786%_
                         _%__splice8006280063%_
                         _%target4956749789%_
                         _%tl4956949792%_)
                        (let () (declare (not safe)) (_%g4946549608%_)))))
                (let () (declare (not safe)) (_%g4946549608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946549608%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946549608%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g85022_|
                                             _%hd4950850017%_)
                                            (if (gx#stx-pair? _%tl4950950020%_)
                                                (let ((_%e4959149655%_
                                                       (gx#syntax-e
                                                        _%tl4950950020%_)))
                                                  (let ((_%tl4959349662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4959149655%_)))
                                                        (_%hd4959249659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4959149655%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4959349662%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4950350000%_)
                                                            (let ((_%__splice8006680067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4950350000%_ '0)))
                      (let ((_%tl4959649668%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8006680067%_ '1)))
                            (_%target4959449665%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8006680067%_ '0))))
                        (if (gx#stx-null? _%tl4959649668%_)
                            (_%__match8028480285%_
                             _%e4949849983%_
                             _%hd4949949987%_
                             _%tl4950049990%_
                             _%e4950149993%_
                             _%hd4950249997%_
                             _%tl4950350000%_
                             _%e4950450003%_
                             _%hd4950550007%_
                             _%tl4950650010%_
                             _%e4950750013%_
                             _%hd4950850017%_
                             _%tl4950950020%_
                             _%e4959149655%_
                             _%hd4959249659%_
                             _%tl4959349662%_
                             _%__splice8006680067%_
                             _%target4959449665%_
                             _%tl4959649668%_)
                            (let () (declare (not safe)) (_%g4946549608%_)))))
                    (let () (declare (not safe)) (_%g4946549608%_)))
                (let () (declare (not safe)) (_%g4946549608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4946549608%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946549608%_))))))
                            (let () (declare (not safe)) (_%g4946549608%_)))))
                     (_%__match8010880109%_
                      (lambda (_%e4947150105%_
                               _%hd4947250109%_
                               _%tl4947350112%_
                               _%e4947450115%_
                               _%hd4947550119%_
                               _%tl4947650122%_
                               _%e4947750125%_
                               _%hd4947850129%_
                               _%tl4947950132%_
                               _%e4948050135%_
                               _%hd4948150139%_
                               _%tl4948250142%_
                               _%e4948350145%_
                               _%hd4948450149%_
                               _%tl4948550152%_
                               _%__splice8005080051%_
                               _%target4948650155%_
                               _%tl4948850158%_)
                        (letrec ((_%loop4948950161%_
                                  (lambda (_%hd4948750165%_ _%body4949350168%_)
                                    (if (gx#stx-pair? _%hd4948750165%_)
                                        (let ((_%e4949050171%_
                                               (gx#syntax-e _%hd4948750165%_)))
                                          (let ((_%lp-tl4949250178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4949050171%_)))
                                                (_%lp-hd4949150175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4949050171%_))))
                                            (_%loop4948950161%_
                                             _%lp-tl4949250178%_
                                             (cons _%lp-hd4949150175%_
                                                   _%body4949350168%_))))
                                        (let ((_%body4949450181%_
                                               (reverse _%body4949350168%_)))
                                          (let ((_%L50185%_ _%body4949450181%_)
                                                (_%L50187%_ _%hd4948450149%_)
                                                (_%L50188%_ _%hd4948150139%_)
                                                (_%L50189%_ _%hd4947850129%_))
                                            (if (let ((__tmp85023
                                                       (gx#syntax-local-value
                                                        _%L50187%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp85023))
                                                (_%__kont8004880049%_
                                                 _%L50185%_
                                                 _%L50187%_
                                                 _%L50188%_
                                                 _%L50189%_)
                                                (_%__match8013280133%_
                                                 _%e4947150105%_
                                                 _%hd4947250109%_
                                                 _%tl4947350112%_
                                                 _%e4947450115%_
                                                 _%hd4947550119%_
                                                 _%tl4947650122%_
                                                 _%e4947750125%_
                                                 _%hd4947850129%_
                                                 _%tl4947950132%_
                                                 _%e4948050135%_
                                                 _%hd4948150139%_
                                                 _%tl4948250142%_))))))))
                          (_%loop4948950161%_ _%target4948650155%_ '())))))
                (if (gx#stx-pair? _%__stx8004580046%_)
                    (let ((_%e4947150105%_ (gx#syntax-e _%__stx8004580046%_)))
                      (let ((_%tl4947350112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4947150105%_)))
                            (_%hd4947250109%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4947150105%_))))
                        (if (gx#stx-pair? _%tl4947350112%_)
                            (let ((_%e4947450115%_
                                   (gx#syntax-e _%tl4947350112%_)))
                              (let ((_%tl4947650122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4947450115%_)))
                                    (_%hd4947550119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4947450115%_))))
                                (if (gx#stx-pair? _%hd4947550119%_)
                                    (let ((_%e4947750125%_
                                           (gx#syntax-e _%hd4947550119%_)))
                                      (let ((_%tl4947950132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4947750125%_)))
                                            (_%hd4947850129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4947750125%_))))
                                        (if (gx#stx-pair? _%tl4947950132%_)
                                            (let ((_%e4948050135%_
                                                   (gx#syntax-e
                                                    _%tl4947950132%_)))
                                              (let ((_%tl4948250142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4948050135%_)))
                                                    (_%hd4948150139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4948050135%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4948250142%_)
                                                    (let ((_%e4948350145%_
                                                           (gx#syntax-e
                                                            _%tl4948250142%_)))
                                                      (let ((_%tl4948550152%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4948350145%_)))
                    (_%hd4948450149%_
                     (let () (declare (not safe)) (##car _%e4948350145%_))))
                (if (gx#stx-null? _%tl4948550152%_)
                    (if (gx#stx-pair/null? _%tl4947650122%_)
                        (let ((_%__splice8005080051%_
                               (gx#syntax-split-splice _%tl4947650122%_ '0)))
                          (let ((_%tl4948850158%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8005080051%_ '1)))
                                (_%target4948650155%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8005080051%_ '0))))
                            (if (gx#stx-null? _%tl4948850158%_)
                                (_%__match8010880109%_
                                 _%e4947150105%_
                                 _%hd4947250109%_
                                 _%tl4947350112%_
                                 _%e4947450115%_
                                 _%hd4947550119%_
                                 _%tl4947650122%_
                                 _%e4947750125%_
                                 _%hd4947850129%_
                                 _%tl4947950132%_
                                 _%e4948050135%_
                                 _%hd4948150139%_
                                 _%tl4948250142%_
                                 _%e4948350145%_
                                 _%hd4948450149%_
                                 _%tl4948550152%_
                                 _%__splice8005080051%_
                                 _%target4948650155%_
                                 _%tl4948850158%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4946549608%_)))))
                        (let () (declare (not safe)) (_%g4946549608%_)))
                    (let () (declare (not safe)) (_%g4946549608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4946549608%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4946549608%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4946549608%_)))))
                            (let () (declare (not safe)) (_%g4946549608%_)))))
                    (let () (declare (not safe)) (_%g4946549608%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50679%_)
        (let* ((_%__stx8028780288%_ _%stx50679%_)
               (_%g5068450744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8028780288%_))))
          (let ((_%__kont8029080291%_
                 (lambda (_%L51306%_ _%L51308%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51308%_ '()))
                               (foldr (lambda (_%g5132451327%_ _%g5132551330%_)
                                        (cons _%g5132451327%_ _%g5132551330%_))
                                      '()
                                      _%L51306%_)))))
                (_%__kont8029480295%_
                 (lambda (_%L50892%_ _%L50894%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50894%_)
                       (let* ((_%g5091450921%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50679%_
                                _%L50894%_))
                              (_%E5091650927%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5091450921%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5091751225%_
                               (lambda (_%parts50931%_ _%var50933%_)
                                 (let ((_%$e50935%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50933%_))))
                                   (if _%$e50935%_
                                       ((lambda (_%te50939%_)
                                          (let _%loop50942%_ ((_%parts50945%_
                                                               _%parts50931%_)
                                                              (_%type50947%_
                                                               (##direct-structure-ref
                                                                _%te50939%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50948%_
                                                               _%var50933%_)
                                                              (_%checked-method?50949%_
                                                               (##direct-structure-ref
                                                                _%te50939%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50950%_
                                                               '#f))
                                            (let* ((_%parts5095150959%_
                                                    _%parts50945%_)
                                                   (_%else5095351020%_
                                                    (lambda ()
                                                      (let* ((_%g5097150979%_
                                                              (lambda (_%g5097250975%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5097250975%_)))
                     (_%g5097051016%_
                      (lambda (_%g5097250983%_)
                        ((lambda (_%L50986%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L50986%_
                                       (foldr (lambda (_%g5100751010%_
                                                       _%g5100851013%_)
                                                (cons _%g5100751010%_
                                                      _%g5100851013%_))
                                              '()
                                              _%L50892%_))))
                         _%g5097250983%_))))
                (_%g5097051016%_ _%object50948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5095551199%_
                                                    (lambda (_%rest51024%_
                                                             _%part51026%_)
                                                      (if (and (not _%nil-check?50950%_)
                                                               (let ((__tmp85024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51026%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp85024)))
                  (let ((_%str51030%_ (symbol->string _%part51026%_)))
                    (_%loop50942%_
                     (cons (let ((__tmp85025
                                  (substring
                                   _%str51030%_
                                   '1
                                   (string-length _%str51030%_))))
                             (declare (not safe))
                             (##string->symbol __tmp85025))
                           _%rest51024%_)
                     _%type50947%_
                     _%object50948%_
                     _%checked-method?50949%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50947%_))
                      (let* ((_%g5103551050%_
                              (lambda (_%g5103651046%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5103651046%_)))
                             (_%g5103451119%_
                              (lambda (_%g5103651054%_)
                                (if (gx#stx-pair? _%g5103651054%_)
                                    (let ((_%e5103951057%_
                                           (gx#syntax-e _%g5103651054%_)))
                                      (let ((_%hd5104051061%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5103951057%_)))
                                            (_%tl5104151064%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5103951057%_))))
                                        (if (gx#stx-pair? _%tl5104151064%_)
                                            (let ((_%e5104251067%_
                                                   (gx#syntax-e
                                                    _%tl5104151064%_)))
                                              (let ((_%hd5104351071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5104251067%_)))
                                                    (_%tl5104451074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5104251067%_))))
                                                (if (gx#stx-null?
                                                     _%tl5104451074%_)
                                                    ((lambda (_%L51077%_
                                                              _%L51079%_)
                                                       (if (null? _%rest51024%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51077%_ (cons _%L51079%_ '()))
                               (foldr (lambda (_%g5109851101%_ _%g5109951104%_)
                                        (cons _%g5109851101%_ _%g5109951104%_))
                                      '()
                                      _%L50892%_)))
                   (let ((_%$e51107%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50947%_
                           _%part51026%_)))
                     (if _%$e51107%_
                         ((lambda (_%slot-type51111%_)
                            (let ((_%slot-type51114%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50679%_
                                      _%slot-type51111%_))))
                              (_%loop50942%_
                               _%rest51024%_
                               _%slot-type51114%_
                               (cons _%L51077%_ (cons _%L51079%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50947%_
                                _%part51026%_)
                               '#f)))
                          _%$e51107%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50679%_
                          _%L50894%_
                          _%part51026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5104351071%_
                                                     _%hd5104051061%_)
                                                    (_%g5103551050%_
                                                     _%g5103651054%_))))
                                            (_%g5103551050%_
                                             _%g5103651054%_))))
                                    (_%g5103551050%_ _%g5103651054%_)))))
                        (_%g5103451119%_
                         (list (if _%nil-check?50950%_
                                   (cons 'check-nil!
                                         (cons _%object50948%_ '()))
                                   _%object50948%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50679%_
                                _%type50947%_
                                _%part51026%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50947%_))
                          (if (null? _%rest51024%_)
                              (let* ((_%g5112551140%_
                                      (lambda (_%g5112651136%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5112651136%_)))
                                     (_%g5112451193%_
                                      (lambda (_%g5112651144%_)
                                        (if (gx#stx-pair? _%g5112651144%_)
                                            (let ((_%e5112951147%_
                                                   (gx#syntax-e
                                                    _%g5112651144%_)))
                                              (let ((_%hd5113051151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5112951147%_)))
                                                    (_%tl5113151154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5112951147%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5113151154%_)
                                                    (let ((_%e5113251157%_
                                                           (gx#syntax-e
                                                            _%tl5113151154%_)))
                                                      (let ((_%hd5113351161%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5113251157%_)))
                    (_%tl5113451164%_
                     (let () (declare (not safe)) (##cdr _%e5113251157%_))))
                (if (gx#stx-null? _%tl5113451164%_)
                    ((lambda (_%L51167%_ _%L51169%_)
                       (cons _%L51167%_
                             (cons _%L51169%_
                                   (foldr (lambda (_%g5118451187%_
                                                   _%g5118551190%_)
                                            (cons _%g5118451187%_
                                                  _%g5118551190%_))
                                          '()
                                          _%L50892%_))))
                     _%hd5113351161%_
                     _%hd5113051151%_)
                    (_%g5112551140%_ _%g5112651144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5112551140%_
                                                     _%g5112651144%_))))
                                            (_%g5112551140%_
                                             _%g5112651144%_)))))
                                (_%g5112451193%_
                                 (list (if _%nil-check?50950%_
                                           (cons 'check-nil!
                                                 (cons _%object50948%_ '()))
                                           _%object50948%_)
                                       (gx#stx-identifier
                                        _%L50894%_
                                        (if _%checked-method?50949%_ '"" '"&")
                                        (let ((__obj84837 _%type50947%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj84837
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj84837
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj84837
                                               'name)))
                                        '"-"
                                        _%part51026%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50679%_
                               _%L50894%_
                               _%part51026%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50679%_
                           _%type50947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5095150959%_)
                                                  (let ((_%hd5095651203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5095150959%_)))
                                                        (_%tl5095751206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5095150959%_))))
                                                    (let* ((_%part51209%_
                                                            _%hd5095651203%_)
                                                           (_%rest51212%_
                                                            _%tl5095751206%_))
                                                      (_%K5095551199%_
                                                       _%rest51212%_
                                                       _%part51209%_)))
                                                  (_%else5095351020%_)))))
                                        _%$e50935%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50894%_
                                                   (foldr (lambda (_%g5121651219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5121751222%_)
                    (cons _%g5121651219%_ _%g5121751222%_))
                  '()
                  _%L50892%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5091450921%_)
                             (let ((_%hd5091851229%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5091450921%_)))
                                   (_%tl5091951232%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5091450921%_))))
                               (let* ((_%var51235%_ _%hd5091851229%_)
                                      (_%parts51238%_ _%tl5091951232%_))
                                 (_%K5091751225%_
                                  _%parts51238%_
                                  _%var51235%_)))
                             (_%E5091650927%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50894%_
                                   (foldr (lambda (_%g5124051243%_
                                                   _%g5124151246%_)
                                            (cons _%g5124051243%_
                                                  _%g5124151246%_))
                                          '()
                                          _%L50892%_))))))
                (_%__kont8029880299%_
                 (lambda (_%L50791%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5080650809%_ _%g5080750812%_)
                                  (cons _%g5080650809%_ _%g5080750812%_))
                                '()
                                _%L50791%_)))))
            (let* ((_%__match8037480375%_
                    (lambda (_%e5072750751%_
                             _%hd5072850755%_
                             _%tl5072950758%_
                             _%__splice8030080301%_
                             _%target5073050761%_
                             _%tl5073250764%_)
                      (letrec ((_%loop5073350767%_
                                (lambda (_%hd5073150771%_ _%arg5073750774%_)
                                  (if (gx#stx-pair? _%hd5073150771%_)
                                      (let ((_%e5073450777%_
                                             (gx#syntax-e _%hd5073150771%_)))
                                        (let ((_%lp-tl5073650784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073450777%_)))
                                              (_%lp-hd5073550781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073450777%_))))
                                          (_%loop5073350767%_
                                           _%lp-tl5073650784%_
                                           (cons _%lp-hd5073550781%_
                                                 _%arg5073750774%_))))
                                      (let ((_%arg5073850787%_
                                             (reverse _%arg5073750774%_)))
                                        (_%__kont8029880299%_
                                         _%arg5073850787%_))))))
                        (_%loop5073350767%_ _%target5073050761%_ '()))))
                   (_%__match8036080361%_
                    (lambda (_%e5070550822%_
                             _%hd5070650826%_
                             _%tl5070750829%_
                             _%e5070850832%_
                             _%hd5070950836%_
                             _%tl5071050839%_
                             _%e5071150842%_
                             _%hd5071250846%_
                             _%tl5071350849%_
                             _%e5071450852%_
                             _%hd5071550856%_
                             _%tl5071650859%_
                             _%__splice8029680297%_
                             _%target5071750862%_
                             _%tl5071950865%_)
                      (letrec ((_%loop5072050868%_
                                (lambda (_%hd5071850872%_ _%rand5072450875%_)
                                  (if (gx#stx-pair? _%hd5071850872%_)
                                      (let ((_%e5072150878%_
                                             (gx#syntax-e _%hd5071850872%_)))
                                        (let ((_%lp-tl5072350885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5072150878%_)))
                                              (_%lp-hd5072250882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5072150878%_))))
                                          (_%loop5072050868%_
                                           _%lp-tl5072350885%_
                                           (cons _%lp-hd5072250882%_
                                                 _%rand5072450875%_))))
                                      (let ((_%rand5072550888%_
                                             (reverse _%rand5072450875%_)))
                                        (_%__kont8029480295%_
                                         _%rand5072550888%_
                                         _%hd5071550856%_))))))
                        (_%loop5072050868%_ _%target5071750862%_ '()))))
                   (_%__match8033480335%_
                    (lambda (_%e5070550822%_
                             _%hd5070650826%_
                             _%tl5070750829%_
                             _%e5070850832%_
                             _%hd5070950836%_
                             _%tl5071050839%_)
                      (if (gx#stx-pair? _%hd5070950836%_)
                          (let ((_%e5071150842%_
                                 (gx#syntax-e _%hd5070950836%_)))
                            (let ((_%tl5071350849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5071150842%_)))
                                  (_%hd5071250846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5071150842%_))))
                              (if (gx#identifier? _%hd5071250846%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85026_|
                                       _%hd5071250846%_)
                                      (if (gx#stx-pair? _%tl5071350849%_)
                                          (let ((_%e5071450852%_
                                                 (gx#syntax-e
                                                  _%tl5071350849%_)))
                                            (let ((_%tl5071650859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5071450852%_)))
                                                  (_%hd5071550856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5071450852%_))))
                                              (if (gx#stx-null?
                                                   _%tl5071650859%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5071050839%_)
                                                      (let ((_%__splice8029680297%_
                                                             (gx#syntax-split-splice
                                                              _%tl5071050839%_
                                                              '0)))
                                                        (let ((_%tl5071950865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8029680297%_ '1)))
                      (_%target5071750862%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8029680297%_ '0))))
                  (if (gx#stx-null? _%tl5071950865%_)
                      (_%__match8036080361%_
                       _%e5070550822%_
                       _%hd5070650826%_
                       _%tl5070750829%_
                       _%e5070850832%_
                       _%hd5070950836%_
                       _%tl5071050839%_
                       _%e5071150842%_
                       _%hd5071250846%_
                       _%tl5071350849%_
                       _%e5071450852%_
                       _%hd5071550856%_
                       _%tl5071650859%_
                       _%__splice8029680297%_
                       _%target5071750862%_
                       _%tl5071950865%_)
                      (if (gx#stx-pair/null? _%tl5070750829%_)
                          (let ((_%__splice8030080301%_
                                 (gx#syntax-split-splice _%tl5070750829%_ '0)))
                            (let ((_%tl5073250764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8030080301%_ '1)))
                                  (_%target5073050761%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8030080301%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073250764%_)
                                  (_%__match8037480375%_
                                   _%e5070550822%_
                                   _%hd5070650826%_
                                   _%tl5070750829%_
                                   _%__splice8030080301%_
                                   _%target5073050761%_
                                   _%tl5073250764%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5068450744%_)))))
                          (let () (declare (not safe)) (_%g5068450744%_))))))
              (if (gx#stx-pair/null? _%tl5070750829%_)
                  (let ((_%__splice8030080301%_
                         (gx#syntax-split-splice _%tl5070750829%_ '0)))
                    (let ((_%tl5073250764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '1)))
                          (_%target5073050761%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '0))))
                      (if (gx#stx-null? _%tl5073250764%_)
                          (_%__match8037480375%_
                           _%e5070550822%_
                           _%hd5070650826%_
                           _%tl5070750829%_
                           _%__splice8030080301%_
                           _%target5073050761%_
                           _%tl5073250764%_)
                          (let () (declare (not safe)) (_%g5068450744%_)))))
                  (let () (declare (not safe)) (_%g5068450744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5070750829%_)
                                                      (let ((_%__splice8030080301%_
                                                             (gx#syntax-split-splice
                                                              _%tl5070750829%_
                                                              '0)))
                                                        (let ((_%tl5073250764%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8030080301%_ '1)))
                      (_%target5073050761%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8030080301%_ '0))))
                  (if (gx#stx-null? _%tl5073250764%_)
                      (_%__match8037480375%_
                       _%e5070550822%_
                       _%hd5070650826%_
                       _%tl5070750829%_
                       _%__splice8030080301%_
                       _%target5073050761%_
                       _%tl5073250764%_)
                      (let () (declare (not safe)) (_%g5068450744%_)))))
              (let () (declare (not safe)) (_%g5068450744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5070750829%_)
                                              (let ((_%__splice8030080301%_
                                                     (gx#syntax-split-splice
                                                      _%tl5070750829%_
                                                      '0)))
                                                (let ((_%tl5073250764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8030080301%_
                                                          '1)))
                                                      (_%target5073050761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8030080301%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5073250764%_)
                                                      (_%__match8037480375%_
                                                       _%e5070550822%_
                                                       _%hd5070650826%_
                                                       _%tl5070750829%_
                                                       _%__splice8030080301%_
                                                       _%target5073050761%_
                                                       _%tl5073250764%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5068450744%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5068450744%_))))
                                      (if (gx#stx-pair/null? _%tl5070750829%_)
                                          (let ((_%__splice8030080301%_
                                                 (gx#syntax-split-splice
                                                  _%tl5070750829%_
                                                  '0)))
                                            (let ((_%tl5073250764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8030080301%_
                                                      '1)))
                                                  (_%target5073050761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8030080301%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073250764%_)
                                                  (_%__match8037480375%_
                                                   _%e5070550822%_
                                                   _%hd5070650826%_
                                                   _%tl5070750829%_
                                                   _%__splice8030080301%_
                                                   _%target5073050761%_
                                                   _%tl5073250764%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068450744%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5068450744%_))))
                                  (if (gx#stx-pair/null? _%tl5070750829%_)
                                      (let ((_%__splice8030080301%_
                                             (gx#syntax-split-splice
                                              _%tl5070750829%_
                                              '0)))
                                        (let ((_%tl5073250764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8030080301%_
                                                  '1)))
                                              (_%target5073050761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8030080301%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5073250764%_)
                                              (_%__match8037480375%_
                                               _%e5070550822%_
                                               _%hd5070650826%_
                                               _%tl5070750829%_
                                               _%__splice8030080301%_
                                               _%target5073050761%_
                                               _%tl5073250764%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5068450744%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068450744%_))))))
                          (if (gx#stx-pair/null? _%tl5070750829%_)
                              (let ((_%__splice8030080301%_
                                     (gx#syntax-split-splice
                                      _%tl5070750829%_
                                      '0)))
                                (let ((_%tl5073250764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '1)))
                                      (_%target5073050761%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073250764%_)
                                      (_%__match8037480375%_
                                       _%e5070550822%_
                                       _%hd5070650826%_
                                       _%tl5070750829%_
                                       _%__splice8030080301%_
                                       _%target5073050761%_
                                       _%tl5073250764%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068450744%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068450744%_))))))
                   (_%__match8032280323%_
                    (lambda (_%e5068851256%_
                             _%hd5068951260%_
                             _%tl5069051263%_
                             _%e5069151266%_
                             _%hd5069251270%_
                             _%tl5069351273%_
                             _%__splice8029280293%_
                             _%target5069451276%_
                             _%tl5069651279%_)
                      (letrec ((_%loop5069751282%_
                                (lambda (_%hd5069551286%_ _%rand5070151289%_)
                                  (if (gx#stx-pair? _%hd5069551286%_)
                                      (let ((_%e5069851292%_
                                             (gx#syntax-e _%hd5069551286%_)))
                                        (let ((_%lp-tl5070051299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5069851292%_)))
                                              (_%lp-hd5069951296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5069851292%_))))
                                          (_%loop5069751282%_
                                           _%lp-tl5070051299%_
                                           (cons _%lp-hd5069951296%_
                                                 _%rand5070151289%_))))
                                      (let ((_%rand5070251302%_
                                             (reverse _%rand5070151289%_)))
                                        (let ((_%L51306%_ _%rand5070251302%_)
                                              (_%L51308%_ _%hd5069251270%_))
                                          (if (gx#identifier? _%L51308%_)
                                              (_%__kont8029080291%_
                                               _%L51306%_
                                               _%L51308%_)
                                              (_%__match8033480335%_
                                               _%e5068851256%_
                                               _%hd5068951260%_
                                               _%tl5069051263%_
                                               _%e5069151266%_
                                               _%hd5069251270%_
                                               _%tl5069351273%_))))))))
                        (_%loop5069751282%_ _%target5069451276%_ '())))))
              (if (gx#stx-pair? _%__stx8028780288%_)
                  (let ((_%e5068851256%_ (gx#syntax-e _%__stx8028780288%_)))
                    (let ((_%tl5069051263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5068851256%_)))
                          (_%hd5068951260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5068851256%_))))
                      (if (gx#stx-pair? _%tl5069051263%_)
                          (let ((_%e5069151266%_
                                 (gx#syntax-e _%tl5069051263%_)))
                            (let ((_%tl5069351273%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5069151266%_)))
                                  (_%hd5069251270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5069151266%_))))
                              (if (gx#stx-pair/null? _%tl5069351273%_)
                                  (let ((_%__splice8029280293%_
                                         (gx#syntax-split-splice
                                          _%tl5069351273%_
                                          '0)))
                                    (let ((_%tl5069651279%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8029280293%_
                                              '1)))
                                          (_%target5069451276%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8029280293%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5069651279%_)
                                          (_%__match8032280323%_
                                           _%e5068851256%_
                                           _%hd5068951260%_
                                           _%tl5069051263%_
                                           _%e5069151266%_
                                           _%hd5069251270%_
                                           _%tl5069351273%_
                                           _%__splice8029280293%_
                                           _%target5069451276%_
                                           _%tl5069651279%_)
                                          (if (gx#stx-pair? _%hd5069251270%_)
                                              (let ((_%e5071150842%_
                                                     (gx#syntax-e
                                                      _%hd5069251270%_)))
                                                (let ((_%tl5071350849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5071150842%_)))
                                                      (_%hd5071250846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5071150842%_))))
                                                  (if (gx#identifier?
                                                       _%hd5071250846%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85026_|
                                                           _%hd5071250846%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5071350849%_)
                                                              (let ((_%e5071450852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5071350849%_)))
                        (let ((_%tl5071650859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5071450852%_)))
                              (_%hd5071550856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5071450852%_))))
                          (if (gx#stx-pair/null? _%tl5069051263%_)
                              (let ((_%__splice8030080301%_
                                     (gx#syntax-split-splice
                                      _%tl5069051263%_
                                      '0)))
                                (let ((_%tl5073250764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '1)))
                                      (_%target5073050761%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073250764%_)
                                      (_%__match8037480375%_
                                       _%e5068851256%_
                                       _%hd5068951260%_
                                       _%tl5069051263%_
                                       _%__splice8030080301%_
                                       _%target5073050761%_
                                       _%tl5073250764%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068450744%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068450744%_)))))
                      (if (gx#stx-pair/null? _%tl5069051263%_)
                          (let ((_%__splice8030080301%_
                                 (gx#syntax-split-splice _%tl5069051263%_ '0)))
                            (let ((_%tl5073250764%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8030080301%_ '1)))
                                  (_%target5073050761%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8030080301%_
                                      '0))))
                              (if (gx#stx-null? _%tl5073250764%_)
                                  (_%__match8037480375%_
                                   _%e5068851256%_
                                   _%hd5068951260%_
                                   _%tl5069051263%_
                                   _%__splice8030080301%_
                                   _%target5073050761%_
                                   _%tl5073250764%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5068450744%_)))))
                          (let () (declare (not safe)) (_%g5068450744%_))))
                  (if (gx#stx-pair/null? _%tl5069051263%_)
                      (let ((_%__splice8030080301%_
                             (gx#syntax-split-splice _%tl5069051263%_ '0)))
                        (let ((_%tl5073250764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8030080301%_ '1)))
                              (_%target5073050761%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8030080301%_ '0))))
                          (if (gx#stx-null? _%tl5073250764%_)
                              (_%__match8037480375%_
                               _%e5068851256%_
                               _%hd5068951260%_
                               _%tl5069051263%_
                               _%__splice8030080301%_
                               _%target5073050761%_
                               _%tl5073250764%_)
                              (let ()
                                (declare (not safe))
                                (_%g5068450744%_)))))
                      (let () (declare (not safe)) (_%g5068450744%_))))
              (if (gx#stx-pair/null? _%tl5069051263%_)
                  (let ((_%__splice8030080301%_
                         (gx#syntax-split-splice _%tl5069051263%_ '0)))
                    (let ((_%tl5073250764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '1)))
                          (_%target5073050761%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '0))))
                      (if (gx#stx-null? _%tl5073250764%_)
                          (_%__match8037480375%_
                           _%e5068851256%_
                           _%hd5068951260%_
                           _%tl5069051263%_
                           _%__splice8030080301%_
                           _%target5073050761%_
                           _%tl5073250764%_)
                          (let () (declare (not safe)) (_%g5068450744%_)))))
                  (let () (declare (not safe)) (_%g5068450744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069051263%_)
                                                  (let ((_%__splice8030080301%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069051263%_
                                                          '0)))
                                                    (let ((_%tl5073250764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8030080301%_
                                                              '1)))
                                                          (_%target5073050761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8030080301%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073250764%_)
                                                          (_%__match8037480375%_
                                                           _%e5068851256%_
                                                           _%hd5068951260%_
                                                           _%tl5069051263%_
                                                           _%__splice8030080301%_
                                                           _%target5073050761%_
                                                           _%tl5073250764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5068450744%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068450744%_)))))))
                                  (if (gx#stx-pair? _%hd5069251270%_)
                                      (let ((_%e5071150842%_
                                             (gx#syntax-e _%hd5069251270%_)))
                                        (let ((_%tl5071350849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5071150842%_)))
                                              (_%hd5071250846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5071150842%_))))
                                          (if (gx#identifier? _%hd5071250846%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g85026_|
                                                   _%hd5071250846%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5071350849%_)
                                                      (let ((_%e5071450852%_
                                                             (gx#syntax-e
                                                              _%tl5071350849%_)))
                                                        (let ((_%tl5071650859%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5071450852%_)))
                      (_%hd5071550856%_
                       (let () (declare (not safe)) (##car _%e5071450852%_))))
                  (if (gx#stx-pair/null? _%tl5069051263%_)
                      (let ((_%__splice8030080301%_
                             (gx#syntax-split-splice _%tl5069051263%_ '0)))
                        (let ((_%tl5073250764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8030080301%_ '1)))
                              (_%target5073050761%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8030080301%_ '0))))
                          (if (gx#stx-null? _%tl5073250764%_)
                              (_%__match8037480375%_
                               _%e5068851256%_
                               _%hd5068951260%_
                               _%tl5069051263%_
                               _%__splice8030080301%_
                               _%target5073050761%_
                               _%tl5073250764%_)
                              (let ()
                                (declare (not safe))
                                (_%g5068450744%_)))))
                      (let () (declare (not safe)) (_%g5068450744%_)))))
              (if (gx#stx-pair/null? _%tl5069051263%_)
                  (let ((_%__splice8030080301%_
                         (gx#syntax-split-splice _%tl5069051263%_ '0)))
                    (let ((_%tl5073250764%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '1)))
                          (_%target5073050761%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8030080301%_ '0))))
                      (if (gx#stx-null? _%tl5073250764%_)
                          (_%__match8037480375%_
                           _%e5068851256%_
                           _%hd5068951260%_
                           _%tl5069051263%_
                           _%__splice8030080301%_
                           _%target5073050761%_
                           _%tl5073250764%_)
                          (let () (declare (not safe)) (_%g5068450744%_)))))
                  (let () (declare (not safe)) (_%g5068450744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5069051263%_)
                                                      (let ((_%__splice8030080301%_
                                                             (gx#syntax-split-splice
                                                              _%tl5069051263%_
                                                              '0)))
                                                        (let ((_%tl5073250764%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8030080301%_ '1)))
                      (_%target5073050761%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8030080301%_ '0))))
                  (if (gx#stx-null? _%tl5073250764%_)
                      (_%__match8037480375%_
                       _%e5068851256%_
                       _%hd5068951260%_
                       _%tl5069051263%_
                       _%__splice8030080301%_
                       _%target5073050761%_
                       _%tl5073250764%_)
                      (let () (declare (not safe)) (_%g5068450744%_)))))
              (let () (declare (not safe)) (_%g5068450744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5069051263%_)
                                                  (let ((_%__splice8030080301%_
                                                         (gx#syntax-split-splice
                                                          _%tl5069051263%_
                                                          '0)))
                                                    (let ((_%tl5073250764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8030080301%_
                                                              '1)))
                                                          (_%target5073050761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8030080301%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5073250764%_)
                                                          (_%__match8037480375%_
                                                           _%e5068851256%_
                                                           _%hd5068951260%_
                                                           _%tl5069051263%_
                                                           _%__splice8030080301%_
                                                           _%target5073050761%_
                                                           _%tl5073250764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5068450744%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068450744%_))))))
                                      (if (gx#stx-pair/null? _%tl5069051263%_)
                                          (let ((_%__splice8030080301%_
                                                 (gx#syntax-split-splice
                                                  _%tl5069051263%_
                                                  '0)))
                                            (let ((_%tl5073250764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8030080301%_
                                                      '1)))
                                                  (_%target5073050761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8030080301%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5073250764%_)
                                                  (_%__match8037480375%_
                                                   _%e5068851256%_
                                                   _%hd5068951260%_
                                                   _%tl5069051263%_
                                                   _%__splice8030080301%_
                                                   _%target5073050761%_
                                                   _%tl5073250764%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5068450744%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5068450744%_)))))))
                          (if (gx#stx-pair/null? _%tl5069051263%_)
                              (let ((_%__splice8030080301%_
                                     (gx#syntax-split-splice
                                      _%tl5069051263%_
                                      '0)))
                                (let ((_%tl5073250764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '1)))
                                      (_%target5073050761%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8030080301%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5073250764%_)
                                      (_%__match8037480375%_
                                       _%e5068851256%_
                                       _%hd5068951260%_
                                       _%tl5069051263%_
                                       _%__splice8030080301%_
                                       _%target5073050761%_
                                       _%tl5073250764%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5068450744%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5068450744%_))))))
                  (let () (declare (not safe)) (_%g5068450744%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51340%_)
        (let* ((_%__stx8037780378%_ _%stx51340%_)
               (_%g5134451365%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8037780378%_))))
          (let ((_%__kont8038080381%_
                 (lambda (_%L51433%_)
                   (let* ((_%g5144551452%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51340%_
                            _%L51433%_))
                          (_%E5144751458%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5144551452%_
                                    '([var . parts]))
                             (void)))
                          (_%K5144851674%_
                           (lambda (_%parts51462%_ _%var51464%_)
                             (let ((_%$e51466%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51464%_))))
                               (if _%$e51466%_
                                   ((lambda (_%te51470%_)
                                      (let _%loop51473%_ ((_%parts51476%_
                                                           _%parts51462%_)
                                                          (_%type51478%_
                                                           (##direct-structure-ref
                                                            _%te51470%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51479%_
                                                           _%var51464%_)
                                                          (_%nil-check?51480%_
                                                           '#f))
                                        (let* ((_%parts5148151489%_
                                                _%parts51476%_)
                                               (_%else5148351501%_
                                                (lambda () _%object51479%_))
                                               (_%K5148551656%_
                                                (lambda (_%rest51505%_
                                                         _%part51507%_)
                                                  (if (and (not _%nil-check?51480%_)
                                                           (let ((__tmp85027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51507%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp85027)))
              (let ((_%str51511%_ (symbol->string _%part51507%_)))
                (_%loop51473%_
                 (cons (let ((__tmp85028
                              (substring
                               _%str51511%_
                               '1
                               (string-length _%str51511%_))))
                         (declare (not safe))
                         (##string->symbol __tmp85028))
                       _%rest51505%_)
                 _%type51478%_
                 _%object51479%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51478%_))
                  (let* ((_%g5151651531%_
                          (lambda (_%g5151751527%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5151751527%_)))
                         (_%g5151551648%_
                          (lambda (_%g5151751535%_)
                            (if (gx#stx-pair? _%g5151751535%_)
                                (let ((_%e5152051538%_
                                       (gx#syntax-e _%g5151751535%_)))
                                  (let ((_%hd5152151542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5152051538%_)))
                                        (_%tl5152251545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5152051538%_))))
                                    (if (gx#stx-pair? _%tl5152251545%_)
                                        (let ((_%e5152351548%_
                                               (gx#syntax-e _%tl5152251545%_)))
                                          (let ((_%hd5152451552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5152351548%_)))
                                                (_%tl5152551555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5152351548%_))))
                                            (if (gx#stx-null? _%tl5152551555%_)
                                                ((lambda (_%L51558%_
                                                          _%L51560%_)
                                                   (if (null? _%rest51505%_)
                                                       (let ((_%$e51590%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51478%_
                                                               _%part51507%_)))
                                                         (if _%$e51590%_
                                                             ((lambda (_%slot-type51594%_)
                                                                (let* ((_%g5159751605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5159851601%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5159851601%_)))
                               (_%g5159651628%_
                                (lambda (_%g5159851609%_)
                                  ((lambda (_%L51612%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51612%_ '()))
                                                 (cons (cons _%L51558%_
                                                             (cons _%L51560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5159851609%_))))
                          (_%g5159651628%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51340%_
                              _%slot-type51594%_)))))
                      _%$e51590%_)
                     (if _%nil-check?51480%_
                         (cons _%L51558%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51560%_ '()))
                                     '()))
                         (cons _%L51558%_ (cons _%L51560%_ '())))))
               (let ((_%$e51636%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51478%_
                       _%part51507%_)))
                 (if _%$e51636%_
                     ((lambda (_%type51640%_)
                        (let ((_%type51643%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51340%_
                                  _%type51640%_))))
                          (if _%nil-check?51480%_
                              (_%loop51473%_
                               _%rest51505%_
                               _%type51643%_
                               (cons _%L51558%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51560%_ '()))
                                           '()))
                               '#f)
                              (_%loop51473%_
                               _%rest51505%_
                               _%type51643%_
                               (cons _%L51558%_ (cons _%L51560%_ '()))
                               '#f))))
                      _%$e51636%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51340%_
                      _%L51433%_
                      _%part51507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5152451552%_
                                                 _%hd5152151542%_)
                                                (_%g5151651531%_
                                                 _%g5151751535%_))))
                                        (_%g5151651531%_ _%g5151751535%_))))
                                (_%g5151651531%_ _%g5151751535%_)))))
                    (_%g5151551648%_
                     (list (if _%nil-check?51480%_
                               (cons 'check-nil! (cons _%object51479%_ '()))
                               _%object51479%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51340%_
                            _%type51478%_
                            _%part51507%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51478%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51340%_
                       _%type51478%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5148151489%_)
                                              (let ((_%hd5148651660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5148151489%_)))
                                                    (_%tl5148751663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5148151489%_))))
                                                (let* ((_%part51666%_
                                                        _%hd5148651660%_)
                                                       (_%rest51669%_
                                                        _%tl5148751663%_))
                                                  (_%K5148551656%_
                                                   _%rest51669%_
                                                   _%part51666%_)))
                                              (_%else5148351501%_)))))
                                    _%$e51466%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51433%_ '())))))))
                     (if (pair? _%g5144551452%_)
                         (let ((_%hd5144951678%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5144551452%_)))
                               (_%tl5145051681%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5144551452%_))))
                           (let* ((_%var51684%_ _%hd5144951678%_)
                                  (_%parts51687%_ _%tl5145051681%_))
                             (_%K5144851674%_ _%parts51687%_ _%var51684%_)))
                         (_%E5144751458%_)))))
                (_%__kont8038280383%_
                 (lambda (_%L51392%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51392%_ '())))))
            (let ((_%__match8039880399%_
                   (lambda (_%e5134751413%_
                            _%hd5134851417%_
                            _%tl5134951420%_
                            _%e5135051423%_
                            _%hd5135151427%_
                            _%tl5135251430%_)
                     (let ((_%L51433%_ _%hd5135151427%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51433%_)
                           (_%__kont8038080381%_ _%L51433%_)
                           (_%__kont8038280383%_ _%hd5135151427%_))))))
              (if (gx#stx-pair? _%__stx8037780378%_)
                  (let ((_%e5134751413%_ (gx#syntax-e _%__stx8037780378%_)))
                    (let ((_%tl5134951420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5134751413%_)))
                          (_%hd5134851417%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5134751413%_))))
                      (if (gx#stx-pair? _%tl5134951420%_)
                          (let ((_%e5135051423%_
                                 (gx#syntax-e _%tl5134951420%_)))
                            (let ((_%tl5135251430%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5135051423%_)))
                                  (_%hd5135151427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5135051423%_))))
                              (if (gx#stx-null? _%tl5135251430%_)
                                  (_%__match8039880399%_
                                   _%e5134751413%_
                                   _%hd5134851417%_
                                   _%tl5134951420%_
                                   _%e5135051423%_
                                   _%hd5135151427%_
                                   _%tl5135251430%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5134451365%_)))))
                          (let () (declare (not safe)) (_%g5134451365%_)))))
                  (let () (declare (not safe)) (_%g5134451365%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51694%_)
        (let* ((_%__stx8041580416%_ _%stx51694%_)
               (_%g5169851727%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8041580416%_))))
          (let ((_%__kont8041880419%_
                 (lambda (_%L51819%_ _%L51821%_)
                   (let* ((_%g5183551842%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51694%_
                            _%L51821%_))
                          (_%E5183751848%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5183551842%_
                                    '([var . parts]))
                             (void)))
                          (_%K5183852078%_
                           (lambda (_%parts51852%_ _%var51854%_)
                             (let ((_%$e51856%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51854%_))))
                               (if _%$e51856%_
                                   ((lambda (_%te51860%_)
                                      (let _%loop51863%_ ((_%parts51866%_
                                                           _%parts51852%_)
                                                          (_%type51868%_
                                                           (##direct-structure-ref
                                                            _%te51860%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51869%_
                                                           _%var51854%_)
                                                          (_%checked-mutator?51870%_
                                                           (##direct-structure-ref
                                                            _%te51860%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51871%_
                                                           '#f))
                                        (let* ((_%parts5187251879%_
                                                _%parts51866%_)
                                               (_%E5187451885%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5187251879%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5187552060%_
                                                (lambda (_%rest51889%_
                                                         _%part51891%_)
                                                  (if (and (not _%nil-check?51871%_)
                                                           (let ((__tmp85029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51891%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp85029)))
              (let ((_%str51895%_ (symbol->string _%part51891%_)))
                (_%loop51863%_
                 (cons (let ((__tmp85030
                              (substring
                               _%str51895%_
                               '1
                               (string-length _%str51895%_))))
                         (declare (not safe))
                         (##string->symbol __tmp85030))
                       _%rest51889%_)
                 _%type51868%_
                 _%object51869%_
                 _%checked-mutator?51870%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51868%_))
                  (if (null? _%rest51889%_)
                      (let* ((_%g5190251917%_
                              (lambda (_%g5190351913%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5190351913%_)))
                             (_%g5190151974%_
                              (lambda (_%g5190351921%_)
                                (if (gx#stx-pair? _%g5190351921%_)
                                    (let ((_%e5190651924%_
                                           (gx#syntax-e _%g5190351921%_)))
                                      (let ((_%hd5190751928%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5190651924%_)))
                                            (_%tl5190851931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5190651924%_))))
                                        (if (gx#stx-pair? _%tl5190851931%_)
                                            (let ((_%e5190951934%_
                                                   (gx#syntax-e
                                                    _%tl5190851931%_)))
                                              (let ((_%hd5191051938%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5190951934%_)))
                                                    (_%tl5191151941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5190951934%_))))
                                                (if (gx#stx-null?
                                                     _%tl5191151941%_)
                                                    ((lambda (_%L51944%_
                                                              _%L51946%_)
                                                       (if _%nil-check?51871%_
                                                           (cons _%L51944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51946%_ '()))
                               (cons _%L51819%_ '())))
                   (cons _%L51944%_ (cons _%L51946%_ (cons _%L51819%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5191051938%_
                                                     _%hd5190751928%_)
                                                    (_%g5190251917%_
                                                     _%g5190351921%_))))
                                            (_%g5190251917%_
                                             _%g5190351921%_))))
                                    (_%g5190251917%_ _%g5190351921%_)))))
                        (_%g5190151974%_
                         (list _%object51869%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51694%_
                                _%type51868%_
                                _%part51891%_
                                (if _%checked-mutator?51870%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51868%_
                                     _%part51891%_)
                                    '#f)))))
                      (let ((_%$e51978%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51868%_
                              _%part51891%_)))
                        (if _%$e51978%_
                            ((lambda (_%type51982%_)
                               (let* ((_%type51985%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51694%_
                                          _%type51982%_)))
                                      (_%g5198852003%_
                                       (lambda (_%g5198951999%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5198951999%_)))
                                      (_%g5198752050%_
                                       (lambda (_%g5198952007%_)
                                         (if (gx#stx-pair? _%g5198952007%_)
                                             (let ((_%e5199252010%_
                                                    (gx#syntax-e
                                                     _%g5198952007%_)))
                                               (let ((_%hd5199352014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5199252010%_)))
                                                     (_%tl5199452017%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5199252010%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5199452017%_)
                                                     (let ((_%e5199552020%_
                                                            (gx#syntax-e
                                                             _%tl5199452017%_)))
                                                       (let ((_%hd5199652024%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5199552020%_)))
                     (_%tl5199752027%_
                      (let () (declare (not safe)) (##cdr _%e5199552020%_))))
                 (if (gx#stx-null? _%tl5199752027%_)
                     ((lambda (_%L52030%_ _%L52032%_)
                        (_%loop51863%_
                         _%rest51889%_
                         _%type51985%_
                         (cons _%L52030%_ (cons _%L52032%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type51985%_
                          _%part51891%_)
                         '#f))
                      _%hd5199652024%_
                      _%hd5199352014%_)
                     (_%g5198852003%_ _%g5198952007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5198852003%_
                                                      _%g5198952007%_))))
                                             (_%g5198852003%_
                                              _%g5198952007%_)))))
                                 (_%g5198752050%_
                                  (list (if _%nil-check?51871%_
                                            (cons 'check-nil!
                                                  (cons _%object51869%_ '()))
                                            _%object51869%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51694%_
                                         _%type51985%_
                                         _%part51891%_)))))
                             _%$e51978%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51694%_
                             _%L51821%_
                             _%part51891%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51868%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51694%_
                       _%type51868%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5187251879%_)
                                              (let ((_%hd5187652064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5187251879%_)))
                                                    (_%tl5187752067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5187251879%_))))
                                                (let* ((_%part52070%_
                                                        _%hd5187652064%_)
                                                       (_%rest52073%_
                                                        _%tl5187752067%_))
                                                  (_%K5187552060%_
                                                   _%rest52073%_
                                                   _%part52070%_)))
                                              (_%E5187451885%_)))))
                                    _%$e51856%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51694%_)))))))
                     (if (pair? _%g5183551842%_)
                         (let ((_%hd5183952082%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5183551842%_)))
                               (_%tl5184052085%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5183551842%_))))
                           (let* ((_%var52088%_ _%hd5183952082%_)
                                  (_%parts52091%_ _%tl5184052085%_))
                             (_%K5183852078%_ _%parts52091%_ _%var52088%_)))
                         (_%E5183751848%_)))))
                (_%__kont8042080421%_
                 (lambda (_%L51764%_ _%L51766%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51694%_)))))
            (let ((_%__match8044280443%_
                   (lambda (_%e5170251789%_
                            _%hd5170351793%_
                            _%tl5170451796%_
                            _%e5170551799%_
                            _%hd5170651803%_
                            _%tl5170751806%_
                            _%e5170851809%_
                            _%hd5170951813%_
                            _%tl5171051816%_)
                     (let ((_%L51819%_ _%hd5170951813%_)
                           (_%L51821%_ _%hd5170651803%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51821%_)
                           (_%__kont8041880419%_ _%L51819%_ _%L51821%_)
                           (_%__kont8042080421%_
                            _%hd5170951813%_
                            _%hd5170651803%_))))))
              (if (gx#stx-pair? _%__stx8041580416%_)
                  (let ((_%e5170251789%_ (gx#syntax-e _%__stx8041580416%_)))
                    (let ((_%tl5170451796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5170251789%_)))
                          (_%hd5170351793%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5170251789%_))))
                      (if (gx#stx-pair? _%tl5170451796%_)
                          (let ((_%e5170551799%_
                                 (gx#syntax-e _%tl5170451796%_)))
                            (let ((_%tl5170751806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5170551799%_)))
                                  (_%hd5170651803%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5170551799%_))))
                              (if (gx#stx-pair? _%tl5170751806%_)
                                  (let ((_%e5170851809%_
                                         (gx#syntax-e _%tl5170751806%_)))
                                    (let ((_%tl5171051816%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5170851809%_)))
                                          (_%hd5170951813%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5170851809%_))))
                                      (if (gx#stx-null? _%tl5171051816%_)
                                          (_%__match8044280443%_
                                           _%e5170251789%_
                                           _%hd5170351793%_
                                           _%tl5170451796%_
                                           _%e5170551799%_
                                           _%hd5170651803%_
                                           _%tl5170751806%_
                                           _%e5170851809%_
                                           _%hd5170951813%_
                                           _%tl5171051816%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5169851727%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5169851727%_)))))
                          (let () (declare (not safe)) (_%g5169851727%_)))))
                  (let () (declare (not safe)) (_%g5169851727%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g85022_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85023_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85024_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85027_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85028_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85031_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85032_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85033_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85034_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85038_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85039_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85040_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85041_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g85045_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46411%_)
        (let* ((_%__stx7933879339%_ _%stx46411%_)
               (_%g4642046629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7933879339%_))))
          (let ((_%__kont7934179342%_
                 (lambda (_%L47535%_
                          _%L47537%_
                          _%L47538%_
                          _%L47539%_
                          _%L47540%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47540%_ (cons _%L47539%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47540%_
                                                       (cons _%L47538%_
                                                             (cons _%L47537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4758347586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4758447589%_)
                  (cons _%g4758347586%_ _%g4758447589%_))
                '()
                _%L47535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7934579346%_
                 (lambda (_%L47379%_
                          _%L47381%_
                          _%L47382%_
                          _%L47383%_
                          _%L47384%_
                          _%L47385%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47385%_ (cons _%L47384%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47385%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47382%_ (cons _%L47381%_ '())))
                           (foldr (lambda (_%g4742947432%_ _%g4743047435%_)
                                    (cons _%g4742947432%_ _%g4743047435%_))
                                  '()
                                  _%L47379%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7934979350%_
                 (lambda (_%L47196%_ _%L47198%_ _%L47199%_ _%L47200%_)
                   (let ((_%meta47237%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46411%_
                             _%L47198%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47237%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47200%_
                                           (cons _%L47199%_
                                                 (cons _%L47198%_ '())))
                                     (foldr (lambda (_%g4724147244%_
                                                     _%g4724247247%_)
                                              (cons _%g4724147244%_
                                                    _%g4724247247%_))
                                            '()
                                            _%L47196%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47237%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47200%_
                                               (cons _%L47199%_
                                                     (cons _%L47198%_ '())))
                                         (foldr (lambda (_%g4725147254%_
                                                         _%g4725247257%_)
                                                  (cons _%g4725147254%_
                                                        _%g4725247257%_))
                                                '()
                                                _%L47196%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46411%_
                              _%L47198%_
                              _%meta47237%_))))))
                (_%__kont7935379354%_
                 (lambda (_%L47074%_ _%L47076%_ _%L47077%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47077%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47076%_ '())))
                               (foldr (lambda (_%g4710047103%_ _%g4710147106%_)
                                        (cons _%g4710047103%_ _%g4710147106%_))
                                      '()
                                      _%L47074%_)))))
                (_%__kont7935779358%_
                 (lambda (_%L46932%_
                          _%L46934%_
                          _%L46935%_
                          _%L46936%_
                          _%L46937%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46937%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46936%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46937%_
                                                       (cons _%L46935%_
                                                             (cons _%L46934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4697846981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4697946984%_)
                  (cons _%g4697846981%_ _%g4697946984%_))
                '()
                _%L46932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7936179362%_
                 (lambda (_%L46790%_ _%L46792%_ _%L46793%_ _%L46794%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46794%_ _%L46793%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46792%_
                                                 (foldr (lambda (_%g4681646819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4681746822%_)
                  (cons _%g4681646819%_ _%g4681746822%_))
                '()
                _%L46790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7936579366%_
                 (lambda (_%L46686%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4670446707%_ _%g4670546710%_)
                                        (cons _%g4670446707%_ _%g4670546710%_))
                                      '()
                                      _%L46686%_))))))
            (let* ((_%__match7967179672%_
                    (lambda (_%e4660946636%_
                             _%hd4661046640%_
                             _%tl4661146643%_
                             _%e4661246646%_
                             _%hd4661346650%_
                             _%tl4661446653%_
                             _%__splice7936779368%_
                             _%target4661546656%_
                             _%tl4661746659%_)
                      (letrec ((_%loop4661846662%_
                                (lambda (_%hd4661646666%_ _%body4662246669%_)
                                  (if (gx#stx-pair? _%hd4661646666%_)
                                      (let ((_%e4661946672%_
                                             (gx#syntax-e _%hd4661646666%_)))
                                        (let ((_%lp-tl4662146679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661946672%_)))
                                              (_%lp-hd4662046676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661946672%_))))
                                          (_%loop4661846662%_
                                           _%lp-tl4662146679%_
                                           (cons _%lp-hd4662046676%_
                                                 _%body4662246669%_))))
                                      (let ((_%body4662346682%_
                                             (reverse _%body4662246669%_)))
                                        (_%__kont7936579366%_
                                         _%body4662346682%_))))))
                        (_%loop4661846662%_ _%target4661546656%_ '()))))
                   (_%__match7964979650%_
                    (lambda (_%e4658746720%_
                             _%hd4658846724%_
                             _%tl4658946727%_
                             _%e4659046730%_
                             _%hd4659146734%_
                             _%tl4659246737%_
                             _%e4659346740%_
                             _%hd4659446744%_
                             _%tl4659546747%_
                             _%e4659646750%_
                             _%hd4659746754%_
                             _%tl4659846757%_
                             _%__splice7936379364%_
                             _%target4659946760%_
                             _%tl4660146763%_)
                      (letrec ((_%loop4660246766%_
                                (lambda (_%hd4660046770%_ _%body4660646773%_)
                                  (if (gx#stx-pair? _%hd4660046770%_)
                                      (let ((_%e4660346776%_
                                             (gx#syntax-e _%hd4660046770%_)))
                                        (let ((_%lp-tl4660546783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660346776%_)))
                                              (_%lp-hd4660446780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660346776%_))))
                                          (_%loop4660246766%_
                                           _%lp-tl4660546783%_
                                           (cons _%lp-hd4660446780%_
                                                 _%body4660646773%_))))
                                      (let ((_%body4660746786%_
                                             (reverse _%body4660646773%_)))
                                        (let ((_%L46790%_ _%body4660746786%_)
                                              (_%L46792%_ _%tl4659546747%_)
                                              (_%L46793%_ _%tl4659846757%_)
                                              (_%L46794%_ _%hd4659746754%_))
                                          (if (gx#identifier? _%L46794%_)
                                              (_%__kont7936179362%_
                                               _%L46790%_
                                               _%L46792%_
                                               _%L46793%_
                                               _%L46794%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_)))))))))
                        (_%loop4660246766%_ _%target4659946760%_ '()))))
                   (_%__match7963579636%_
                    (lambda (_%e4658746720%_
                             _%hd4658846724%_
                             _%tl4658946727%_
                             _%e4659046730%_
                             _%hd4659146734%_
                             _%tl4659246737%_
                             _%e4659346740%_
                             _%hd4659446744%_
                             _%tl4659546747%_)
                      (if (gx#stx-pair? _%hd4659446744%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4659446744%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (if (gx#stx-pair/null? _%tl4659246737%_)
                                  (let ((_%__splice7936379364%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4659246737%_
                                          '0)))
                                    (let ((_%tl4660146763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '1)))
                                          (_%target4659946760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660146763%_)
                                          (_%__match7964979650%_
                                           _%e4658746720%_
                                           _%hd4658846724%_
                                           _%tl4658946727%_
                                           _%e4659046730%_
                                           _%hd4659146734%_
                                           _%tl4659246737%_
                                           _%e4659346740%_
                                           _%hd4659446744%_
                                           _%tl4659546747%_
                                           _%e4659646750%_
                                           _%hd4659746754%_
                                           _%tl4659846757%_
                                           _%__splice7936379364%_
                                           _%target4659946760%_
                                           _%tl4660146763%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                   (_%__match7961779618%_
                    (lambda (_%e4655346832%_
                             _%hd4655446836%_
                             _%tl4655546839%_
                             _%e4655646842%_
                             _%hd4655746846%_
                             _%tl4655846849%_
                             _%e4655946852%_
                             _%hd4656046856%_
                             _%tl4656146859%_
                             _%e4656246862%_
                             _%hd4656346866%_
                             _%tl4656446869%_
                             _%e4656546872%_
                             _%hd4656646876%_
                             _%tl4656746879%_
                             _%e4656846882%_
                             _%hd4656946886%_
                             _%tl4657046889%_
                             _%e4657146892%_
                             _%hd4657246896%_
                             _%tl4657346899%_
                             _%__splice7935979360%_
                             _%target4657446902%_
                             _%tl4657646905%_)
                      (letrec ((_%loop4657746908%_
                                (lambda (_%hd4657546912%_ _%body4658146915%_)
                                  (if (gx#stx-pair? _%hd4657546912%_)
                                      (let ((_%e4657846918%_
                                             (gx#syntax-e _%hd4657546912%_)))
                                        (let ((_%lp-tl4658046925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657846918%_)))
                                              (_%lp-hd4657946922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657846918%_))))
                                          (_%loop4657746908%_
                                           _%lp-tl4658046925%_
                                           (cons _%lp-hd4657946922%_
                                                 _%body4658146915%_))))
                                      (let ((_%body4658246928%_
                                             (reverse _%body4658146915%_)))
                                        (let ((_%L46932%_ _%body4658246928%_)
                                              (_%L46934%_ _%hd4657246896%_)
                                              (_%L46935%_ _%hd4656946886%_)
                                              (_%L46936%_ _%hd4656646876%_)
                                              (_%L46937%_ _%hd4656046856%_))
                                          (if (and (gx#identifier? _%L46937%_)
                                                   (gx#identifier? _%L46934%_)
                                                   (gx#identifier? _%L46935%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46935%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46935%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46935%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46935%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7935779358%_
                                               _%L46932%_
                                               _%L46934%_
                                               _%L46935%_
                                               _%L46936%_
                                               _%L46937%_)
                                              (_%__match7963579636%_
                                               _%e4655346832%_
                                               _%hd4655446836%_
                                               _%tl4655546839%_
                                               _%e4655646842%_
                                               _%hd4655746846%_
                                               _%tl4655846849%_
                                               _%e4655946852%_
                                               _%hd4656046856%_
                                               _%tl4656146859%_))))))))
                        (_%loop4657746908%_ _%target4657446902%_ '()))))
                   (_%__match7956179562%_
                    (lambda (_%e4652446994%_
                             _%hd4652546998%_
                             _%tl4652647001%_
                             _%e4652747004%_
                             _%hd4652847008%_
                             _%tl4652947011%_
                             _%e4653047014%_
                             _%hd4653147018%_
                             _%tl4653247021%_
                             _%e4653347024%_
                             _%hd4653447028%_
                             _%tl4653547031%_
                             _%e4653647034%_
                             _%hd4653747038%_
                             _%tl4653847041%_
                             _%__splice7935579356%_
                             _%target4653947044%_
                             _%tl4654147047%_)
                      (letrec ((_%loop4654247050%_
                                (lambda (_%hd4654047054%_ _%body4654647057%_)
                                  (if (gx#stx-pair? _%hd4654047054%_)
                                      (let ((_%e4654347060%_
                                             (gx#syntax-e _%hd4654047054%_)))
                                        (let ((_%lp-tl4654547067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4654347060%_)))
                                              (_%lp-hd4654447064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4654347060%_))))
                                          (_%loop4654247050%_
                                           _%lp-tl4654547067%_
                                           (cons _%lp-hd4654447064%_
                                                 _%body4654647057%_))))
                                      (let ((_%body4654747070%_
                                             (reverse _%body4654647057%_)))
                                        (let ((_%L47074%_ _%body4654747070%_)
                                              (_%L47076%_ _%hd4653747038%_)
                                              (_%L47077%_ _%hd4653147018%_))
                                          (if (gx#identifier? _%L47077%_)
                                              (_%__kont7935379354%_
                                               _%L47074%_
                                               _%L47076%_
                                               _%L47077%_)
                                              (_%__match7963579636%_
                                               _%e4652446994%_
                                               _%hd4652546998%_
                                               _%tl4652647001%_
                                               _%e4652747004%_
                                               _%hd4652847008%_
                                               _%tl4652947011%_
                                               _%e4653047014%_
                                               _%hd4653147018%_
                                               _%tl4653247021%_))))))))
                        (_%loop4654247050%_ _%target4653947044%_ '()))))
                   (_%__match7954179542%_
                    (lambda (_%e4652446994%_
                             _%hd4652546998%_
                             _%tl4652647001%_
                             _%e4652747004%_
                             _%hd4652847008%_
                             _%tl4652947011%_
                             _%e4653047014%_
                             _%hd4653147018%_
                             _%tl4653247021%_
                             _%e4653347024%_
                             _%hd4653447028%_
                             _%tl4653547031%_)
                      (if (gx#identifier? _%hd4653447028%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g85022_|
                               _%hd4653447028%_)
                              (if (gx#stx-pair? _%tl4653547031%_)
                                  (let ((_%e4653647034%_
                                         (gx#syntax-e _%tl4653547031%_)))
                                    (let ((_%tl4653847041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4653647034%_)))
                                          (_%hd4653747038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4653647034%_))))
                                      (if (gx#stx-null? _%tl4653847041%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4652947011%_)
                                              (let ((_%__splice7935579356%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4652947011%_
                                                      '0)))
                                                (let ((_%tl4654147047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7935579356%_
                                                          '1)))
                                                      (_%target4653947044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7935579356%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4654147047%_)
                                                      (_%__match7956179562%_
                                                       _%e4652446994%_
                                                       _%hd4652546998%_
                                                       _%tl4652647001%_
                                                       _%e4652747004%_
                                                       _%hd4652847008%_
                                                       _%tl4652947011%_
                                                       _%e4653047014%_
                                                       _%hd4653147018%_
                                                       _%tl4653247021%_
                                                       _%e4653347024%_
                                                       _%hd4653447028%_
                                                       _%tl4653547031%_
                                                       _%e4653647034%_
                                                       _%hd4653747038%_
                                                       _%tl4653847041%_
                                                       _%__splice7935579356%_
                                                       _%target4653947044%_
                                                       _%tl4654147047%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4653147018%_)
                                                          (let ((_%e4659646750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4653147018%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653147018%_)
                                                  (let ((_%e4659646750%_
                                                         (gx#syntax-e
                                                          _%hd4653147018%_)))
                                                    (let ((_%tl4659846757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659646750%_)))
                                                          (_%hd4659746754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659646750%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642046629%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))
                                          (if (gx#stx-pair? _%tl4653847041%_)
                                              (let ((_%e4656846882%_
                                                     (gx#syntax-e
                                                      _%tl4653847041%_)))
                                                (let ((_%tl4657046889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4656846882%_)))
                                                      (_%hd4656946886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4656846882%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657046889%_)
                                                      (let ((_%e4657146892%_
                                                             (gx#syntax-e
                                                              _%tl4657046889%_)))
                                                        (let ((_%tl4657346899%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657146892%_)))
                      (_%hd4657246896%_
                       (let () (declare (not safe)) (##car _%e4657146892%_))))
                  (if (gx#stx-null? _%tl4657346899%_)
                      (if (gx#stx-pair/null? _%tl4652947011%_)
                          (let ((_%__splice7935979360%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4652947011%_
                                  '0)))
                            (let ((_%tl4657646905%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7935979360%_ '1)))
                                  (_%target4657446902%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7935979360%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657646905%_)
                                  (_%__match7961779618%_
                                   _%e4652446994%_
                                   _%hd4652546998%_
                                   _%tl4652647001%_
                                   _%e4652747004%_
                                   _%hd4652847008%_
                                   _%tl4652947011%_
                                   _%e4653047014%_
                                   _%hd4653147018%_
                                   _%tl4653247021%_
                                   _%e4653347024%_
                                   _%hd4653447028%_
                                   _%tl4653547031%_
                                   _%e4653647034%_
                                   _%hd4653747038%_
                                   _%tl4653847041%_
                                   _%e4656846882%_
                                   _%hd4656946886%_
                                   _%tl4657046889%_
                                   _%e4657146892%_
                                   _%hd4657246896%_
                                   _%tl4657346899%_
                                   _%__splice7935979360%_
                                   _%target4657446902%_
                                   _%tl4657646905%_)
                                  (if (gx#stx-pair? _%hd4653147018%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4653147018%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))
                          (if (gx#stx-pair? _%hd4653147018%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4653147018%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                      (if (gx#stx-pair? _%hd4653147018%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4653147018%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (if (gx#stx-pair/null? _%tl4652947011%_)
                                  (let ((_%__splice7936379364%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4652947011%_
                                          '0)))
                                    (let ((_%tl4660146763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '1)))
                                          (_%target4659946760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660146763%_)
                                          (_%__match7964979650%_
                                           _%e4652446994%_
                                           _%hd4652546998%_
                                           _%tl4652647001%_
                                           _%e4652747004%_
                                           _%hd4652847008%_
                                           _%tl4652947011%_
                                           _%e4653047014%_
                                           _%hd4653147018%_
                                           _%tl4653247021%_
                                           _%e4659646750%_
                                           _%hd4659746754%_
                                           _%tl4659846757%_
                                           _%__splice7936379364%_
                                           _%target4659946760%_
                                           _%tl4660146763%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_))))))
              (if (gx#stx-pair? _%hd4653147018%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4653147018%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4652947011%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4652947011%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4652446994%_
                                   _%hd4652546998%_
                                   _%tl4652647001%_
                                   _%e4652747004%_
                                   _%hd4652847008%_
                                   _%tl4652947011%_
                                   _%e4653047014%_
                                   _%hd4653147018%_
                                   _%tl4653247021%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653147018%_)
                                                  (let ((_%e4659646750%_
                                                         (gx#syntax-e
                                                          _%hd4653147018%_)))
                                                    (let ((_%tl4659846757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659646750%_)))
                                                          (_%hd4659746754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659646750%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4652947011%_)
                                                          (let ((_%__splice7936379364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4652947011%_ '0)))
                    (let ((_%tl4660146763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '1)))
                          (_%target4659946760%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '0))))
                      (if (gx#stx-null? _%tl4660146763%_)
                          (_%__match7964979650%_
                           _%e4652446994%_
                           _%hd4652546998%_
                           _%tl4652647001%_
                           _%e4652747004%_
                           _%hd4652847008%_
                           _%tl4652947011%_
                           _%e4653047014%_
                           _%hd4653147018%_
                           _%tl4653247021%_
                           _%e4659646750%_
                           _%hd4659746754%_
                           _%tl4659846757%_
                           _%__splice7936379364%_
                           _%target4659946760%_
                           _%tl4660146763%_)
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))))
                                  (if (gx#stx-pair? _%hd4653147018%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4653147018%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4652947011%_)
                                              (let ((_%__splice7936379364%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4652947011%_
                                                      '0)))
                                                (let ((_%tl4660146763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '1)))
                                                      (_%target4659946760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660146763%_)
                                                      (_%__match7964979650%_
                                                       _%e4652446994%_
                                                       _%hd4652546998%_
                                                       _%tl4652647001%_
                                                       _%e4652747004%_
                                                       _%hd4652847008%_
                                                       _%tl4652947011%_
                                                       _%e4653047014%_
                                                       _%hd4653147018%_
                                                       _%tl4653247021%_
                                                       _%e4659646750%_
                                                       _%hd4659746754%_
                                                       _%tl4659846757%_
                                                       _%__splice7936379364%_
                                                       _%target4659946760%_
                                                       _%tl4660146763%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642046629%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                              (if (gx#stx-pair? _%hd4653147018%_)
                                  (let ((_%e4659646750%_
                                         (gx#syntax-e _%hd4653147018%_)))
                                    (let ((_%tl4659846757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659646750%_)))
                                          (_%hd4659746754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659646750%_))))
                                      (if (gx#stx-pair/null? _%tl4652947011%_)
                                          (let ((_%__splice7936379364%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4652947011%_
                                                  '0)))
                                            (let ((_%tl4660146763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7936379364%_
                                                      '1)))
                                                  (_%target4659946760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7936379364%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660146763%_)
                                                  (_%__match7964979650%_
                                                   _%e4652446994%_
                                                   _%hd4652546998%_
                                                   _%tl4652647001%_
                                                   _%e4652747004%_
                                                   _%hd4652847008%_
                                                   _%tl4652947011%_
                                                   _%e4653047014%_
                                                   _%hd4653147018%_
                                                   _%tl4653247021%_
                                                   _%e4659646750%_
                                                   _%hd4659746754%_
                                                   _%tl4659846757%_
                                                   _%__splice7936379364%_
                                                   _%target4659946760%_
                                                   _%tl4660146763%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                          (if (gx#stx-pair? _%hd4653147018%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4653147018%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (if (gx#stx-pair/null? _%tl4652947011%_)
                                      (let ((_%__splice7936379364%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4652947011%_
                                              '0)))
                                        (let ((_%tl4660146763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7936379364%_
                                                  '1)))
                                              (_%target4659946760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7936379364%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4660146763%_)
                                              (_%__match7964979650%_
                                               _%e4652446994%_
                                               _%hd4652546998%_
                                               _%tl4652647001%_
                                               _%e4652747004%_
                                               _%hd4652847008%_
                                               _%tl4652947011%_
                                               _%e4653047014%_
                                               _%hd4653147018%_
                                               _%tl4653247021%_
                                               _%e4659646750%_
                                               _%hd4659746754%_
                                               _%tl4659846757%_
                                               _%__splice7936379364%_
                                               _%target4659946760%_
                                               _%tl4660146763%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_))))))
                   (_%__match7951779518%_
                    (lambda (_%e4649747116%_
                             _%hd4649847120%_
                             _%tl4649947123%_
                             _%e4650047126%_
                             _%hd4650147130%_
                             _%tl4650247133%_
                             _%e4650347136%_
                             _%hd4650447140%_
                             _%tl4650547143%_
                             _%e4650647146%_
                             _%hd4650747150%_
                             _%tl4650847153%_
                             _%e4650947156%_
                             _%hd4651047160%_
                             _%tl4651147163%_
                             _%__splice7935179352%_
                             _%target4651247166%_
                             _%tl4651447169%_)
                      (letrec ((_%loop4651547172%_
                                (lambda (_%hd4651347176%_ _%body4651947179%_)
                                  (if (gx#stx-pair? _%hd4651347176%_)
                                      (let ((_%e4651647182%_
                                             (gx#syntax-e _%hd4651347176%_)))
                                        (let ((_%lp-tl4651847189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651647182%_)))
                                              (_%lp-hd4651747186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651647182%_))))
                                          (_%loop4651547172%_
                                           _%lp-tl4651847189%_
                                           (cons _%lp-hd4651747186%_
                                                 _%body4651947179%_))))
                                      (let ((_%body4652047192%_
                                             (reverse _%body4651947179%_)))
                                        (let ((_%L47196%_ _%body4652047192%_)
                                              (_%L47198%_ _%hd4651047160%_)
                                              (_%L47199%_ _%hd4650747150%_)
                                              (_%L47200%_ _%hd4650447140%_))
                                          (if (and (gx#identifier? _%L47200%_)
                                                   (gx#identifier? _%L47198%_)
                                                   (gx#identifier? _%L47199%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47199%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47199%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47199%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47199%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7934979350%_
                                               _%L47196%_
                                               _%L47198%_
                                               _%L47199%_
                                               _%L47200%_)
                                              (_%__match7954179542%_
                                               _%e4649747116%_
                                               _%hd4649847120%_
                                               _%tl4649947123%_
                                               _%e4650047126%_
                                               _%hd4650147130%_
                                               _%tl4650247133%_
                                               _%e4650347136%_
                                               _%hd4650447140%_
                                               _%tl4650547143%_
                                               _%e4650647146%_
                                               _%hd4650747150%_
                                               _%tl4650847153%_))))))))
                        (_%loop4651547172%_ _%target4651247166%_ '()))))
                   (_%__match7947779478%_
                    (lambda (_%e4646047269%_
                             _%hd4646147273%_
                             _%tl4646247276%_
                             _%e4646347279%_
                             _%hd4646447283%_
                             _%tl4646547286%_
                             _%e4646647289%_
                             _%hd4646747293%_
                             _%tl4646847296%_
                             _%e4646947299%_
                             _%hd4647047303%_
                             _%tl4647147306%_
                             _%e4647247309%_
                             _%hd4647347313%_
                             _%tl4647447316%_
                             _%e4647547319%_
                             _%hd4647647323%_
                             _%tl4647747326%_
                             _%e4647847329%_
                             _%hd4647947333%_
                             _%tl4648047336%_
                             _%e4648147339%_
                             _%hd4648247343%_
                             _%tl4648347346%_
                             _%__splice7934779348%_
                             _%target4648447349%_
                             _%tl4648647352%_)
                      (letrec ((_%loop4648747355%_
                                (lambda (_%hd4648547359%_ _%body4649147362%_)
                                  (if (gx#stx-pair? _%hd4648547359%_)
                                      (let ((_%e4648847365%_
                                             (gx#syntax-e _%hd4648547359%_)))
                                        (let ((_%lp-tl4649047372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4648847365%_)))
                                              (_%lp-hd4648947369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4648847365%_))))
                                          (_%loop4648747355%_
                                           _%lp-tl4649047372%_
                                           (cons _%lp-hd4648947369%_
                                                 _%body4649147362%_))))
                                      (let ((_%body4649247375%_
                                             (reverse _%body4649147362%_)))
                                        (let ((_%L47379%_ _%body4649247375%_)
                                              (_%L47381%_ _%hd4648247343%_)
                                              (_%L47382%_ _%hd4647947333%_)
                                              (_%L47383%_ _%hd4647647323%_)
                                              (_%L47384%_ _%hd4647047303%_)
                                              (_%L47385%_ _%hd4646747293%_))
                                          (if (and (gx#identifier? _%L47385%_)
                                                   (gx#identifier? _%L47381%_)
                                                   (gx#identifier? _%L47382%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7934579346%_
                                               _%L47379%_
                                               _%L47381%_
                                               _%L47382%_
                                               _%L47383%_
                                               _%L47384%_
                                               _%L47385%_)
                                              (_%__match7954179542%_
                                               _%e4646047269%_
                                               _%hd4646147273%_
                                               _%tl4646247276%_
                                               _%e4646347279%_
                                               _%hd4646447283%_
                                               _%tl4646547286%_
                                               _%e4646647289%_
                                               _%hd4646747293%_
                                               _%tl4646847296%_
                                               _%e4646947299%_
                                               _%hd4647047303%_
                                               _%tl4647147306%_))))))))
                        (_%loop4648747355%_ _%target4648447349%_ '()))))
                   (_%__match7944579446%_
                    (lambda (_%e4646047269%_
                             _%hd4646147273%_
                             _%tl4646247276%_
                             _%e4646347279%_
                             _%hd4646447283%_
                             _%tl4646547286%_
                             _%e4646647289%_
                             _%hd4646747293%_
                             _%tl4646847296%_
                             _%e4646947299%_
                             _%hd4647047303%_
                             _%tl4647147306%_
                             _%e4647247309%_
                             _%hd4647347313%_
                             _%tl4647447316%_)
                      (if (gx#identifier? _%hd4647347313%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g85023_|
                               _%hd4647347313%_)
                              (if (gx#stx-pair? _%tl4647447316%_)
                                  (let ((_%e4647547319%_
                                         (gx#syntax-e _%tl4647447316%_)))
                                    (let ((_%tl4647747326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4647547319%_)))
                                          (_%hd4647647323%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4647547319%_))))
                                      (if (gx#stx-pair? _%tl4647747326%_)
                                          (let ((_%e4647847329%_
                                                 (gx#syntax-e
                                                  _%tl4647747326%_)))
                                            (let ((_%tl4648047336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4647847329%_)))
                                                  (_%hd4647947333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4647847329%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4648047336%_)
                                                  (let ((_%e4648147339%_
                                                         (gx#syntax-e
                                                          _%tl4648047336%_)))
                                                    (let ((_%tl4648347346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4648147339%_)))
                                                          (_%hd4648247343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4648147339%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4648347346%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646547286%_)
                                                              (let ((_%__splice7934779348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4646547286%_
                              '0)))
                        (let ((_%tl4648647352%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934779348%_ '1)))
                              (_%target4648447349%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7934779348%_ '0))))
                          (if (gx#stx-null? _%tl4648647352%_)
                              (_%__match7947779478%_
                               _%e4646047269%_
                               _%hd4646147273%_
                               _%tl4646247276%_
                               _%e4646347279%_
                               _%hd4646447283%_
                               _%tl4646547286%_
                               _%e4646647289%_
                               _%hd4646747293%_
                               _%tl4646847296%_
                               _%e4646947299%_
                               _%hd4647047303%_
                               _%tl4647147306%_
                               _%e4647247309%_
                               _%hd4647347313%_
                               _%tl4647447316%_
                               _%e4647547319%_
                               _%hd4647647323%_
                               _%tl4647747326%_
                               _%e4647847329%_
                               _%hd4647947333%_
                               _%tl4648047336%_
                               _%e4648147339%_
                               _%hd4648247343%_
                               _%tl4648347346%_
                               _%__splice7934779348%_
                               _%target4648447349%_
                               _%tl4648647352%_)
                              (if (gx#stx-pair? _%hd4646747293%_)
                                  (let ((_%e4659646750%_
                                         (gx#syntax-e _%hd4646747293%_)))
                                    (let ((_%tl4659846757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659646750%_)))
                                          (_%hd4659746754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659646750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))))
                      (if (gx#stx-pair? _%hd4646747293%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4646747293%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                  (if (gx#stx-pair? _%hd4646747293%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4646747293%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (if (gx#stx-pair/null? _%tl4646547286%_)
                              (let ((_%__splice7936379364%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4646547286%_
                                      '0)))
                                (let ((_%tl4660146763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '1)))
                                      (_%target4659946760%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660146763%_)
                                      (_%__match7964979650%_
                                       _%e4646047269%_
                                       _%hd4646147273%_
                                       _%tl4646247276%_
                                       _%e4646347279%_
                                       _%hd4646447283%_
                                       _%tl4646547286%_
                                       _%e4646647289%_
                                       _%hd4646747293%_
                                       _%tl4646847296%_
                                       _%e4659646750%_
                                       _%hd4659746754%_
                                       _%tl4659846757%_
                                       _%__splice7936379364%_
                                       _%target4659946760%_
                                       _%tl4660146763%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4647047303%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85022_|
                                                           _%hd4647047303%_)
                                                          (if (gx#stx-null?
                                                               _%tl4648047336%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4646547286%_)
                          (let ((_%__splice7935979360%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4646547286%_
                                  '0)))
                            (let ((_%tl4657646905%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7935979360%_ '1)))
                                  (_%target4657446902%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7935979360%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657646905%_)
                                  (_%__match7961779618%_
                                   _%e4646047269%_
                                   _%hd4646147273%_
                                   _%tl4646247276%_
                                   _%e4646347279%_
                                   _%hd4646447283%_
                                   _%tl4646547286%_
                                   _%e4646647289%_
                                   _%hd4646747293%_
                                   _%tl4646847296%_
                                   _%e4646947299%_
                                   _%hd4647047303%_
                                   _%tl4647147306%_
                                   _%e4647247309%_
                                   _%hd4647347313%_
                                   _%tl4647447316%_
                                   _%e4647547319%_
                                   _%hd4647647323%_
                                   _%tl4647747326%_
                                   _%e4647847329%_
                                   _%hd4647947333%_
                                   _%tl4648047336%_
                                   _%__splice7935979360%_
                                   _%target4657446902%_
                                   _%tl4657646905%_)
                                  (if (gx#stx-pair? _%hd4646747293%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4646747293%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))
                          (if (gx#stx-pair? _%hd4646747293%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4646747293%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                      (if (gx#stx-pair? _%hd4646747293%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4646747293%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (if (gx#stx-pair/null? _%tl4646547286%_)
                                  (let ((_%__splice7936379364%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4646547286%_
                                          '0)))
                                    (let ((_%tl4660146763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '1)))
                                          (_%target4659946760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660146763%_)
                                          (_%__match7964979650%_
                                           _%e4646047269%_
                                           _%hd4646147273%_
                                           _%tl4646247276%_
                                           _%e4646347279%_
                                           _%hd4646447283%_
                                           _%tl4646547286%_
                                           _%e4646647289%_
                                           _%hd4646747293%_
                                           _%tl4646847296%_
                                           _%e4659646750%_
                                           _%hd4659746754%_
                                           _%tl4659846757%_
                                           _%__splice7936379364%_
                                           _%target4659946760%_
                                           _%tl4660146763%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                  (if (gx#stx-pair? _%hd4646747293%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4646747293%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (if (gx#stx-pair/null? _%tl4646547286%_)
                              (let ((_%__splice7936379364%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4646547286%_
                                      '0)))
                                (let ((_%tl4660146763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '1)))
                                      (_%target4659946760%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660146763%_)
                                      (_%__match7964979650%_
                                       _%e4646047269%_
                                       _%hd4646147273%_
                                       _%tl4646247276%_
                                       _%e4646347279%_
                                       _%hd4646447283%_
                                       _%tl4646547286%_
                                       _%e4646647289%_
                                       _%hd4646747293%_
                                       _%tl4646847296%_
                                       _%e4659646750%_
                                       _%hd4659746754%_
                                       _%tl4659846757%_
                                       _%__splice7936379364%_
                                       _%target4659946760%_
                                       _%tl4660146763%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
              (if (gx#stx-pair? _%hd4646747293%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4646747293%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4646547286%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4646547286%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4646047269%_
                                   _%hd4646147273%_
                                   _%tl4646247276%_
                                   _%e4646347279%_
                                   _%hd4646447283%_
                                   _%tl4646547286%_
                                   _%e4646647289%_
                                   _%hd4646747293%_
                                   _%tl4646847296%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646747293%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4646747293%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646547286%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4646547286%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4646047269%_
                       _%hd4646147273%_
                       _%tl4646247276%_
                       _%e4646347279%_
                       _%hd4646447283%_
                       _%tl4646547286%_
                       _%e4646647289%_
                       _%hd4646747293%_
                       _%tl4646847296%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))))
                                  (if (gx#stx-null? _%tl4647447316%_)
                                      (if (gx#stx-pair/null? _%tl4646547286%_)
                                          (let ((_%__splice7935179352%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4646547286%_
                                                  '0)))
                                            (let ((_%tl4651447169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7935179352%_
                                                      '1)))
                                                  (_%target4651247166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7935179352%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4651447169%_)
                                                  (_%__match7951779518%_
                                                   _%e4646047269%_
                                                   _%hd4646147273%_
                                                   _%tl4646247276%_
                                                   _%e4646347279%_
                                                   _%hd4646447283%_
                                                   _%tl4646547286%_
                                                   _%e4646647289%_
                                                   _%hd4646747293%_
                                                   _%tl4646847296%_
                                                   _%e4646947299%_
                                                   _%hd4647047303%_
                                                   _%tl4647147306%_
                                                   _%e4647247309%_
                                                   _%hd4647347313%_
                                                   _%tl4647447316%_
                                                   _%__splice7935179352%_
                                                   _%target4651247166%_
                                                   _%tl4651447169%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4646747293%_)
                                                      (let ((_%e4659646750%_
                                                             (gx#syntax-e
                                                              _%hd4646747293%_)))
                                                        (let ((_%tl4659846757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659646750%_)))
                      (_%hd4659746754%_
                       (let () (declare (not safe)) (##car _%e4659646750%_))))
                  (let () (declare (not safe)) (_%g4642046629%_))))
              (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646747293%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4646747293%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                      (if (gx#stx-pair? _%hd4646747293%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4646747293%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646547286%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4646547286%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4646047269%_
                                                           _%hd4646147273%_
                                                           _%tl4646247276%_
                                                           _%e4646347279%_
                                                           _%hd4646447283%_
                                                           _%tl4646547286%_
                                                           _%e4646647289%_
                                                           _%hd4646747293%_
                                                           _%tl4646847296%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                              (if (gx#stx-null? _%tl4647447316%_)
                                  (if (gx#stx-pair/null? _%tl4646547286%_)
                                      (let ((_%__splice7935179352%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4646547286%_
                                              '0)))
                                        (let ((_%tl4651447169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7935179352%_
                                                  '1)))
                                              (_%target4651247166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7935179352%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4651447169%_)
                                              (_%__match7951779518%_
                                               _%e4646047269%_
                                               _%hd4646147273%_
                                               _%tl4646247276%_
                                               _%e4646347279%_
                                               _%hd4646447283%_
                                               _%tl4646547286%_
                                               _%e4646647289%_
                                               _%hd4646747293%_
                                               _%tl4646847296%_
                                               _%e4646947299%_
                                               _%hd4647047303%_
                                               _%tl4647147306%_
                                               _%e4647247309%_
                                               _%hd4647347313%_
                                               _%tl4647447316%_
                                               _%__splice7935179352%_
                                               _%target4651247166%_
                                               _%tl4651447169%_)
                                              (if (gx#stx-pair?
                                                   _%hd4646747293%_)
                                                  (let ((_%e4659646750%_
                                                         (gx#syntax-e
                                                          _%hd4646747293%_)))
                                                    (let ((_%tl4659846757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659646750%_)))
                                                          (_%hd4659746754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659646750%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642046629%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))))
                                      (if (gx#stx-pair? _%hd4646747293%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4646747293%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                  (if (gx#identifier? _%hd4647047303%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85022_|
                                           _%hd4647047303%_)
                                          (if (gx#stx-pair? _%tl4647447316%_)
                                              (let ((_%e4656846882%_
                                                     (gx#syntax-e
                                                      _%tl4647447316%_)))
                                                (let ((_%tl4657046889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4656846882%_)))
                                                      (_%hd4656946886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4656846882%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4657046889%_)
                                                      (let ((_%e4657146892%_
                                                             (gx#syntax-e
                                                              _%tl4657046889%_)))
                                                        (let ((_%tl4657346899%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657146892%_)))
                      (_%hd4657246896%_
                       (let () (declare (not safe)) (##car _%e4657146892%_))))
                  (if (gx#stx-null? _%tl4657346899%_)
                      (if (gx#stx-pair/null? _%tl4646547286%_)
                          (let ((_%__splice7935979360%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4646547286%_
                                  '0)))
                            (let ((_%tl4657646905%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7935979360%_ '1)))
                                  (_%target4657446902%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7935979360%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657646905%_)
                                  (_%__match7961779618%_
                                   _%e4646047269%_
                                   _%hd4646147273%_
                                   _%tl4646247276%_
                                   _%e4646347279%_
                                   _%hd4646447283%_
                                   _%tl4646547286%_
                                   _%e4646647289%_
                                   _%hd4646747293%_
                                   _%tl4646847296%_
                                   _%e4646947299%_
                                   _%hd4647047303%_
                                   _%tl4647147306%_
                                   _%e4647247309%_
                                   _%hd4647347313%_
                                   _%tl4647447316%_
                                   _%e4656846882%_
                                   _%hd4656946886%_
                                   _%tl4657046889%_
                                   _%e4657146892%_
                                   _%hd4657246896%_
                                   _%tl4657346899%_
                                   _%__splice7935979360%_
                                   _%target4657446902%_
                                   _%tl4657646905%_)
                                  (if (gx#stx-pair? _%hd4646747293%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4646747293%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))
                          (if (gx#stx-pair? _%hd4646747293%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4646747293%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                      (if (gx#stx-pair? _%hd4646747293%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4646747293%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (if (gx#stx-pair/null? _%tl4646547286%_)
                                  (let ((_%__splice7936379364%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4646547286%_
                                          '0)))
                                    (let ((_%tl4660146763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '1)))
                                          (_%target4659946760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660146763%_)
                                          (_%__match7964979650%_
                                           _%e4646047269%_
                                           _%hd4646147273%_
                                           _%tl4646247276%_
                                           _%e4646347279%_
                                           _%hd4646447283%_
                                           _%tl4646547286%_
                                           _%e4646647289%_
                                           _%hd4646747293%_
                                           _%tl4646847296%_
                                           _%e4659646750%_
                                           _%hd4659746754%_
                                           _%tl4659846757%_
                                           _%__splice7936379364%_
                                           _%target4659946760%_
                                           _%tl4660146763%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_))))))
              (if (gx#stx-pair? _%hd4646747293%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4646747293%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4646547286%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4646547286%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4646047269%_
                                   _%hd4646147273%_
                                   _%tl4646247276%_
                                   _%e4646347279%_
                                   _%hd4646447283%_
                                   _%tl4646547286%_
                                   _%e4646647289%_
                                   _%hd4646747293%_
                                   _%tl4646847296%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4646747293%_)
                                                  (let ((_%e4659646750%_
                                                         (gx#syntax-e
                                                          _%hd4646747293%_)))
                                                    (let ((_%tl4659846757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659646750%_)))
                                                          (_%hd4659746754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659646750%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4646547286%_)
                                                          (let ((_%__splice7936379364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4646547286%_ '0)))
                    (let ((_%tl4660146763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '1)))
                          (_%target4659946760%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '0))))
                      (if (gx#stx-null? _%tl4660146763%_)
                          (_%__match7964979650%_
                           _%e4646047269%_
                           _%hd4646147273%_
                           _%tl4646247276%_
                           _%e4646347279%_
                           _%hd4646447283%_
                           _%tl4646547286%_
                           _%e4646647289%_
                           _%hd4646747293%_
                           _%tl4646847296%_
                           _%e4659646750%_
                           _%hd4659746754%_
                           _%tl4659846757%_
                           _%__splice7936379364%_
                           _%target4659946760%_
                           _%tl4660146763%_)
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))
                                          (if (gx#stx-pair? _%hd4646747293%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4646747293%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646547286%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4646547286%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4646047269%_
                       _%hd4646147273%_
                       _%tl4646247276%_
                       _%e4646347279%_
                       _%hd4646447283%_
                       _%tl4646547286%_
                       _%e4646647289%_
                       _%hd4646747293%_
                       _%tl4646847296%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                      (if (gx#stx-pair? _%hd4646747293%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4646747293%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646547286%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4646547286%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4646047269%_
                                                           _%hd4646147273%_
                                                           _%tl4646247276%_
                                                           _%e4646347279%_
                                                           _%hd4646447283%_
                                                           _%tl4646547286%_
                                                           _%e4646647289%_
                                                           _%hd4646747293%_
                                                           _%tl4646847296%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))))
                          (if (gx#stx-null? _%tl4647447316%_)
                              (if (gx#stx-pair/null? _%tl4646547286%_)
                                  (let ((_%__splice7935179352%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4646547286%_
                                          '0)))
                                    (let ((_%tl4651447169%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7935179352%_
                                              '1)))
                                          (_%target4651247166%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7935179352%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651447169%_)
                                          (_%__match7951779518%_
                                           _%e4646047269%_
                                           _%hd4646147273%_
                                           _%tl4646247276%_
                                           _%e4646347279%_
                                           _%hd4646447283%_
                                           _%tl4646547286%_
                                           _%e4646647289%_
                                           _%hd4646747293%_
                                           _%tl4646847296%_
                                           _%e4646947299%_
                                           _%hd4647047303%_
                                           _%tl4647147306%_
                                           _%e4647247309%_
                                           _%hd4647347313%_
                                           _%tl4647447316%_
                                           _%__splice7935179352%_
                                           _%target4651247166%_
                                           _%tl4651447169%_)
                                          (if (gx#stx-pair? _%hd4646747293%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4646747293%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))))
                                  (if (gx#stx-pair? _%hd4646747293%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4646747293%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                              (if (gx#identifier? _%hd4647047303%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85022_|
                                       _%hd4647047303%_)
                                      (if (gx#stx-pair? _%tl4647447316%_)
                                          (let ((_%e4656846882%_
                                                 (gx#syntax-e
                                                  _%tl4647447316%_)))
                                            (let ((_%tl4657046889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4656846882%_)))
                                                  (_%hd4656946886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4656846882%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4657046889%_)
                                                  (let ((_%e4657146892%_
                                                         (gx#syntax-e
                                                          _%tl4657046889%_)))
                                                    (let ((_%tl4657346899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657146892%_)))
                                                          (_%hd4657246896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657146892%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4657346899%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646547286%_)
                                                              (let ((_%__splice7935979360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4646547286%_
                              '0)))
                        (let ((_%tl4657646905%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7935979360%_ '1)))
                              (_%target4657446902%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7935979360%_ '0))))
                          (if (gx#stx-null? _%tl4657646905%_)
                              (_%__match7961779618%_
                               _%e4646047269%_
                               _%hd4646147273%_
                               _%tl4646247276%_
                               _%e4646347279%_
                               _%hd4646447283%_
                               _%tl4646547286%_
                               _%e4646647289%_
                               _%hd4646747293%_
                               _%tl4646847296%_
                               _%e4646947299%_
                               _%hd4647047303%_
                               _%tl4647147306%_
                               _%e4647247309%_
                               _%hd4647347313%_
                               _%tl4647447316%_
                               _%e4656846882%_
                               _%hd4656946886%_
                               _%tl4657046889%_
                               _%e4657146892%_
                               _%hd4657246896%_
                               _%tl4657346899%_
                               _%__splice7935979360%_
                               _%target4657446902%_
                               _%tl4657646905%_)
                              (if (gx#stx-pair? _%hd4646747293%_)
                                  (let ((_%e4659646750%_
                                         (gx#syntax-e _%hd4646747293%_)))
                                    (let ((_%tl4659846757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659646750%_)))
                                          (_%hd4659746754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659646750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))))
                      (if (gx#stx-pair? _%hd4646747293%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4646747293%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                  (if (gx#stx-pair? _%hd4646747293%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4646747293%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (if (gx#stx-pair/null? _%tl4646547286%_)
                              (let ((_%__splice7936379364%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4646547286%_
                                      '0)))
                                (let ((_%tl4660146763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '1)))
                                      (_%target4659946760%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660146763%_)
                                      (_%__match7964979650%_
                                       _%e4646047269%_
                                       _%hd4646147273%_
                                       _%tl4646247276%_
                                       _%e4646347279%_
                                       _%hd4646447283%_
                                       _%tl4646547286%_
                                       _%e4646647289%_
                                       _%hd4646747293%_
                                       _%tl4646847296%_
                                       _%e4659646750%_
                                       _%hd4659746754%_
                                       _%tl4659846757%_
                                       _%__splice7936379364%_
                                       _%target4659946760%_
                                       _%tl4660146763%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4646747293%_)
                                                      (let ((_%e4659646750%_
                                                             (gx#syntax-e
                                                              _%hd4646747293%_)))
                                                        (let ((_%tl4659846757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659646750%_)))
                      (_%hd4659746754%_
                       (let () (declare (not safe)) (##car _%e4659646750%_))))
                  (if (gx#stx-pair/null? _%tl4646547286%_)
                      (let ((_%__splice7936379364%_
                             (gx#syntax-split-splice->vector
                              _%tl4646547286%_
                              '0)))
                        (let ((_%tl4660146763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '1)))
                              (_%target4659946760%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '0))))
                          (if (gx#stx-null? _%tl4660146763%_)
                              (_%__match7964979650%_
                               _%e4646047269%_
                               _%hd4646147273%_
                               _%tl4646247276%_
                               _%e4646347279%_
                               _%hd4646447283%_
                               _%tl4646547286%_
                               _%e4646647289%_
                               _%hd4646747293%_
                               _%tl4646847296%_
                               _%e4659646750%_
                               _%hd4659746754%_
                               _%tl4659846757%_
                               _%__splice7936379364%_
                               _%target4659946760%_
                               _%tl4660146763%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646747293%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4646747293%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646547286%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4646547286%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4646047269%_
                       _%hd4646147273%_
                       _%tl4646247276%_
                       _%e4646347279%_
                       _%hd4646447283%_
                       _%tl4646547286%_
                       _%e4646647289%_
                       _%hd4646747293%_
                       _%tl4646847296%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                      (if (gx#stx-pair? _%hd4646747293%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4646747293%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646547286%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4646547286%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4646047269%_
                                                           _%hd4646147273%_
                                                           _%tl4646247276%_
                                                           _%e4646347279%_
                                                           _%hd4646447283%_
                                                           _%tl4646547286%_
                                                           _%e4646647289%_
                                                           _%hd4646747293%_
                                                           _%tl4646847296%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                  (if (gx#stx-pair? _%hd4646747293%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4646747293%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4646547286%_)
                                              (let ((_%__splice7936379364%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4646547286%_
                                                      '0)))
                                                (let ((_%tl4660146763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '1)))
                                                      (_%target4659946760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660146763%_)
                                                      (_%__match7964979650%_
                                                       _%e4646047269%_
                                                       _%hd4646147273%_
                                                       _%tl4646247276%_
                                                       _%e4646347279%_
                                                       _%hd4646447283%_
                                                       _%tl4646547286%_
                                                       _%e4646647289%_
                                                       _%hd4646747293%_
                                                       _%tl4646847296%_
                                                       _%e4659646750%_
                                                       _%hd4659746754%_
                                                       _%tl4659846757%_
                                                       _%__splice7936379364%_
                                                       _%target4659946760%_
                                                       _%tl4660146763%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642046629%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))))
                   (_%__match7941579416%_
                    (lambda (_%e4642747445%_
                             _%hd4642847449%_
                             _%tl4642947452%_
                             _%e4643047455%_
                             _%hd4643147459%_
                             _%tl4643247462%_
                             _%e4643347465%_
                             _%hd4643447469%_
                             _%tl4643547472%_
                             _%e4643647475%_
                             _%hd4643747479%_
                             _%tl4643847482%_
                             _%e4643947485%_
                             _%hd4644047489%_
                             _%tl4644147492%_
                             _%e4644247495%_
                             _%hd4644347499%_
                             _%tl4644447502%_
                             _%__splice7934379344%_
                             _%target4644547505%_
                             _%tl4644747508%_)
                      (letrec ((_%loop4644847511%_
                                (lambda (_%hd4644647515%_ _%body4645247518%_)
                                  (if (gx#stx-pair? _%hd4644647515%_)
                                      (let ((_%e4644947521%_
                                             (gx#syntax-e _%hd4644647515%_)))
                                        (let ((_%lp-tl4645147528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4644947521%_)))
                                              (_%lp-hd4645047525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4644947521%_))))
                                          (_%loop4644847511%_
                                           _%lp-tl4645147528%_
                                           (cons _%lp-hd4645047525%_
                                                 _%body4645247518%_))))
                                      (let ((_%body4645347531%_
                                             (reverse _%body4645247518%_)))
                                        (let ((_%L47535%_ _%body4645347531%_)
                                              (_%L47537%_ _%hd4644347499%_)
                                              (_%L47538%_ _%hd4644047489%_)
                                              (_%L47539%_ _%hd4643747479%_)
                                              (_%L47540%_ _%hd4643447469%_))
                                          (if (and (gx#identifier? _%L47540%_)
                                                   (gx#identifier? _%L47538%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47538%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47538%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47538%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47538%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47538%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7934179342%_
                                               _%L47535%_
                                               _%L47537%_
                                               _%L47538%_
                                               _%L47539%_
                                               _%L47540%_)
                                              (_%__match7944579446%_
                                               _%e4642747445%_
                                               _%hd4642847449%_
                                               _%tl4642947452%_
                                               _%e4643047455%_
                                               _%hd4643147459%_
                                               _%tl4643247462%_
                                               _%e4643347465%_
                                               _%hd4643447469%_
                                               _%tl4643547472%_
                                               _%e4643647475%_
                                               _%hd4643747479%_
                                               _%tl4643847482%_
                                               _%e4643947485%_
                                               _%hd4644047489%_
                                               _%tl4644147492%_))))))))
                        (_%loop4644847511%_ _%target4644547505%_ '())))))
              (if (gx#stx-pair? _%__stx7933879339%_)
                  (let ((_%e4642747445%_ (gx#syntax-e _%__stx7933879339%_)))
                    (let ((_%tl4642947452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4642747445%_)))
                          (_%hd4642847449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4642747445%_))))
                      (if (gx#stx-pair? _%tl4642947452%_)
                          (let ((_%e4643047455%_
                                 (gx#syntax-e _%tl4642947452%_)))
                            (let ((_%tl4643247462%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4643047455%_)))
                                  (_%hd4643147459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4643047455%_))))
                              (if (gx#stx-pair? _%hd4643147459%_)
                                  (let ((_%e4643347465%_
                                         (gx#syntax-e _%hd4643147459%_)))
                                    (let ((_%tl4643547472%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4643347465%_)))
                                          (_%hd4643447469%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4643347465%_))))
                                      (if (gx#stx-pair? _%tl4643547472%_)
                                          (let ((_%e4643647475%_
                                                 (gx#syntax-e
                                                  _%tl4643547472%_)))
                                            (let ((_%tl4643847482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4643647475%_)))
                                                  (_%hd4643747479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4643647475%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4643847482%_)
                                                  (let ((_%e4643947485%_
                                                         (gx#syntax-e
                                                          _%tl4643847482%_)))
                                                    (let ((_%tl4644147492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4643947485%_)))
                                                          (_%hd4644047489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4643947485%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4644147492%_)
                                                          (let ((_%e4644247495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4644147492%_)))
                    (let ((_%tl4644447502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4644247495%_)))
                          (_%hd4644347499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4644247495%_))))
                      (if (gx#stx-null? _%tl4644447502%_)
                          (if (gx#stx-pair/null? _%tl4643247462%_)
                              (let ((_%__splice7934379344%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4643247462%_
                                      '0)))
                                (let ((_%tl4644747508%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934379344%_
                                          '1)))
                                      (_%target4644547505%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7934379344%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4644747508%_)
                                      (_%__match7941579416%_
                                       _%e4642747445%_
                                       _%hd4642847449%_
                                       _%tl4642947452%_
                                       _%e4643047455%_
                                       _%hd4643147459%_
                                       _%tl4643247462%_
                                       _%e4643347465%_
                                       _%hd4643447469%_
                                       _%tl4643547472%_
                                       _%e4643647475%_
                                       _%hd4643747479%_
                                       _%tl4643847482%_
                                       _%e4643947485%_
                                       _%hd4644047489%_
                                       _%tl4644147492%_
                                       _%e4644247495%_
                                       _%hd4644347499%_
                                       _%tl4644447502%_
                                       _%__splice7934379344%_
                                       _%target4644547505%_
                                       _%tl4644747508%_)
                                      (if (gx#stx-pair? _%hd4643447469%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4643447469%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))))
                              (if (gx#stx-pair? _%hd4643447469%_)
                                  (let ((_%e4659646750%_
                                         (gx#syntax-e _%hd4643447469%_)))
                                    (let ((_%tl4659846757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659646750%_)))
                                          (_%hd4659746754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659646750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                          (if (gx#identifier? _%hd4644047489%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g85023_|
                                   _%hd4644047489%_)
                                  (if (gx#stx-pair? _%tl4644447502%_)
                                      (let ((_%e4647847329%_
                                             (gx#syntax-e _%tl4644447502%_)))
                                        (let ((_%tl4648047336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4647847329%_)))
                                              (_%hd4647947333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4647847329%_))))
                                          (if (gx#stx-pair? _%tl4648047336%_)
                                              (let ((_%e4648147339%_
                                                     (gx#syntax-e
                                                      _%tl4648047336%_)))
                                                (let ((_%tl4648347346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648147339%_)))
                                                      (_%hd4648247343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648147339%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4648347346%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643247462%_)
                                                          (let ((_%__splice7934779348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4643247462%_ '0)))
                    (let ((_%tl4648647352%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934779348%_ '1)))
                          (_%target4648447349%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7934779348%_ '0))))
                      (if (gx#stx-null? _%tl4648647352%_)
                          (_%__match7947779478%_
                           _%e4642747445%_
                           _%hd4642847449%_
                           _%tl4642947452%_
                           _%e4643047455%_
                           _%hd4643147459%_
                           _%tl4643247462%_
                           _%e4643347465%_
                           _%hd4643447469%_
                           _%tl4643547472%_
                           _%e4643647475%_
                           _%hd4643747479%_
                           _%tl4643847482%_
                           _%e4643947485%_
                           _%hd4644047489%_
                           _%tl4644147492%_
                           _%e4644247495%_
                           _%hd4644347499%_
                           _%tl4644447502%_
                           _%e4647847329%_
                           _%hd4647947333%_
                           _%tl4648047336%_
                           _%e4648147339%_
                           _%hd4648247343%_
                           _%tl4648347346%_
                           _%__splice7934779348%_
                           _%target4648447349%_
                           _%tl4648647352%_)
                          (if (gx#stx-pair? _%hd4643447469%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4643447469%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_))))))
                  (if (gx#stx-pair? _%hd4643447469%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
              (if (gx#stx-pair? _%hd4643447469%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4643247462%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4643247462%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4642747445%_
                                   _%hd4642847449%_
                                   _%tl4642947452%_
                                   _%e4643047455%_
                                   _%hd4643147459%_
                                   _%tl4643247462%_
                                   _%e4643347465%_
                                   _%hd4643447469%_
                                   _%tl4643547472%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4643747479%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g85022_|
                                                       _%hd4643747479%_)
                                                      (if (gx#stx-null?
                                                           _%tl4648047336%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4643247462%_)
                                                              (let ((_%__splice7935979360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4643247462%_
                              '0)))
                        (let ((_%tl4657646905%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7935979360%_ '1)))
                              (_%target4657446902%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7935979360%_ '0))))
                          (if (gx#stx-null? _%tl4657646905%_)
                              (_%__match7961779618%_
                               _%e4642747445%_
                               _%hd4642847449%_
                               _%tl4642947452%_
                               _%e4643047455%_
                               _%hd4643147459%_
                               _%tl4643247462%_
                               _%e4643347465%_
                               _%hd4643447469%_
                               _%tl4643547472%_
                               _%e4643647475%_
                               _%hd4643747479%_
                               _%tl4643847482%_
                               _%e4643947485%_
                               _%hd4644047489%_
                               _%tl4644147492%_
                               _%e4644247495%_
                               _%hd4644347499%_
                               _%tl4644447502%_
                               _%e4647847329%_
                               _%hd4647947333%_
                               _%tl4648047336%_
                               _%__splice7935979360%_
                               _%target4657446902%_
                               _%tl4657646905%_)
                              (if (gx#stx-pair? _%hd4643447469%_)
                                  (let ((_%e4659646750%_
                                         (gx#syntax-e _%hd4643447469%_)))
                                    (let ((_%tl4659846757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659646750%_)))
                                          (_%hd4659746754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659646750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))))
                      (if (gx#stx-pair? _%hd4643447469%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4643447469%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                  (if (gx#stx-pair? _%hd4643447469%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (if (gx#stx-pair/null? _%tl4643247462%_)
                              (let ((_%__splice7936379364%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4643247462%_
                                      '0)))
                                (let ((_%tl4660146763%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '1)))
                                      (_%target4659946760%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7936379364%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660146763%_)
                                      (_%__match7964979650%_
                                       _%e4642747445%_
                                       _%hd4642847449%_
                                       _%tl4642947452%_
                                       _%e4643047455%_
                                       _%hd4643147459%_
                                       _%tl4643247462%_
                                       _%e4643347465%_
                                       _%hd4643447469%_
                                       _%tl4643547472%_
                                       _%e4659646750%_
                                       _%hd4659746754%_
                                       _%tl4659846757%_
                                       _%__splice7936379364%_
                                       _%target4659946760%_
                                       _%tl4660146763%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
              (if (gx#stx-pair? _%hd4643447469%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4643247462%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4643247462%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4642747445%_
                                   _%hd4642847449%_
                                   _%tl4642947452%_
                                   _%e4643047455%_
                                   _%hd4643147459%_
                                   _%tl4643247462%_
                                   _%e4643347465%_
                                   _%hd4643447469%_
                                   _%tl4643547472%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643447469%_)
                                                      (let ((_%e4659646750%_
                                                             (gx#syntax-e
                                                              _%hd4643447469%_)))
                                                        (let ((_%tl4659846757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659646750%_)))
                      (_%hd4659746754%_
                       (let () (declare (not safe)) (##car _%e4659646750%_))))
                  (if (gx#stx-pair/null? _%tl4643247462%_)
                      (let ((_%__splice7936379364%_
                             (gx#syntax-split-splice->vector
                              _%tl4643247462%_
                              '0)))
                        (let ((_%tl4660146763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '1)))
                              (_%target4659946760%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '0))))
                          (if (gx#stx-null? _%tl4660146763%_)
                              (_%__match7964979650%_
                               _%e4642747445%_
                               _%hd4642847449%_
                               _%tl4642947452%_
                               _%e4643047455%_
                               _%hd4643147459%_
                               _%tl4643247462%_
                               _%e4643347465%_
                               _%hd4643447469%_
                               _%tl4643547472%_
                               _%e4659646750%_
                               _%hd4659746754%_
                               _%tl4659846757%_
                               _%__splice7936379364%_
                               _%target4659946760%_
                               _%tl4660146763%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4643447469%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4643447469%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643247462%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4643247462%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4642747445%_
                                                           _%hd4642847449%_
                                                           _%tl4642947452%_
                                                           _%e4643047455%_
                                                           _%hd4643147459%_
                                                           _%tl4643247462%_
                                                           _%e4643347465%_
                                                           _%hd4643447469%_
                                                           _%tl4643547472%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                  (if (gx#identifier? _%hd4643747479%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85022_|
                                           _%hd4643747479%_)
                                          (if (gx#stx-pair? _%tl4644447502%_)
                                              (let ((_%e4657146892%_
                                                     (gx#syntax-e
                                                      _%tl4644447502%_)))
                                                (let ((_%tl4657346899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657146892%_)))
                                                      (_%hd4657246896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657146892%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4657346899%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643247462%_)
                                                          (let ((_%__splice7935979360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4643247462%_ '0)))
                    (let ((_%tl4657646905%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7935979360%_ '1)))
                          (_%target4657446902%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7935979360%_ '0))))
                      (if (gx#stx-null? _%tl4657646905%_)
                          (_%__match7961779618%_
                           _%e4642747445%_
                           _%hd4642847449%_
                           _%tl4642947452%_
                           _%e4643047455%_
                           _%hd4643147459%_
                           _%tl4643247462%_
                           _%e4643347465%_
                           _%hd4643447469%_
                           _%tl4643547472%_
                           _%e4643647475%_
                           _%hd4643747479%_
                           _%tl4643847482%_
                           _%e4643947485%_
                           _%hd4644047489%_
                           _%tl4644147492%_
                           _%e4644247495%_
                           _%hd4644347499%_
                           _%tl4644447502%_
                           _%e4657146892%_
                           _%hd4657246896%_
                           _%tl4657346899%_
                           _%__splice7935979360%_
                           _%target4657446902%_
                           _%tl4657646905%_)
                          (if (gx#stx-pair? _%hd4643447469%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4643447469%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_))))))
                  (if (gx#stx-pair? _%hd4643447469%_)
                      (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                        (let ((_%tl4659846757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659646750%_)))
                              (_%hd4659746754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659646750%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
              (if (gx#stx-pair? _%hd4643447469%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (if (gx#stx-pair/null? _%tl4643247462%_)
                          (let ((_%__splice7936379364%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4643247462%_
                                  '0)))
                            (let ((_%tl4660146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7936379364%_ '1)))
                                  (_%target4659946760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7936379364%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660146763%_)
                                  (_%__match7964979650%_
                                   _%e4642747445%_
                                   _%hd4642847449%_
                                   _%tl4642947452%_
                                   _%e4643047455%_
                                   _%hd4643147459%_
                                   _%tl4643247462%_
                                   _%e4643347465%_
                                   _%hd4643447469%_
                                   _%tl4643547472%_
                                   _%e4659646750%_
                                   _%hd4659746754%_
                                   _%tl4659846757%_
                                   _%__splice7936379364%_
                                   _%target4659946760%_
                                   _%tl4660146763%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4643447469%_)
                                                  (let ((_%e4659646750%_
                                                         (gx#syntax-e
                                                          _%hd4643447469%_)))
                                                    (let ((_%tl4659846757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659646750%_)))
                                                          (_%hd4659746754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659646750%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643247462%_)
                                                          (let ((_%__splice7936379364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4643247462%_ '0)))
                    (let ((_%tl4660146763%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '1)))
                          (_%target4659946760%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7936379364%_ '0))))
                      (if (gx#stx-null? _%tl4660146763%_)
                          (_%__match7964979650%_
                           _%e4642747445%_
                           _%hd4642847449%_
                           _%tl4642947452%_
                           _%e4643047455%_
                           _%hd4643147459%_
                           _%tl4643247462%_
                           _%e4643347465%_
                           _%hd4643447469%_
                           _%tl4643547472%_
                           _%e4659646750%_
                           _%hd4659746754%_
                           _%tl4659846757%_
                           _%__splice7936379364%_
                           _%target4659946760%_
                           _%tl4660146763%_)
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_))))
                                          (if (gx#stx-pair? _%hd4643447469%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4643447469%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643247462%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4643247462%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4642747445%_
                       _%hd4642847449%_
                       _%tl4642947452%_
                       _%e4643047455%_
                       _%hd4643147459%_
                       _%tl4643247462%_
                       _%e4643347465%_
                       _%hd4643447469%_
                       _%tl4643547472%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                      (if (gx#stx-pair? _%hd4643447469%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4643447469%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643247462%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4643247462%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4642747445%_
                                                           _%hd4642847449%_
                                                           _%tl4642947452%_
                                                           _%e4643047455%_
                                                           _%hd4643147459%_
                                                           _%tl4643247462%_
                                                           _%e4643347465%_
                                                           _%hd4643447469%_
                                                           _%tl4643547472%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                              (if (gx#identifier? _%hd4643747479%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85022_|
                                       _%hd4643747479%_)
                                      (if (gx#stx-pair? _%tl4644447502%_)
                                          (let ((_%e4657146892%_
                                                 (gx#syntax-e
                                                  _%tl4644447502%_)))
                                            (let ((_%tl4657346899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657146892%_)))
                                                  (_%hd4657246896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657146892%_))))
                                              (if (gx#stx-null?
                                                   _%tl4657346899%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643247462%_)
                                                      (let ((_%__splice7935979360%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4643247462%_
                                                              '0)))
                                                        (let ((_%tl4657646905%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7935979360%_ '1)))
                      (_%target4657446902%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7935979360%_ '0))))
                  (if (gx#stx-null? _%tl4657646905%_)
                      (_%__match7961779618%_
                       _%e4642747445%_
                       _%hd4642847449%_
                       _%tl4642947452%_
                       _%e4643047455%_
                       _%hd4643147459%_
                       _%tl4643247462%_
                       _%e4643347465%_
                       _%hd4643447469%_
                       _%tl4643547472%_
                       _%e4643647475%_
                       _%hd4643747479%_
                       _%tl4643847482%_
                       _%e4643947485%_
                       _%hd4644047489%_
                       _%tl4644147492%_
                       _%e4644247495%_
                       _%hd4644347499%_
                       _%tl4644447502%_
                       _%e4657146892%_
                       _%hd4657246896%_
                       _%tl4657346899%_
                       _%__splice7935979360%_
                       _%target4657446902%_
                       _%tl4657646905%_)
                      (if (gx#stx-pair? _%hd4643447469%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4643447469%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                          (let () (declare (not safe)) (_%g4642046629%_))))))
              (if (gx#stx-pair? _%hd4643447469%_)
                  (let ((_%e4659646750%_ (gx#syntax-e _%hd4643447469%_)))
                    (let ((_%tl4659846757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659646750%_)))
                          (_%hd4659746754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659646750%_))))
                      (let () (declare (not safe)) (_%g4642046629%_))))
                  (let () (declare (not safe)) (_%g4642046629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643447469%_)
                                                      (let ((_%e4659646750%_
                                                             (gx#syntax-e
                                                              _%hd4643447469%_)))
                                                        (let ((_%tl4659846757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659646750%_)))
                      (_%hd4659746754%_
                       (let () (declare (not safe)) (##car _%e4659646750%_))))
                  (if (gx#stx-pair/null? _%tl4643247462%_)
                      (let ((_%__splice7936379364%_
                             (gx#syntax-split-splice->vector
                              _%tl4643247462%_
                              '0)))
                        (let ((_%tl4660146763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '1)))
                              (_%target4659946760%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '0))))
                          (if (gx#stx-null? _%tl4660146763%_)
                              (_%__match7964979650%_
                               _%e4642747445%_
                               _%hd4642847449%_
                               _%tl4642947452%_
                               _%e4643047455%_
                               _%hd4643147459%_
                               _%tl4643247462%_
                               _%e4643347465%_
                               _%hd4643447469%_
                               _%tl4643547472%_
                               _%e4659646750%_
                               _%hd4659746754%_
                               _%tl4659846757%_
                               _%__splice7936379364%_
                               _%target4659946760%_
                               _%tl4660146763%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643447469%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4643447469%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643247462%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4643247462%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4642747445%_
                       _%hd4642847449%_
                       _%tl4642947452%_
                       _%e4643047455%_
                       _%hd4643147459%_
                       _%tl4643247462%_
                       _%e4643347465%_
                       _%hd4643447469%_
                       _%tl4643547472%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))
                                      (if (gx#stx-pair? _%hd4643447469%_)
                                          (let ((_%e4659646750%_
                                                 (gx#syntax-e
                                                  _%hd4643447469%_)))
                                            (let ((_%tl4659846757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659646750%_)))
                                                  (_%hd4659746754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659646750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643247462%_)
                                                  (let ((_%__splice7936379364%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4643247462%_
                                                          '0)))
                                                    (let ((_%tl4660146763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '1)))
                                                          (_%target4659946760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7936379364%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660146763%_)
                                                          (_%__match7964979650%_
                                                           _%e4642747445%_
                                                           _%hd4642847449%_
                                                           _%tl4642947452%_
                                                           _%e4643047455%_
                                                           _%hd4643147459%_
                                                           _%tl4643247462%_
                                                           _%e4643347465%_
                                                           _%hd4643447469%_
                                                           _%tl4643547472%_
                                                           _%e4659646750%_
                                                           _%hd4659746754%_
                                                           _%tl4659846757%_
                                                           _%__splice7936379364%_
                                                           _%target4659946760%_
                                                           _%tl4660146763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4642046629%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                  (if (gx#stx-pair? _%hd4643447469%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4643447469%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4643247462%_)
                                              (let ((_%__splice7936379364%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4643247462%_
                                                      '0)))
                                                (let ((_%tl4660146763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '1)))
                                                      (_%target4659946760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7936379364%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660146763%_)
                                                      (_%__match7964979650%_
                                                       _%e4642747445%_
                                                       _%hd4642847449%_
                                                       _%tl4642947452%_
                                                       _%e4643047455%_
                                                       _%hd4643147459%_
                                                       _%tl4643247462%_
                                                       _%e4643347465%_
                                                       _%hd4643447469%_
                                                       _%tl4643547472%_
                                                       _%e4659646750%_
                                                       _%hd4659746754%_
                                                       _%tl4659846757%_
                                                       _%__splice7936379364%_
                                                       _%target4659946760%_
                                                       _%tl4660146763%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4642046629%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))))
                  (if (gx#stx-null? _%tl4644147492%_)
                      (if (gx#stx-pair/null? _%tl4643247462%_)
                          (let ((_%__splice7935179352%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4643247462%_
                                  '0)))
                            (let ((_%tl4651447169%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7935179352%_ '1)))
                                  (_%target4651247166%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7935179352%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651447169%_)
                                  (_%__match7951779518%_
                                   _%e4642747445%_
                                   _%hd4642847449%_
                                   _%tl4642947452%_
                                   _%e4643047455%_
                                   _%hd4643147459%_
                                   _%tl4643247462%_
                                   _%e4643347465%_
                                   _%hd4643447469%_
                                   _%tl4643547472%_
                                   _%e4643647475%_
                                   _%hd4643747479%_
                                   _%tl4643847482%_
                                   _%e4643947485%_
                                   _%hd4644047489%_
                                   _%tl4644147492%_
                                   _%__splice7935179352%_
                                   _%target4651247166%_
                                   _%tl4651447169%_)
                                  (if (gx#stx-pair? _%hd4643447469%_)
                                      (let ((_%e4659646750%_
                                             (gx#syntax-e _%hd4643447469%_)))
                                        (let ((_%tl4659846757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659646750%_)))
                                              (_%hd4659746754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659646750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))
                          (if (gx#stx-pair? _%hd4643447469%_)
                              (let ((_%e4659646750%_
                                     (gx#syntax-e _%hd4643447469%_)))
                                (let ((_%tl4659846757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659646750%_)))
                                      (_%hd4659746754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659646750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_))))
                              (let () (declare (not safe)) (_%g4642046629%_))))
                      (if (gx#stx-pair? _%hd4643447469%_)
                          (let ((_%e4659646750%_
                                 (gx#syntax-e _%hd4643447469%_)))
                            (let ((_%tl4659846757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659646750%_)))
                                  (_%hd4659746754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659646750%_))))
                              (if (gx#stx-pair/null? _%tl4643247462%_)
                                  (let ((_%__splice7936379364%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4643247462%_
                                          '0)))
                                    (let ((_%tl4660146763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '1)))
                                          (_%target4659946760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7936379364%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660146763%_)
                                          (_%__match7964979650%_
                                           _%e4642747445%_
                                           _%hd4642847449%_
                                           _%tl4642947452%_
                                           _%e4643047455%_
                                           _%hd4643147459%_
                                           _%tl4643247462%_
                                           _%e4643347465%_
                                           _%hd4643447469%_
                                           _%tl4643547472%_
                                           _%e4659646750%_
                                           _%hd4659746754%_
                                           _%tl4659846757%_
                                           _%__splice7936379364%_
                                           _%target4659946760%_
                                           _%tl4660146763%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4642046629%_)))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643447469%_)
                                                      (let ((_%e4659646750%_
                                                             (gx#syntax-e
                                                              _%hd4643447469%_)))
                                                        (let ((_%tl4659846757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659646750%_)))
                      (_%hd4659746754%_
                       (let () (declare (not safe)) (##car _%e4659646750%_))))
                  (if (gx#stx-pair/null? _%tl4643247462%_)
                      (let ((_%__splice7936379364%_
                             (gx#syntax-split-splice->vector
                              _%tl4643247462%_
                              '0)))
                        (let ((_%tl4660146763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '1)))
                              (_%target4659946760%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7936379364%_ '0))))
                          (if (gx#stx-null? _%tl4660146763%_)
                              (_%__match7964979650%_
                               _%e4642747445%_
                               _%hd4642847449%_
                               _%tl4642947452%_
                               _%e4643047455%_
                               _%hd4643147459%_
                               _%tl4643247462%_
                               _%e4643347465%_
                               _%hd4643447469%_
                               _%tl4643547472%_
                               _%e4659646750%_
                               _%hd4659746754%_
                               _%tl4659846757%_
                               _%__splice7936379364%_
                               _%target4659946760%_
                               _%tl4660146763%_)
                              (let ()
                                (declare (not safe))
                                (_%g4642046629%_)))))
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643447469%_)
                                              (let ((_%e4659646750%_
                                                     (gx#syntax-e
                                                      _%hd4643447469%_)))
                                                (let ((_%tl4659846757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659646750%_)))
                                                      (_%hd4659746754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659646750%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643247462%_)
                                                      (let ((_%__splice7936379364%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4643247462%_
                                                              '0)))
                                                        (let ((_%tl4660146763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '1)))
                      (_%target4659946760%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7936379364%_ '0))))
                  (if (gx#stx-null? _%tl4660146763%_)
                      (_%__match7964979650%_
                       _%e4642747445%_
                       _%hd4642847449%_
                       _%tl4642947452%_
                       _%e4643047455%_
                       _%hd4643147459%_
                       _%tl4643247462%_
                       _%e4643347465%_
                       _%hd4643447469%_
                       _%tl4643547472%_
                       _%e4659646750%_
                       _%hd4659746754%_
                       _%tl4659846757%_
                       _%__splice7936379364%_
                       _%target4659946760%_
                       _%tl4660146763%_)
                      (let () (declare (not safe)) (_%g4642046629%_)))))
              (let () (declare (not safe)) (_%g4642046629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046629%_))))))
                                  (if (gx#stx-null? _%hd4643147459%_)
                                      (if (gx#stx-pair/null? _%tl4643247462%_)
                                          (let ((_%__splice7936779368%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4643247462%_
                                                  '0)))
                                            (let ((_%tl4661746659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7936779368%_
                                                      '1)))
                                                  (_%target4661546656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7936779368%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4661746659%_)
                                                  (_%__match7967179672%_
                                                   _%e4642747445%_
                                                   _%hd4642847449%_
                                                   _%tl4642947452%_
                                                   _%e4643047455%_
                                                   _%hd4643147459%_
                                                   _%tl4643247462%_
                                                   _%__splice7936779368%_
                                                   _%target4661546656%_
                                                   _%tl4661746659%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4642046629%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4642046629%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046629%_))))))
                          (let () (declare (not safe)) (_%g4642046629%_)))))
                  (let () (declare (not safe)) (_%g4642046629%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47603%_)
        (let* ((_%g4760747641%_
                (lambda (_%g4760847637%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4760847637%_)))
               (_%g4760647764%_
                (lambda (_%g4760847645%_)
                  (if (gx#stx-pair? _%g4760847645%_)
                      (let ((_%e4761247648%_ (gx#syntax-e _%g4760847645%_)))
                        (let ((_%hd4761347652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4761247648%_)))
                              (_%tl4761447655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4761247648%_))))
                          (if (gx#stx-pair? _%tl4761447655%_)
                              (let ((_%e4761547658%_
                                     (gx#syntax-e _%tl4761447655%_)))
                                (let ((_%hd4761647662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4761547658%_)))
                                      (_%tl4761747665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4761547658%_))))
                                  (if (gx#stx-pair? _%hd4761647662%_)
                                      (let ((_%e4761847668%_
                                             (gx#syntax-e _%hd4761647662%_)))
                                        (let ((_%hd4761947672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4761847668%_)))
                                              (_%tl4762047675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4761847668%_))))
                                          (if (gx#stx-pair? _%tl4762047675%_)
                                              (let ((_%e4762147678%_
                                                     (gx#syntax-e
                                                      _%tl4762047675%_)))
                                                (let ((_%hd4762247682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4762147678%_)))
                                                      (_%tl4762347685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4762147678%_))))
                                                  (if (gx#identifier?
                                                       _%hd4762247682%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85024_|
                                                           _%hd4762247682%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4762347685%_)
                                                              (let ((_%e4762447688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4762347685%_)))
                        (let ((_%hd4762547692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4762447688%_)))
                              (_%tl4762647695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4762447688%_))))
                          (if (gx#stx-null? _%tl4762647695%_)
                              (if (gx#stx-pair/null? _%tl4761747665%_)
                                  (let ((_g85025_
                                         (gx#syntax-split-splice
                                          _%tl4761747665%_
                                          '0)))
                                    (begin
                                      (let ((_g85026_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85025_)
                                                   (##values-length _g85025_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85026_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85026_)))
                                      (let ((_%target4762747698%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85025_ 0)))
                                            (_%tl4762947701%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85025_ 1))))
                                        (if (gx#stx-null? _%tl4762947701%_)
                                            (letrec ((_%loop4763047704%_
                                                      (lambda (_%hd4762847708%_
                                                               _%body4763447711%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4762847708%_)
                                                            (let ((_%e4763147714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4762847708%_)))
                      (let ((_%lp-hd4763247718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4763147714%_)))
                            (_%lp-tl4763347721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4763147714%_))))
                        (_%loop4763047704%_
                         _%lp-tl4763347721%_
                         (cons _%lp-hd4763247718%_ _%body4763447711%_))))
                    (let ((_%body4763547724%_ (reverse _%body4763447711%_)))
                      ((lambda (_%L47728%_ _%L47730%_ _%L47731%_)
                         (if (gx#identifier? _%L47731%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47730%_
                                               (cons _%L47731%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4775547758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4775647761%_)
                            (cons _%g4775547758%_ _%g4775647761%_))
                          '()
                          _%L47728%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47730%_ (cons _%L47731%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4760747641%_ _%g4760847645%_)))
                       _%body4763547724%_
                       _%hd4762547692%_
                       _%hd4761947672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4763047704%_
                                               _%target4762747698%_
                                               '()))
                                            (_%g4760747641%_
                                             _%g4760847645%_)))))
                                  (_%g4760747641%_ _%g4760847645%_))
                              (_%g4760747641%_ _%g4760847645%_))))
                      (_%g4760747641%_ _%g4760847645%_))
                  (_%g4760747641%_ _%g4760847645%_))
              (_%g4760747641%_ _%g4760847645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4760747641%_
                                               _%g4760847645%_))))
                                      (_%g4760747641%_ _%g4760847645%_))))
                              (_%g4760747641%_ _%g4760847645%_))))
                      (_%g4760747641%_ _%g4760847645%_)))))
          (_%g4760647764%_ _%$stx47603%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48331%_ _%slot48333%_)
        (let ((_%$e48335%_
               (let ((__obj84845 _%klass48331%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84845
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84845 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84845
                      'slot-types)))))
          (if _%$e48335%_
              ((lambda (_%slot-types48339%_)
                 (agetq _%slot48333%_ _%slot-types48339%_))
               _%$e48335%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48312%_ _%slot48314%_)
        (let ((_%$e48316%_
               (let ((__obj84846 _%klass48312%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84846
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84846 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84846
                      'slot-defaults)))))
          (if _%$e48316%_
              ((lambda (_%slot-defaults48320%_)
                 (let ((_%$e48323%_
                        (agetq _%slot48314%_ _%slot-defaults48320%_)))
                   (if _%$e48323%_
                       (gx#syntax-local-introduce _%$e48323%_)
                       '#f)))
               _%$e48316%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48293%_ _%slot48295%_)
        (let ((_%$e48297%_
               (let ((__obj84847 _%klass48293%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84847
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84847 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj84847
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
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48061%_ _%slot48063%_)
        (let ((_%contract4806448066%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48061%_
                _%slot48063%_)))
          (if _%contract4806448066%_
              (let* ((_%contract48070%_ _%contract4806448066%_)
                     (_%__stx7967479675%_ _%contract48070%_)
                     (_%g4807548112%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7967479675%_))))
                (let ((_%__kont7967779678%_
                       (lambda (_%L48262%_ _%L48264%_)
                         (not (gx#free-identifier=?
                               _%L48264%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7967979680%_
                       (lambda (_%L48202%_ _%L48204%_ _%L48205%_)
                         (not (gx#free-identifier=?
                               _%L48204%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7968179682%_ (lambda (_%L48139%_) '#f)))
                  (let* ((_%__match7972779728%_
                          (lambda (_%e4808848162%_
                                   _%hd4808948166%_
                                   _%tl4809048169%_
                                   _%e4809148172%_
                                   _%hd4809248176%_
                                   _%tl4809348179%_
                                   _%e4809448182%_
                                   _%hd4809548186%_
                                   _%tl4809648189%_
                                   _%e4809748192%_
                                   _%hd4809848196%_
                                   _%tl4809948199%_)
                            (let ((_%L48202%_ _%hd4809848196%_)
                                  (_%L48204%_ _%hd4809548186%_)
                                  (_%L48205%_ _%hd4809248176%_))
                              (if (and (gx#identifier? _%L48204%_)
                                       (or (gx#free-identifier=?
                                            _%L48204%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48204%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48204%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48204%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7967979680%_
                                   _%L48202%_
                                   _%L48204%_
                                   _%L48205%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4807548112%_))))))
                         (_%__match7969779698%_
                          (lambda (_%e4807948242%_
                                   _%hd4808048246%_
                                   _%tl4808148249%_
                                   _%e4808248252%_
                                   _%hd4808348256%_
                                   _%tl4808448259%_)
                            (let ((_%L48262%_ _%hd4808348256%_)
                                  (_%L48264%_ _%hd4808048246%_))
                              (if (and (gx#identifier? _%L48264%_)
                                       (or (gx#free-identifier=?
                                            _%L48264%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48264%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48264%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48264%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7967779678%_ _%L48262%_ _%L48264%_)
                                  (if (gx#identifier? _%hd4808048246%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85027_|
                                           _%hd4808048246%_)
                                          (_%__kont7968179682%_
                                           _%hd4808348256%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4807548112%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4807548112%_))))))))
                    (if (gx#stx-pair? _%__stx7967479675%_)
                        (let ((_%e4807948242%_
                               (gx#syntax-e _%__stx7967479675%_)))
                          (let ((_%tl4808148249%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4807948242%_)))
                                (_%hd4808048246%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4807948242%_))))
                            (if (gx#stx-pair? _%tl4808148249%_)
                                (let ((_%e4808248252%_
                                       (gx#syntax-e _%tl4808148249%_)))
                                  (let ((_%tl4808448259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4808248252%_)))
                                        (_%hd4808348256%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4808248252%_))))
                                    (if (gx#stx-null? _%tl4808448259%_)
                                        (_%__match7969779698%_
                                         _%e4807948242%_
                                         _%hd4808048246%_
                                         _%tl4808148249%_
                                         _%e4808248252%_
                                         _%hd4808348256%_
                                         _%tl4808448259%_)
                                        (if (gx#identifier? _%hd4808048246%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g85027_|
                                                 _%hd4808048246%_)
                                                (if (gx#stx-pair?
                                                     _%tl4808448259%_)
                                                    (let ((_%e4809448182%_
                                                           (gx#syntax-e
                                                            _%tl4808448259%_)))
                                                      (let ((_%tl4809648189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4809448182%_)))
                    (_%hd4809548186%_
                     (let () (declare (not safe)) (##car _%e4809448182%_))))
                (if (gx#stx-pair? _%tl4809648189%_)
                    (let ((_%e4809748192%_ (gx#syntax-e _%tl4809648189%_)))
                      (let ((_%tl4809948199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4809748192%_)))
                            (_%hd4809848196%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4809748192%_))))
                        (if (gx#stx-null? _%tl4809948199%_)
                            (_%__match7972779728%_
                             _%e4807948242%_
                             _%hd4808048246%_
                             _%tl4808148249%_
                             _%e4808248252%_
                             _%hd4808348256%_
                             _%tl4808448259%_
                             _%e4809448182%_
                             _%hd4809548186%_
                             _%tl4809648189%_
                             _%e4809748192%_
                             _%hd4809848196%_
                             _%tl4809948199%_)
                            (let () (declare (not safe)) (_%g4807548112%_)))))
                    (let () (declare (not safe)) (_%g4807548112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4807548112%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4807548112%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4807548112%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4807548112%_)))))
                        (let () (declare (not safe)) (_%g4807548112%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47829%_ _%slot47831%_)
        (let ((_%contract4783247834%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47829%_
                _%slot47831%_)))
          (if _%contract4783247834%_
              (let* ((_%contract47838%_ _%contract4783247834%_)
                     (_%__stx7974879749%_ _%contract47838%_)
                     (_%g4784347880%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7974879749%_))))
                (let ((_%__kont7975179752%_
                       (lambda (_%L48030%_ _%L48032%_)
                         (not (gx#free-identifier=?
                               _%L48032%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7975379754%_
                       (lambda (_%L47970%_ _%L47972%_ _%L47973%_) '#t))
                      (_%__kont7975579756%_ (lambda (_%L47907%_) '#t)))
                  (let* ((_%__match7980179802%_
                          (lambda (_%e4785647930%_
                                   _%hd4785747934%_
                                   _%tl4785847937%_
                                   _%e4785947940%_
                                   _%hd4786047944%_
                                   _%tl4786147947%_
                                   _%e4786247950%_
                                   _%hd4786347954%_
                                   _%tl4786447957%_
                                   _%e4786547960%_
                                   _%hd4786647964%_
                                   _%tl4786747967%_)
                            (let ((_%L47970%_ _%hd4786647964%_)
                                  (_%L47972%_ _%hd4786347954%_)
                                  (_%L47973%_ _%hd4786047944%_))
                              (if (and (gx#identifier? _%L47972%_)
                                       (or (gx#free-identifier=?
                                            _%L47972%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47972%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47972%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47972%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7975379754%_
                                   _%L47970%_
                                   _%L47972%_
                                   _%L47973%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4784347880%_))))))
                         (_%__match7977179772%_
                          (lambda (_%e4784748010%_
                                   _%hd4784848014%_
                                   _%tl4784948017%_
                                   _%e4785048020%_
                                   _%hd4785148024%_
                                   _%tl4785248027%_)
                            (let ((_%L48030%_ _%hd4785148024%_)
                                  (_%L48032%_ _%hd4784848014%_))
                              (if (and (gx#identifier? _%L48032%_)
                                       (or (gx#free-identifier=?
                                            _%L48032%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48032%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48032%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48032%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7975179752%_ _%L48030%_ _%L48032%_)
                                  (if (gx#identifier? _%hd4784848014%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g85028_|
                                           _%hd4784848014%_)
                                          (_%__kont7975579756%_
                                           _%hd4785148024%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4784347880%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4784347880%_))))))))
                    (if (gx#stx-pair? _%__stx7974879749%_)
                        (let ((_%e4784748010%_
                               (gx#syntax-e _%__stx7974879749%_)))
                          (let ((_%tl4784948017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4784748010%_)))
                                (_%hd4784848014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4784748010%_))))
                            (if (gx#stx-pair? _%tl4784948017%_)
                                (let ((_%e4785048020%_
                                       (gx#syntax-e _%tl4784948017%_)))
                                  (let ((_%tl4785248027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4785048020%_)))
                                        (_%hd4785148024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4785048020%_))))
                                    (if (gx#stx-null? _%tl4785248027%_)
                                        (_%__match7977179772%_
                                         _%e4784748010%_
                                         _%hd4784848014%_
                                         _%tl4784948017%_
                                         _%e4785048020%_
                                         _%hd4785148024%_
                                         _%tl4785248027%_)
                                        (if (gx#identifier? _%hd4784848014%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g85028_|
                                                 _%hd4784848014%_)
                                                (if (gx#stx-pair?
                                                     _%tl4785248027%_)
                                                    (let ((_%e4786247950%_
                                                           (gx#syntax-e
                                                            _%tl4785248027%_)))
                                                      (let ((_%tl4786447957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4786247950%_)))
                    (_%hd4786347954%_
                     (let () (declare (not safe)) (##car _%e4786247950%_))))
                (if (gx#stx-pair? _%tl4786447957%_)
                    (let ((_%e4786547960%_ (gx#syntax-e _%tl4786447957%_)))
                      (let ((_%tl4786747967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4786547960%_)))
                            (_%hd4786647964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4786547960%_))))
                        (if (gx#stx-null? _%tl4786747967%_)
                            (_%__match7980179802%_
                             _%e4784748010%_
                             _%hd4784848014%_
                             _%tl4784948017%_
                             _%e4785048020%_
                             _%hd4785148024%_
                             _%tl4785248027%_
                             _%e4786247950%_
                             _%hd4786347954%_
                             _%tl4786447957%_
                             _%e4786547960%_
                             _%hd4786647964%_
                             _%tl4786747967%_)
                            (let () (declare (not safe)) (_%g4784347880%_)))))
                    (let () (declare (not safe)) (_%g4784347880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4784347880%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4784347880%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4784347880%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4784347880%_)))))
                        (let () (declare (not safe)) (_%g4784347880%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47815%_)
        (if (gx#identifier? _%id47815%_)
            (let* ((_%str47818%_ (symbol->string (gx#stx-e _%id47815%_)))
                   (_%index4782047822%_ (string-index _%str47818%_ '#\.)))
              (if _%index4782047822%_
                  (let ((_%index47826%_ _%index4782047822%_))
                    (if (let () (declare (not safe)) (##fx> _%index47826%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47818%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47808%_ _%id47810%_)
        (let ((_%parts47812%_
               (string-split (symbol->string (gx#stx-e _%id47810%_)) '#\.)))
          (if (find string-empty? _%parts47812%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47808%_
               _%id47810%_)
              (cons (gx#stx-identifier _%id47810%_ (car _%parts47812%_))
                    (map string->symbol (cdr _%parts47812%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47789%_ _%klass-or-id47791%_ _%slot47792%_)
        (let* ((_%klass47794%_
                (if (gx#identifier? _%klass-or-id47791%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47789%_
                       _%klass-or-id47791%_))
                    _%klass-or-id47791%_))
               (_%accessors47797%_
                (let ((__obj84848 _%klass47794%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj84848
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84848 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84848
                       'unchecked-accessors))))
               (_%$e47802%_ (agetq _%slot47792%_ _%accessors47797%_)))
          (if _%$e47802%_
              _%$e47802%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47789%_
               _%klass47794%_
               _%slot47792%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47769%_
               _%klass-or-id47771%_
               _%slot47772%_
               _%checked?47773%_)
        (let* ((_%klass47775%_
                (if (gx#identifier? _%klass-or-id47771%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47769%_
                       _%klass-or-id47771%_))
                    _%klass-or-id47771%_))
               (_%mutators47778%_
                (if _%checked?47773%_
                    (let ((__obj84849 _%klass47775%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84849
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84849 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84849
                           'mutators)))
                    (let ((__obj84850 _%klass47775%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84850
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84850 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84850
                           'unchecked-mutators)))))
               (_%$e47783%_ (agetq _%slot47772%_ _%mutators47778%_)))
          (if _%$e47783%_
              _%$e47783%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47769%_
               _%klass47775%_
               _%slot47772%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48344%_)
        (letrec ((_%expand-body48347%_
                  (lambda (_%klass49255%_
                           _%var49257%_
                           _%Type49258%_
                           _%body49259%_
                           _%checked?49260%_)
                    (let* ((_%g4926249306%_
                            (lambda (_%g4926349302%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4926349302%_)))
                           (_%g4926149463%_
                            (lambda (_%g4926349310%_)
                              (if (gx#stx-pair? _%g4926349310%_)
                                  (let ((_%e4927149313%_
                                         (gx#syntax-e _%g4926349310%_)))
                                    (let ((_%hd4927249317%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4927149313%_)))
                                          (_%tl4927349320%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4927149313%_))))
                                      (if (gx#stx-pair? _%tl4927349320%_)
                                          (let ((_%e4927449323%_
                                                 (gx#syntax-e
                                                  _%tl4927349320%_)))
                                            (let ((_%hd4927549327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927449323%_)))
                                                  (_%tl4927649330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927449323%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4927649330%_)
                                                  (let ((_%e4927749333%_
                                                         (gx#syntax-e
                                                          _%tl4927649330%_)))
                                                    (let ((_%hd4927849337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4927749333%_)))
                                                          (_%tl4927949340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4927749333%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4927949340%_)
                                                          (let ((_%e4928049343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4927949340%_)))
                    (let ((_%hd4928149347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4928049343%_)))
                          (_%tl4928249350%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4928049343%_))))
                      (if (gx#stx-pair? _%tl4928249350%_)
                          (let ((_%e4928349353%_
                                 (gx#syntax-e _%tl4928249350%_)))
                            (let ((_%hd4928449357%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4928349353%_)))
                                  (_%tl4928549360%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4928349353%_))))
                              (if (gx#stx-pair? _%tl4928549360%_)
                                  (let ((_%e4928649363%_
                                         (gx#syntax-e _%tl4928549360%_)))
                                    (let ((_%hd4928749367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4928649363%_)))
                                          (_%tl4928849370%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4928649363%_))))
                                      (if (gx#stx-pair? _%tl4928849370%_)
                                          (let ((_%e4928949373%_
                                                 (gx#syntax-e
                                                  _%tl4928849370%_)))
                                            (let ((_%hd4929049377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4928949373%_)))
                                                  (_%tl4929149380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4928949373%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4929049377%_)
                                                  (let ((_g85029_
                                                         (gx#syntax-split-splice
                                                          _%hd4929049377%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85029_)
                           (##values-length _g85029_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85030_ 2)))
                    (error "Context expects 2 values" _g85030_)))
              (let ((_%target4929249383%_
                     (let () (declare (not safe)) (##values-ref _g85029_ 0)))
                    (_%tl4929449386%_
                     (let () (declare (not safe)) (##values-ref _g85029_ 1))))
                (if (gx#stx-null? _%tl4929449386%_)
                    (letrec ((_%loop4929549389%_
                              (lambda (_%hd4929349393%_ _%body4929949396%_)
                                (if (gx#stx-pair? _%hd4929349393%_)
                                    (let ((_%e4929649399%_
                                           (gx#syntax-e _%hd4929349393%_)))
                                      (let ((_%lp-hd4929749403%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4929649399%_)))
                                            (_%lp-tl4929849406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4929649399%_))))
                                        (_%loop4929549389%_
                                         _%lp-tl4929849406%_
                                         (cons _%lp-hd4929749403%_
                                               _%body4929949396%_))))
                                    (let ((_%body4930049409%_
                                           (reverse _%body4929949396%_)))
                                      (if (gx#stx-null? _%tl4929149380%_)
                                          ((lambda (_%L49413%_
                                                    _%L49415%_
                                                    _%L49416%_
                                                    _%L49417%_
                                                    _%L49418%_
                                                    _%L49419%_
                                                    _%L49420%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49418%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49419%_ '()))
                                         (cons _%L49418%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49420%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49418%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49417%_ '()))
                               (cons _%L49416%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49415%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4945449457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4945549460%_)
                      (cons _%g4945449457%_ _%g4945549460%_))
                    '()
                    _%L49413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4930049409%_
                                           _%hd4928749367%_
                                           _%hd4928449357%_
                                           _%hd4928149347%_
                                           _%hd4927849337%_
                                           _%hd4927549327%_
                                           _%hd4927249317%_)
                                          (_%g4926249306%_
                                           _%g4926349310%_)))))))
                      (_%loop4929549389%_ _%target4929249383%_ '()))
                    (_%g4926249306%_ _%g4926349310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926249306%_
                                                   _%g4926349310%_))))
                                          (_%g4926249306%_ _%g4926349310%_))))
                                  (_%g4926249306%_ _%g4926349310%_))))
                          (_%g4926249306%_ _%g4926349310%_))))
                  (_%g4926249306%_ _%g4926349310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926249306%_
                                                   _%g4926349310%_))))
                                          (_%g4926249306%_ _%g4926349310%_))))
                                  (_%g4926249306%_ _%g4926349310%_)))))
                      (_%g4926149463%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj84851 _%klass49255%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84851
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84851
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj84851
                                    'type-descriptor)))
                             _%var49257%_
                             _%klass49255%_
                             _%checked?49260%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49259%_)))))
                 (_%expand48349%_
                  (lambda (_%var49147%_
                           _%Type49149%_
                           _%body49150%_
                           _%checked?49151%_
                           _%checked-mutators?49152%_
                           _%maybe?49153%_)
                    (let* ((_%klass49155%_
                            (gx#syntax-local-value _%Type49149%_ false))
                           (_%expr-body49162%_
                            (_%expand-body48347%_
                             _%klass49155%_
                             _%var49147%_
                             _%Type49149%_
                             _%body49150%_
                             (let ((_%$e49158%_ _%checked?49151%_))
                               (if _%$e49158%_
                                   _%$e49158%_
                                   _%checked-mutators?49152%_)))))
                      (if _%checked?49151%_
                          (let* ((_%g4916749186%_
                                  (lambda (_%g4916849182%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4916849182%_)))
                                 (_%g4916649248%_
                                  (lambda (_%g4916849190%_)
                                    (if (gx#stx-pair? _%g4916849190%_)
                                        (let ((_%e4917249193%_
                                               (gx#syntax-e _%g4916849190%_)))
                                          (let ((_%hd4917349197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4917249193%_)))
                                                (_%tl4917449200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4917249193%_))))
                                            (if (gx#stx-pair? _%tl4917449200%_)
                                                (let ((_%e4917549203%_
                                                       (gx#syntax-e
                                                        _%tl4917449200%_)))
                                                  (let ((_%hd4917649207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4917549203%_)))
                                                        (_%tl4917749210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4917549203%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4917749210%_)
                                                        (let ((_%e4917849213%_
                                                               (gx#syntax-e
                                                                _%tl4917749210%_)))
                                                          (let ((_%hd4917949217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4917849213%_)))
                        (_%tl4918049220%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4917849213%_))))
                    (if (gx#stx-null? _%tl4918049220%_)
                        ((lambda (_%L49223%_ _%L49225%_ _%L49226%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49225%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49226%_ '())))
                                       (cons _%L49223%_ '()))))
                         _%hd4917949217%_
                         _%hd4917649207%_
                         _%hd4917349197%_)
                        (_%g4916749186%_ _%g4916849190%_))))
                (_%g4916749186%_ _%g4916849190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4916749186%_
                                                 _%g4916849190%_))))
                                        (_%g4916749186%_ _%g4916849190%_)))))
                            (_%g4916649248%_
                             (list (let ((_%instance?49252%_
                                          (let ((__obj84852 _%klass49155%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84852
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84852
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84852
                                                 'predicate)))))
                                     (if _%maybe?49153%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49252%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49252%_))
                                   _%var49147%_
                                   _%expr-body49162%_)))
                          _%expr-body49162%_)))))
          (let* ((_%__stx7982279823%_ _%stx48344%_)
                 (_%g4835548498%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7982279823%_))))
            (let ((_%__kont7982579826%_
                   (lambda (_%L49075%_ _%L49077%_ _%L49078%_ _%L49079%_)
                     (let* ((_%g4910449112%_
                             (lambda (_%g4910549108%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4910549108%_)))
                            (_%g4910349139%_
                             (lambda (_%g4910549116%_)
                               ((lambda (_%L49119%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49079%_
                                                    (cons _%L49078%_
                                                          (cons _%L49119%_
                                                                '())))
                                              (foldr (lambda (_%g4913049133%_
                                                              _%g4913149136%_)
                                                       (cons _%g4913049133%_
                                                             _%g4913149136%_))
                                                     '()
                                                     _%L49075%_))))
                                _%g4910549116%_))))
                       (_%g4910349139%_
                        (let ((__obj84853 (gx#syntax-local-value _%L49077%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84853
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84853
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84853
                               'identifier)))))))
                  (_%__kont7982979830%_
                   (lambda (_%L48953%_ _%L48955%_ _%L48956%_)
                     (_%expand48349%_
                      _%L48956%_
                      _%L48955%_
                      (foldr (lambda (_%g4897948982%_ _%g4898048985%_)
                               (cons _%g4897948982%_ _%g4898048985%_))
                             '()
                             _%L48953%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7983379834%_
                   (lambda (_%L48831%_ _%L48833%_ _%L48834%_)
                     (_%expand48349%_
                      _%L48834%_
                      _%L48833%_
                      (foldr (lambda (_%g4885748860%_ _%g4885848863%_)
                               (cons _%g4885748860%_ _%g4885848863%_))
                             '()
                             _%L48831%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7983779838%_
                   (lambda (_%L48709%_ _%L48711%_ _%L48712%_)
                     (_%expand48349%_
                      _%L48712%_
                      _%L48711%_
                      (foldr (lambda (_%g4873548738%_ _%g4873648741%_)
                               (cons _%g4873548738%_ _%g4873648741%_))
                             '()
                             _%L48709%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7984179842%_
                   (lambda (_%L48585%_ _%L48587%_ _%L48588%_)
                     (_%expand48349%_
                      _%L48588%_
                      _%L48587%_
                      (foldr (lambda (_%g4861348616%_ _%g4861448619%_)
                               (cons _%g4861348616%_ _%g4861448619%_))
                             '()
                             _%L48585%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8006180062%_
                      (lambda (_%e4846948505%_
                               _%hd4847048509%_
                               _%tl4847148512%_
                               _%e4847248515%_
                               _%hd4847348519%_
                               _%tl4847448522%_
                               _%e4847548525%_
                               _%hd4847648529%_
                               _%tl4847748532%_
                               _%e4847848535%_
                               _%hd4847948539%_
                               _%tl4848048542%_
                               _%e4848148545%_
                               _%hd4848248549%_
                               _%tl4848348552%_
                               _%__splice7984379844%_
                               _%target4848448555%_
                               _%tl4848648558%_)
                        (letrec ((_%loop4848748561%_
                                  (lambda (_%hd4848548565%_ _%body4849148568%_)
                                    (if (gx#stx-pair? _%hd4848548565%_)
                                        (let ((_%e4848848571%_
                                               (gx#syntax-e _%hd4848548565%_)))
                                          (let ((_%lp-tl4849048578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4848848571%_)))
                                                (_%lp-hd4848948575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4848848571%_))))
                                            (_%loop4848748561%_
                                             _%lp-tl4849048578%_
                                             (cons _%lp-hd4848948575%_
                                                   _%body4849148568%_))))
                                        (let ((_%body4849248581%_
                                               (reverse _%body4849148568%_)))
                                          (let ((_%L48585%_ _%body4849248581%_)
                                                (_%L48587%_ _%hd4848248549%_)
                                                (_%L48588%_ _%hd4847648529%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48587%_))
                                                (_%__kont7984179842%_
                                                 _%L48585%_
                                                 _%L48587%_
                                                 _%L48588%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))))))))
                          (_%loop4848748561%_ _%target4848448555%_ '()))))
                     (_%__match8001780018%_
                      (lambda (_%e4844248629%_
                               _%hd4844348633%_
                               _%tl4844448636%_
                               _%e4844548639%_
                               _%hd4844648643%_
                               _%tl4844748646%_
                               _%e4844848649%_
                               _%hd4844948653%_
                               _%tl4845048656%_
                               _%e4845148659%_
                               _%hd4845248663%_
                               _%tl4845348666%_
                               _%e4845448669%_
                               _%hd4845548673%_
                               _%tl4845648676%_
                               _%__splice7983979840%_
                               _%target4845748679%_
                               _%tl4845948682%_)
                        (letrec ((_%loop4846048685%_
                                  (lambda (_%hd4845848689%_ _%body4846448692%_)
                                    (if (gx#stx-pair? _%hd4845848689%_)
                                        (let ((_%e4846148695%_
                                               (gx#syntax-e _%hd4845848689%_)))
                                          (let ((_%lp-tl4846348702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4846148695%_)))
                                                (_%lp-hd4846248699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4846148695%_))))
                                            (_%loop4846048685%_
                                             _%lp-tl4846348702%_
                                             (cons _%lp-hd4846248699%_
                                                   _%body4846448692%_))))
                                        (let ((_%body4846548705%_
                                               (reverse _%body4846448692%_)))
                                          (let ((_%L48709%_ _%body4846548705%_)
                                                (_%L48711%_ _%hd4845548673%_)
                                                (_%L48712%_ _%hd4844948653%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48711%_))
                                                (_%__kont7983779838%_
                                                 _%L48709%_
                                                 _%L48711%_
                                                 _%L48712%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))))))))
                          (_%loop4846048685%_ _%target4845748679%_ '()))))
                     (_%__match7997379974%_
                      (lambda (_%e4841548751%_
                               _%hd4841648755%_
                               _%tl4841748758%_
                               _%e4841848761%_
                               _%hd4841948765%_
                               _%tl4842048768%_
                               _%e4842148771%_
                               _%hd4842248775%_
                               _%tl4842348778%_
                               _%e4842448781%_
                               _%hd4842548785%_
                               _%tl4842648788%_
                               _%e4842748791%_
                               _%hd4842848795%_
                               _%tl4842948798%_
                               _%__splice7983579836%_
                               _%target4843048801%_
                               _%tl4843248804%_)
                        (letrec ((_%loop4843348807%_
                                  (lambda (_%hd4843148811%_ _%body4843748814%_)
                                    (if (gx#stx-pair? _%hd4843148811%_)
                                        (let ((_%e4843448817%_
                                               (gx#syntax-e _%hd4843148811%_)))
                                          (let ((_%lp-tl4843648824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4843448817%_)))
                                                (_%lp-hd4843548821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4843448817%_))))
                                            (_%loop4843348807%_
                                             _%lp-tl4843648824%_
                                             (cons _%lp-hd4843548821%_
                                                   _%body4843748814%_))))
                                        (let ((_%body4843848827%_
                                               (reverse _%body4843748814%_)))
                                          (let ((_%L48831%_ _%body4843848827%_)
                                                (_%L48833%_ _%hd4842848795%_)
                                                (_%L48834%_ _%hd4842248775%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48833%_))
                                                (_%__kont7983379834%_
                                                 _%L48831%_
                                                 _%L48833%_
                                                 _%L48834%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))))))))
                          (_%loop4843348807%_ _%target4843048801%_ '()))))
                     (_%__match7992979930%_
                      (lambda (_%e4838848873%_
                               _%hd4838948877%_
                               _%tl4839048880%_
                               _%e4839148883%_
                               _%hd4839248887%_
                               _%tl4839348890%_
                               _%e4839448893%_
                               _%hd4839548897%_
                               _%tl4839648900%_
                               _%e4839748903%_
                               _%hd4839848907%_
                               _%tl4839948910%_
                               _%e4840048913%_
                               _%hd4840148917%_
                               _%tl4840248920%_
                               _%__splice7983179832%_
                               _%target4840348923%_
                               _%tl4840548926%_)
                        (letrec ((_%loop4840648929%_
                                  (lambda (_%hd4840448933%_ _%body4841048936%_)
                                    (if (gx#stx-pair? _%hd4840448933%_)
                                        (let ((_%e4840748939%_
                                               (gx#syntax-e _%hd4840448933%_)))
                                          (let ((_%lp-tl4840948946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840748939%_)))
                                                (_%lp-hd4840848943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840748939%_))))
                                            (_%loop4840648929%_
                                             _%lp-tl4840948946%_
                                             (cons _%lp-hd4840848943%_
                                                   _%body4841048936%_))))
                                        (let ((_%body4841148949%_
                                               (reverse _%body4841048936%_)))
                                          (let ((_%L48953%_ _%body4841148949%_)
                                                (_%L48955%_ _%hd4840148917%_)
                                                (_%L48956%_ _%hd4839548897%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48955%_))
                                                (_%__kont7982979830%_
                                                 _%L48953%_
                                                 _%L48955%_
                                                 _%L48956%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))))))))
                          (_%loop4840648929%_ _%target4840348923%_ '()))))
                     (_%__match7990979910%_
                      (lambda (_%e4838848873%_
                               _%hd4838948877%_
                               _%tl4839048880%_
                               _%e4839148883%_
                               _%hd4839248887%_
                               _%tl4839348890%_
                               _%e4839448893%_
                               _%hd4839548897%_
                               _%tl4839648900%_
                               _%e4839748903%_
                               _%hd4839848907%_
                               _%tl4839948910%_)
                        (if (gx#identifier? _%hd4839848907%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g85031_|
                                 _%hd4839848907%_)
                                (if (gx#stx-pair? _%tl4839948910%_)
                                    (let ((_%e4840048913%_
                                           (gx#syntax-e _%tl4839948910%_)))
                                      (let ((_%tl4840248920%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4840048913%_)))
                                            (_%hd4840148917%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4840048913%_))))
                                        (if (gx#stx-null? _%tl4840248920%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4839348890%_)
                                                (let ((_%__splice7983179832%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl4839348890%_
                                                        '0)))
                                                  (let ((_%tl4840548926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7983179832%_
                                                            '1)))
                                                        (_%target4840348923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7983179832%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4840548926%_)
                                                        (_%__match7992979930%_
                                                         _%e4838848873%_
                                                         _%hd4838948877%_
                                                         _%tl4839048880%_
                                                         _%e4839148883%_
                                                         _%hd4839248887%_
                                                         _%tl4839348890%_
                                                         _%e4839448893%_
                                                         _%hd4839548897%_
                                                         _%tl4839648900%_
                                                         _%e4839748903%_
                                                         _%hd4839848907%_
                                                         _%tl4839948910%_
                                                         _%e4840048913%_
                                                         _%hd4840148917%_
                                                         _%tl4840248920%_
                                                         _%__splice7983179832%_
                                                         _%target4840348923%_
                                                         _%tl4840548926%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4835548498%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835548498%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835548498%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g85032_|
                                     _%hd4839848907%_)
                                    (if (gx#stx-pair? _%tl4839948910%_)
                                        (let ((_%e4842748791%_
                                               (gx#syntax-e _%tl4839948910%_)))
                                          (let ((_%tl4842948798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4842748791%_)))
                                                (_%hd4842848795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4842748791%_))))
                                            (if (gx#stx-null? _%tl4842948798%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4839348890%_)
                                                    (let ((_%__splice7983579836%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4839348890%_
                                                            '0)))
                                                      (let ((_%tl4843248804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7983579836%_ '1)))
                    (_%target4843048801%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7983579836%_ '0))))
                (if (gx#stx-null? _%tl4843248804%_)
                    (_%__match7997379974%_
                     _%e4838848873%_
                     _%hd4838948877%_
                     _%tl4839048880%_
                     _%e4839148883%_
                     _%hd4839248887%_
                     _%tl4839348890%_
                     _%e4839448893%_
                     _%hd4839548897%_
                     _%tl4839648900%_
                     _%e4839748903%_
                     _%hd4839848907%_
                     _%tl4839948910%_
                     _%e4842748791%_
                     _%hd4842848795%_
                     _%tl4842948798%_
                     _%__splice7983579836%_
                     _%target4843048801%_
                     _%tl4843248804%_)
                    (let () (declare (not safe)) (_%g4835548498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835548498%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835548498%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g85033_|
                                         _%hd4839848907%_)
                                        (if (gx#stx-pair? _%tl4839948910%_)
                                            (let ((_%e4845448669%_
                                                   (gx#syntax-e
                                                    _%tl4839948910%_)))
                                              (let ((_%tl4845648676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4845448669%_)))
                                                    (_%hd4845548673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4845448669%_))))
                                                (if (gx#stx-null?
                                                     _%tl4845648676%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4839348890%_)
                                                        (let ((_%__splice7983979840%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4839348890%_
                                                                '0)))
                                                          (let ((_%tl4845948682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7983979840%_ '1)))
                        (_%target4845748679%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7983979840%_ '0))))
                    (if (gx#stx-null? _%tl4845948682%_)
                        (_%__match8001780018%_
                         _%e4838848873%_
                         _%hd4838948877%_
                         _%tl4839048880%_
                         _%e4839148883%_
                         _%hd4839248887%_
                         _%tl4839348890%_
                         _%e4839448893%_
                         _%hd4839548897%_
                         _%tl4839648900%_
                         _%e4839748903%_
                         _%hd4839848907%_
                         _%tl4839948910%_
                         _%e4845448669%_
                         _%hd4845548673%_
                         _%tl4845648676%_
                         _%__splice7983979840%_
                         _%target4845748679%_
                         _%tl4845948682%_)
                        (let () (declare (not safe)) (_%g4835548498%_)))))
                (let () (declare (not safe)) (_%g4835548498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835548498%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835548498%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g85034_|
                                             _%hd4839848907%_)
                                            (if (gx#stx-pair? _%tl4839948910%_)
                                                (let ((_%e4848148545%_
                                                       (gx#syntax-e
                                                        _%tl4839948910%_)))
                                                  (let ((_%tl4848348552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4848148545%_)))
                                                        (_%hd4848248549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4848148545%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4848348552%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4839348890%_)
                                                            (let ((_%__splice7984379844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl4839348890%_
                            '0)))
                      (let ((_%tl4848648558%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7984379844%_ '1)))
                            (_%target4848448555%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7984379844%_ '0))))
                        (if (gx#stx-null? _%tl4848648558%_)
                            (_%__match8006180062%_
                             _%e4838848873%_
                             _%hd4838948877%_
                             _%tl4839048880%_
                             _%e4839148883%_
                             _%hd4839248887%_
                             _%tl4839348890%_
                             _%e4839448893%_
                             _%hd4839548897%_
                             _%tl4839648900%_
                             _%e4839748903%_
                             _%hd4839848907%_
                             _%tl4839948910%_
                             _%e4848148545%_
                             _%hd4848248549%_
                             _%tl4848348552%_
                             _%__splice7984379844%_
                             _%target4848448555%_
                             _%tl4848648558%_)
                            (let () (declare (not safe)) (_%g4835548498%_)))))
                    (let () (declare (not safe)) (_%g4835548498%_)))
                (let () (declare (not safe)) (_%g4835548498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835548498%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835548498%_))))))
                            (let () (declare (not safe)) (_%g4835548498%_)))))
                     (_%__match7988579886%_
                      (lambda (_%e4836148995%_
                               _%hd4836248999%_
                               _%tl4836349002%_
                               _%e4836449005%_
                               _%hd4836549009%_
                               _%tl4836649012%_
                               _%e4836749015%_
                               _%hd4836849019%_
                               _%tl4836949022%_
                               _%e4837049025%_
                               _%hd4837149029%_
                               _%tl4837249032%_
                               _%e4837349035%_
                               _%hd4837449039%_
                               _%tl4837549042%_
                               _%__splice7982779828%_
                               _%target4837649045%_
                               _%tl4837849048%_)
                        (letrec ((_%loop4837949051%_
                                  (lambda (_%hd4837749055%_ _%body4838349058%_)
                                    (if (gx#stx-pair? _%hd4837749055%_)
                                        (let ((_%e4838049061%_
                                               (gx#syntax-e _%hd4837749055%_)))
                                          (let ((_%lp-tl4838249068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4838049061%_)))
                                                (_%lp-hd4838149065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4838049061%_))))
                                            (_%loop4837949051%_
                                             _%lp-tl4838249068%_
                                             (cons _%lp-hd4838149065%_
                                                   _%body4838349058%_))))
                                        (let ((_%body4838449071%_
                                               (reverse _%body4838349058%_)))
                                          (let ((_%L49075%_ _%body4838449071%_)
                                                (_%L49077%_ _%hd4837449039%_)
                                                (_%L49078%_ _%hd4837149029%_)
                                                (_%L49079%_ _%hd4836849019%_))
                                            (if (let ((__tmp85035
                                                       (gx#syntax-local-value
                                                        _%L49077%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp85035))
                                                (_%__kont7982579826%_
                                                 _%L49075%_
                                                 _%L49077%_
                                                 _%L49078%_
                                                 _%L49079%_)
                                                (_%__match7990979910%_
                                                 _%e4836148995%_
                                                 _%hd4836248999%_
                                                 _%tl4836349002%_
                                                 _%e4836449005%_
                                                 _%hd4836549009%_
                                                 _%tl4836649012%_
                                                 _%e4836749015%_
                                                 _%hd4836849019%_
                                                 _%tl4836949022%_
                                                 _%e4837049025%_
                                                 _%hd4837149029%_
                                                 _%tl4837249032%_))))))))
                          (_%loop4837949051%_ _%target4837649045%_ '())))))
                (if (gx#stx-pair? _%__stx7982279823%_)
                    (let ((_%e4836148995%_ (gx#syntax-e _%__stx7982279823%_)))
                      (let ((_%tl4836349002%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4836148995%_)))
                            (_%hd4836248999%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4836148995%_))))
                        (if (gx#stx-pair? _%tl4836349002%_)
                            (let ((_%e4836449005%_
                                   (gx#syntax-e _%tl4836349002%_)))
                              (let ((_%tl4836649012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4836449005%_)))
                                    (_%hd4836549009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4836449005%_))))
                                (if (gx#stx-pair? _%hd4836549009%_)
                                    (let ((_%e4836749015%_
                                           (gx#syntax-e _%hd4836549009%_)))
                                      (let ((_%tl4836949022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4836749015%_)))
                                            (_%hd4836849019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4836749015%_))))
                                        (if (gx#stx-pair? _%tl4836949022%_)
                                            (let ((_%e4837049025%_
                                                   (gx#syntax-e
                                                    _%tl4836949022%_)))
                                              (let ((_%tl4837249032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4837049025%_)))
                                                    (_%hd4837149029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4837049025%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4837249032%_)
                                                    (let ((_%e4837349035%_
                                                           (gx#syntax-e
                                                            _%tl4837249032%_)))
                                                      (let ((_%tl4837549042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4837349035%_)))
                    (_%hd4837449039%_
                     (let () (declare (not safe)) (##car _%e4837349035%_))))
                (if (gx#stx-null? _%tl4837549042%_)
                    (if (gx#stx-pair/null? _%tl4836649012%_)
                        (let ((_%__splice7982779828%_
                               (gx#syntax-split-splice->vector
                                _%tl4836649012%_
                                '0)))
                          (let ((_%tl4837849048%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7982779828%_ '1)))
                                (_%target4837649045%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7982779828%_ '0))))
                            (if (gx#stx-null? _%tl4837849048%_)
                                (_%__match7988579886%_
                                 _%e4836148995%_
                                 _%hd4836248999%_
                                 _%tl4836349002%_
                                 _%e4836449005%_
                                 _%hd4836549009%_
                                 _%tl4836649012%_
                                 _%e4836749015%_
                                 _%hd4836849019%_
                                 _%tl4836949022%_
                                 _%e4837049025%_
                                 _%hd4837149029%_
                                 _%tl4837249032%_
                                 _%e4837349035%_
                                 _%hd4837449039%_
                                 _%tl4837549042%_
                                 _%__splice7982779828%_
                                 _%target4837649045%_
                                 _%tl4837849048%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4835548498%_)))))
                        (let () (declare (not safe)) (_%g4835548498%_)))
                    (let () (declare (not safe)) (_%g4835548498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835548498%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835548498%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835548498%_)))))
                            (let () (declare (not safe)) (_%g4835548498%_)))))
                    (let () (declare (not safe)) (_%g4835548498%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49473%_)
        (letrec ((_%expand-body49476%_
                  (lambda (_%var50477%_
                           _%Interface50479%_
                           _%body50480%_
                           _%checked?50481%_)
                    (let* ((_%type50483%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49473%_
                               _%Interface50479%_)))
                           (_%g5048650530%_
                            (lambda (_%g5048750526%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5048750526%_)))
                           (_%g5048550688%_
                            (lambda (_%g5048750534%_)
                              (if (gx#stx-pair? _%g5048750534%_)
                                  (let ((_%e5049550537%_
                                         (gx#syntax-e _%g5048750534%_)))
                                    (let ((_%hd5049650541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049550537%_)))
                                          (_%tl5049750544%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049550537%_))))
                                      (if (gx#stx-pair? _%tl5049750544%_)
                                          (let ((_%e5049850547%_
                                                 (gx#syntax-e
                                                  _%tl5049750544%_)))
                                            (let ((_%hd5049950551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5049850547%_)))
                                                  (_%tl5050050554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5049850547%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5050050554%_)
                                                  (let ((_%e5050150557%_
                                                         (gx#syntax-e
                                                          _%tl5050050554%_)))
                                                    (let ((_%hd5050250561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5050150557%_)))
                                                          (_%tl5050350564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5050150557%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5050350564%_)
                                                          (let ((_%e5050450567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5050350564%_)))
                    (let ((_%hd5050550571%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5050450567%_)))
                          (_%tl5050650574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5050450567%_))))
                      (if (gx#stx-pair? _%tl5050650574%_)
                          (let ((_%e5050750577%_
                                 (gx#syntax-e _%tl5050650574%_)))
                            (let ((_%hd5050850581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5050750577%_)))
                                  (_%tl5050950584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5050750577%_))))
                              (if (gx#stx-pair? _%tl5050950584%_)
                                  (let ((_%e5051050587%_
                                         (gx#syntax-e _%tl5050950584%_)))
                                    (let ((_%hd5051150591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5051050587%_)))
                                          (_%tl5051250594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5051050587%_))))
                                      (if (gx#stx-pair? _%tl5051250594%_)
                                          (let ((_%e5051350597%_
                                                 (gx#syntax-e
                                                  _%tl5051250594%_)))
                                            (let ((_%hd5051450601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5051350597%_)))
                                                  (_%tl5051550604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5051350597%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5051450601%_)
                                                  (let ((_g85036_
                                                         (gx#syntax-split-splice
                                                          _%hd5051450601%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85037_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85036_)
                           (##values-length _g85036_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85037_ 2)))
                    (error "Context expects 2 values" _g85037_)))
              (let ((_%target5051650607%_
                     (let () (declare (not safe)) (##values-ref _g85036_ 0)))
                    (_%tl5051850610%_
                     (let () (declare (not safe)) (##values-ref _g85036_ 1))))
                (if (gx#stx-null? _%tl5051850610%_)
                    (letrec ((_%loop5051950613%_
                              (lambda (_%hd5051750617%_ _%body5052350620%_)
                                (if (gx#stx-pair? _%hd5051750617%_)
                                    (let ((_%e5052050623%_
                                           (gx#syntax-e _%hd5051750617%_)))
                                      (let ((_%lp-hd5052150627%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5052050623%_)))
                                            (_%lp-tl5052250630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5052050623%_))))
                                        (_%loop5051950613%_
                                         _%lp-tl5052250630%_
                                         (cons _%lp-hd5052150627%_
                                               _%body5052350620%_))))
                                    (let ((_%body5052450633%_
                                           (reverse _%body5052350620%_)))
                                      (if (gx#stx-null? _%tl5051550604%_)
                                          ((lambda (_%L50637%_
                                                    _%L50639%_
                                                    _%L50640%_
                                                    _%L50641%_
                                                    _%L50642%_
                                                    _%L50643%_
                                                    _%L50644%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50641%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50642%_ '()))
                                         (cons _%L50641%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50644%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50641%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50643%_ '()))
                               (cons _%L50640%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50639%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5067950682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5068050685%_)
                      (cons _%g5067950682%_ _%g5068050685%_))
                    '()
                    _%L50637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5052450633%_
                                           _%hd5051150591%_
                                           _%hd5050850581%_
                                           _%hd5050550571%_
                                           _%hd5050250561%_
                                           _%hd5049950551%_
                                           _%hd5049650541%_)
                                          (_%g5048650530%_
                                           _%g5048750534%_)))))))
                      (_%loop5051950613%_ _%target5051650607%_ '()))
                    (_%g5048650530%_ _%g5048750534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5048650530%_
                                                   _%g5048750534%_))))
                                          (_%g5048650530%_ _%g5048750534%_))))
                                  (_%g5048650530%_ _%g5048750534%_))))
                          (_%g5048650530%_ _%g5048750534%_))))
                  (_%g5048650530%_ _%g5048750534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5048650530%_
                                                   _%g5048750534%_))))
                                          (_%g5048650530%_ _%g5048750534%_))))
                                  (_%g5048650530%_ _%g5048750534%_)))))
                      (_%g5048550688%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50483%_
                             (let ((__obj84854 _%type50483%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj84854
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj84854
                                      '7
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj84854
                                    'instance-type)))
                             _%var50477%_
                             _%checked?50481%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50480%_)))))
                 (_%expand49478%_
                  (lambda (_%var50276%_
                           _%Interface50278%_
                           _%body50279%_
                           _%checked?50280%_
                           _%checked-methods?50281%_
                           _%maybe?50282%_)
                    (let* ((_%g5028450292%_
                            (lambda (_%g5028550288%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5028550288%_)))
                           (_%g5028350469%_
                            (lambda (_%g5028550296%_)
                              ((lambda (_%L50299%_)
                                 (if _%checked?50280%_
                                     (if _%maybe?50282%_
                                         (let* ((_%g5031150326%_
                                                 (lambda (_%g5031250322%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5031250322%_)))
                                                (_%g5031050372%_
                                                 (lambda (_%g5031250330%_)
                                                   (if (gx#stx-pair?
                                                        _%g5031250330%_)
                                                       (let ((_%e5031550333%_
                                                              (gx#syntax-e
                                                               _%g5031250330%_)))
                                                         (let ((_%hd5031650337%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5031550333%_)))
                       (_%tl5031750340%_
                        (let () (declare (not safe)) (##cdr _%e5031550333%_))))
                   (if (gx#stx-pair? _%tl5031750340%_)
                       (let ((_%e5031850343%_ (gx#syntax-e _%tl5031750340%_)))
                         (let ((_%hd5031950347%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5031850343%_)))
                               (_%tl5032050350%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5031850343%_))))
                           (if (gx#stx-null? _%tl5032050350%_)
                               ((lambda (_%L50353%_ _%L50355%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50355%_
                                                    (cons (cons _%L50353%_
                                                                (cons _%L50355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50355%_
                                                                (cons _%L50299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50355%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5031950347%_
                                _%hd5031650337%_)
                               (_%g5031150326%_ _%g5031250330%_))))
                       (_%g5031150326%_ _%g5031250330%_))))
               (_%g5031150326%_ _%g5031250330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5031050372%_
                                            (list _%var50276%_
                                                  _%Interface50278%_)))
                                         (let* ((_%g5037650391%_
                                                 (lambda (_%g5037750387%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5037750387%_)))
                                                (_%g5037550435%_
                                                 (lambda (_%g5037750395%_)
                                                   (if (gx#stx-pair?
                                                        _%g5037750395%_)
                                                       (let ((_%e5038050398%_
                                                              (gx#syntax-e
                                                               _%g5037750395%_)))
                                                         (let ((_%hd5038150402%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5038050398%_)))
                       (_%tl5038250405%_
                        (let () (declare (not safe)) (##cdr _%e5038050398%_))))
                   (if (gx#stx-pair? _%tl5038250405%_)
                       (let ((_%e5038350408%_ (gx#syntax-e _%tl5038250405%_)))
                         (let ((_%hd5038450412%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5038350408%_)))
                               (_%tl5038550415%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5038350408%_))))
                           (if (gx#stx-null? _%tl5038550415%_)
                               ((lambda (_%L50418%_ _%L50420%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50420%_
                                                    (cons (cons _%L50418%_
                                                                (cons _%L50420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50299%_ '()))))
                                _%hd5038450412%_
                                _%hd5038150402%_)
                               (_%g5037650391%_ _%g5037750395%_))))
                       (_%g5037650391%_ _%g5037750395%_))))
               (_%g5037650391%_ _%g5037750395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5037550435%_
                                            (list _%var50276%_
                                                  _%Interface50278%_))))
                                     (if _%maybe?50282%_
                                         (let* ((_%g5043950447%_
                                                 (lambda (_%g5044050443%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5044050443%_)))
                                                (_%g5043850465%_
                                                 (lambda (_%g5044050451%_)
                                                   ((lambda (_%L50454%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50299%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50454%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5044050451%_))))
                                           (_%g5043850465%_ _%var50276%_))
                                         _%L50299%_)))
                               _%g5028550296%_))))
                      (_%g5028350469%_
                       (_%expand-body49476%_
                        _%var50276%_
                        _%Interface50278%_
                        _%body50279%_
                        (let ((_%$e50473%_ _%checked?50280%_))
                          (if _%$e50473%_
                              _%$e50473%_
                              _%checked-methods?50281%_))))))))
          (let* ((_%__stx8006480065%_ _%stx49473%_)
                 (_%g4948449627%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8006480065%_))))
            (let ((_%__kont8006780068%_
                   (lambda (_%L50204%_ _%L50206%_ _%L50207%_ _%L50208%_)
                     (let* ((_%g5023350241%_
                             (lambda (_%g5023450237%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5023450237%_)))
                            (_%g5023250268%_
                             (lambda (_%g5023450245%_)
                               ((lambda (_%L50248%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50208%_
                                                    (cons _%L50207%_
                                                          (cons _%L50248%_
                                                                '())))
                                              (foldr (lambda (_%g5025950262%_
                                                              _%g5026050265%_)
                                                       (cons _%g5025950262%_
                                                             _%g5026050265%_))
                                                     '()
                                                     _%L50204%_))))
                                _%g5023450245%_))))
                       (_%g5023250268%_
                        (let ((__obj84855 (gx#syntax-local-value _%L50206%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj84855
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj84855
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj84855
                               'identifier)))))))
                  (_%__kont8007180072%_
                   (lambda (_%L50082%_ _%L50084%_ _%L50085%_)
                     (_%expand49478%_
                      _%L50085%_
                      _%L50084%_
                      (foldr (lambda (_%g5010850111%_ _%g5010950114%_)
                               (cons _%g5010850111%_ _%g5010950114%_))
                             '()
                             _%L50082%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8007580076%_
                   (lambda (_%L49960%_ _%L49962%_ _%L49963%_)
                     (_%expand49478%_
                      _%L49963%_
                      _%L49962%_
                      (foldr (lambda (_%g4998649989%_ _%g4998749992%_)
                               (cons _%g4998649989%_ _%g4998749992%_))
                             '()
                             _%L49960%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8007980080%_
                   (lambda (_%L49838%_ _%L49840%_ _%L49841%_)
                     (_%expand49478%_
                      _%L49841%_
                      _%L49840%_
                      (foldr (lambda (_%g4986449867%_ _%g4986549870%_)
                               (cons _%g4986449867%_ _%g4986549870%_))
                             '()
                             _%L49838%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8008380084%_
                   (lambda (_%L49714%_ _%L49716%_ _%L49717%_)
                     (_%expand49478%_
                      _%L49717%_
                      _%L49716%_
                      (foldr (lambda (_%g4974249745%_ _%g4974349748%_)
                               (cons _%g4974249745%_ _%g4974349748%_))
                             '()
                             _%L49714%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8030380304%_
                      (lambda (_%e4959849634%_
                               _%hd4959949638%_
                               _%tl4960049641%_
                               _%e4960149644%_
                               _%hd4960249648%_
                               _%tl4960349651%_
                               _%e4960449654%_
                               _%hd4960549658%_
                               _%tl4960649661%_
                               _%e4960749664%_
                               _%hd4960849668%_
                               _%tl4960949671%_
                               _%e4961049674%_
                               _%hd4961149678%_
                               _%tl4961249681%_
                               _%__splice8008580086%_
                               _%target4961349684%_
                               _%tl4961549687%_)
                        (letrec ((_%loop4961649690%_
                                  (lambda (_%hd4961449694%_ _%body4962049697%_)
                                    (if (gx#stx-pair? _%hd4961449694%_)
                                        (let ((_%e4961749700%_
                                               (gx#syntax-e _%hd4961449694%_)))
                                          (let ((_%lp-tl4961949707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4961749700%_)))
                                                (_%lp-hd4961849704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4961749700%_))))
                                            (_%loop4961649690%_
                                             _%lp-tl4961949707%_
                                             (cons _%lp-hd4961849704%_
                                                   _%body4962049697%_))))
                                        (let ((_%body4962149710%_
                                               (reverse _%body4962049697%_)))
                                          (let ((_%L49714%_ _%body4962149710%_)
                                                (_%L49716%_ _%hd4961149678%_)
                                                (_%L49717%_ _%hd4960549658%_))
                                            (if (and (gx#identifier?
                                                      _%L49717%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49716%_)))
                                                (_%__kont8008380084%_
                                                 _%L49714%_
                                                 _%L49716%_
                                                 _%L49717%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))))))))
                          (_%loop4961649690%_ _%target4961349684%_ '()))))
                     (_%__match8025980260%_
                      (lambda (_%e4957149758%_
                               _%hd4957249762%_
                               _%tl4957349765%_
                               _%e4957449768%_
                               _%hd4957549772%_
                               _%tl4957649775%_
                               _%e4957749778%_
                               _%hd4957849782%_
                               _%tl4957949785%_
                               _%e4958049788%_
                               _%hd4958149792%_
                               _%tl4958249795%_
                               _%e4958349798%_
                               _%hd4958449802%_
                               _%tl4958549805%_
                               _%__splice8008180082%_
                               _%target4958649808%_
                               _%tl4958849811%_)
                        (letrec ((_%loop4958949814%_
                                  (lambda (_%hd4958749818%_ _%body4959349821%_)
                                    (if (gx#stx-pair? _%hd4958749818%_)
                                        (let ((_%e4959049824%_
                                               (gx#syntax-e _%hd4958749818%_)))
                                          (let ((_%lp-tl4959249831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4959049824%_)))
                                                (_%lp-hd4959149828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4959049824%_))))
                                            (_%loop4958949814%_
                                             _%lp-tl4959249831%_
                                             (cons _%lp-hd4959149828%_
                                                   _%body4959349821%_))))
                                        (let ((_%body4959449834%_
                                               (reverse _%body4959349821%_)))
                                          (let ((_%L49838%_ _%body4959449834%_)
                                                (_%L49840%_ _%hd4958449802%_)
                                                (_%L49841%_ _%hd4957849782%_))
                                            (if (and (gx#identifier?
                                                      _%L49841%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49840%_)))
                                                (_%__kont8007980080%_
                                                 _%L49838%_
                                                 _%L49840%_
                                                 _%L49841%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))))))))
                          (_%loop4958949814%_ _%target4958649808%_ '()))))
                     (_%__match8021580216%_
                      (lambda (_%e4954449880%_
                               _%hd4954549884%_
                               _%tl4954649887%_
                               _%e4954749890%_
                               _%hd4954849894%_
                               _%tl4954949897%_
                               _%e4955049900%_
                               _%hd4955149904%_
                               _%tl4955249907%_
                               _%e4955349910%_
                               _%hd4955449914%_
                               _%tl4955549917%_
                               _%e4955649920%_
                               _%hd4955749924%_
                               _%tl4955849927%_
                               _%__splice8007780078%_
                               _%target4955949930%_
                               _%tl4956149933%_)
                        (letrec ((_%loop4956249936%_
                                  (lambda (_%hd4956049940%_ _%body4956649943%_)
                                    (if (gx#stx-pair? _%hd4956049940%_)
                                        (let ((_%e4956349946%_
                                               (gx#syntax-e _%hd4956049940%_)))
                                          (let ((_%lp-tl4956549953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4956349946%_)))
                                                (_%lp-hd4956449950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4956349946%_))))
                                            (_%loop4956249936%_
                                             _%lp-tl4956549953%_
                                             (cons _%lp-hd4956449950%_
                                                   _%body4956649943%_))))
                                        (let ((_%body4956749956%_
                                               (reverse _%body4956649943%_)))
                                          (let ((_%L49960%_ _%body4956749956%_)
                                                (_%L49962%_ _%hd4955749924%_)
                                                (_%L49963%_ _%hd4955149904%_))
                                            (if (and (gx#identifier?
                                                      _%L49963%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49962%_)))
                                                (_%__kont8007580076%_
                                                 _%L49960%_
                                                 _%L49962%_
                                                 _%L49963%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))))))))
                          (_%loop4956249936%_ _%target4955949930%_ '()))))
                     (_%__match8017180172%_
                      (lambda (_%e4951750002%_
                               _%hd4951850006%_
                               _%tl4951950009%_
                               _%e4952050012%_
                               _%hd4952150016%_
                               _%tl4952250019%_
                               _%e4952350022%_
                               _%hd4952450026%_
                               _%tl4952550029%_
                               _%e4952650032%_
                               _%hd4952750036%_
                               _%tl4952850039%_
                               _%e4952950042%_
                               _%hd4953050046%_
                               _%tl4953150049%_
                               _%__splice8007380074%_
                               _%target4953250052%_
                               _%tl4953450055%_)
                        (letrec ((_%loop4953550058%_
                                  (lambda (_%hd4953350062%_ _%body4953950065%_)
                                    (if (gx#stx-pair? _%hd4953350062%_)
                                        (let ((_%e4953650068%_
                                               (gx#syntax-e _%hd4953350062%_)))
                                          (let ((_%lp-tl4953850075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953650068%_)))
                                                (_%lp-hd4953750072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953650068%_))))
                                            (_%loop4953550058%_
                                             _%lp-tl4953850075%_
                                             (cons _%lp-hd4953750072%_
                                                   _%body4953950065%_))))
                                        (let ((_%body4954050078%_
                                               (reverse _%body4953950065%_)))
                                          (let ((_%L50082%_ _%body4954050078%_)
                                                (_%L50084%_ _%hd4953050046%_)
                                                (_%L50085%_ _%hd4952450026%_))
                                            (if (and (gx#identifier?
                                                      _%L50085%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50084%_)))
                                                (_%__kont8007180072%_
                                                 _%L50082%_
                                                 _%L50084%_
                                                 _%L50085%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))))))))
                          (_%loop4953550058%_ _%target4953250052%_ '()))))
                     (_%__match8015180152%_
                      (lambda (_%e4951750002%_
                               _%hd4951850006%_
                               _%tl4951950009%_
                               _%e4952050012%_
                               _%hd4952150016%_
                               _%tl4952250019%_
                               _%e4952350022%_
                               _%hd4952450026%_
                               _%tl4952550029%_
                               _%e4952650032%_
                               _%hd4952750036%_
                               _%tl4952850039%_)
                        (if (gx#identifier? _%hd4952750036%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g85038_|
                                 _%hd4952750036%_)
                                (if (gx#stx-pair? _%tl4952850039%_)
                                    (let ((_%e4952950042%_
                                           (gx#syntax-e _%tl4952850039%_)))
                                      (let ((_%tl4953150049%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4952950042%_)))
                                            (_%hd4953050046%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4952950042%_))))
                                        (if (gx#stx-null? _%tl4953150049%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4952250019%_)
                                                (let ((_%__splice8007380074%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl4952250019%_
                                                        '0)))
                                                  (let ((_%tl4953450055%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8007380074%_
                                                            '1)))
                                                        (_%target4953250052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8007380074%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4953450055%_)
                                                        (_%__match8017180172%_
                                                         _%e4951750002%_
                                                         _%hd4951850006%_
                                                         _%tl4951950009%_
                                                         _%e4952050012%_
                                                         _%hd4952150016%_
                                                         _%tl4952250019%_
                                                         _%e4952350022%_
                                                         _%hd4952450026%_
                                                         _%tl4952550029%_
                                                         _%e4952650032%_
                                                         _%hd4952750036%_
                                                         _%tl4952850039%_
                                                         _%e4952950042%_
                                                         _%hd4953050046%_
                                                         _%tl4953150049%_
                                                         _%__splice8007380074%_
                                                         _%target4953250052%_
                                                         _%tl4953450055%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4948449627%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948449627%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948449627%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g85039_|
                                     _%hd4952750036%_)
                                    (if (gx#stx-pair? _%tl4952850039%_)
                                        (let ((_%e4955649920%_
                                               (gx#syntax-e _%tl4952850039%_)))
                                          (let ((_%tl4955849927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4955649920%_)))
                                                (_%hd4955749924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4955649920%_))))
                                            (if (gx#stx-null? _%tl4955849927%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4952250019%_)
                                                    (let ((_%__splice8007780078%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4952250019%_
                                                            '0)))
                                                      (let ((_%tl4956149933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8007780078%_ '1)))
                    (_%target4955949930%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8007780078%_ '0))))
                (if (gx#stx-null? _%tl4956149933%_)
                    (_%__match8021580216%_
                     _%e4951750002%_
                     _%hd4951850006%_
                     _%tl4951950009%_
                     _%e4952050012%_
                     _%hd4952150016%_
                     _%tl4952250019%_
                     _%e4952350022%_
                     _%hd4952450026%_
                     _%tl4952550029%_
                     _%e4952650032%_
                     _%hd4952750036%_
                     _%tl4952850039%_
                     _%e4955649920%_
                     _%hd4955749924%_
                     _%tl4955849927%_
                     _%__splice8007780078%_
                     _%target4955949930%_
                     _%tl4956149933%_)
                    (let () (declare (not safe)) (_%g4948449627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948449627%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4948449627%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g85040_|
                                         _%hd4952750036%_)
                                        (if (gx#stx-pair? _%tl4952850039%_)
                                            (let ((_%e4958349798%_
                                                   (gx#syntax-e
                                                    _%tl4952850039%_)))
                                              (let ((_%tl4958549805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4958349798%_)))
                                                    (_%hd4958449802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4958349798%_))))
                                                (if (gx#stx-null?
                                                     _%tl4958549805%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4952250019%_)
                                                        (let ((_%__splice8008180082%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4952250019%_
                                                                '0)))
                                                          (let ((_%tl4958849811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8008180082%_ '1)))
                        (_%target4958649808%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8008180082%_ '0))))
                    (if (gx#stx-null? _%tl4958849811%_)
                        (_%__match8025980260%_
                         _%e4951750002%_
                         _%hd4951850006%_
                         _%tl4951950009%_
                         _%e4952050012%_
                         _%hd4952150016%_
                         _%tl4952250019%_
                         _%e4952350022%_
                         _%hd4952450026%_
                         _%tl4952550029%_
                         _%e4952650032%_
                         _%hd4952750036%_
                         _%tl4952850039%_
                         _%e4958349798%_
                         _%hd4958449802%_
                         _%tl4958549805%_
                         _%__splice8008180082%_
                         _%target4958649808%_
                         _%tl4958849811%_)
                        (let () (declare (not safe)) (_%g4948449627%_)))))
                (let () (declare (not safe)) (_%g4948449627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948449627%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948449627%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g85041_|
                                             _%hd4952750036%_)
                                            (if (gx#stx-pair? _%tl4952850039%_)
                                                (let ((_%e4961049674%_
                                                       (gx#syntax-e
                                                        _%tl4952850039%_)))
                                                  (let ((_%tl4961249681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4961049674%_)))
                                                        (_%hd4961149678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4961049674%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4961249681%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4952250019%_)
                                                            (let ((_%__splice8008580086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl4952250019%_
                            '0)))
                      (let ((_%tl4961549687%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8008580086%_ '1)))
                            (_%target4961349684%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8008580086%_ '0))))
                        (if (gx#stx-null? _%tl4961549687%_)
                            (_%__match8030380304%_
                             _%e4951750002%_
                             _%hd4951850006%_
                             _%tl4951950009%_
                             _%e4952050012%_
                             _%hd4952150016%_
                             _%tl4952250019%_
                             _%e4952350022%_
                             _%hd4952450026%_
                             _%tl4952550029%_
                             _%e4952650032%_
                             _%hd4952750036%_
                             _%tl4952850039%_
                             _%e4961049674%_
                             _%hd4961149678%_
                             _%tl4961249681%_
                             _%__splice8008580086%_
                             _%target4961349684%_
                             _%tl4961549687%_)
                            (let () (declare (not safe)) (_%g4948449627%_)))))
                    (let () (declare (not safe)) (_%g4948449627%_)))
                (let () (declare (not safe)) (_%g4948449627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948449627%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948449627%_))))))
                            (let () (declare (not safe)) (_%g4948449627%_)))))
                     (_%__match8012780128%_
                      (lambda (_%e4949050124%_
                               _%hd4949150128%_
                               _%tl4949250131%_
                               _%e4949350134%_
                               _%hd4949450138%_
                               _%tl4949550141%_
                               _%e4949650144%_
                               _%hd4949750148%_
                               _%tl4949850151%_
                               _%e4949950154%_
                               _%hd4950050158%_
                               _%tl4950150161%_
                               _%e4950250164%_
                               _%hd4950350168%_
                               _%tl4950450171%_
                               _%__splice8006980070%_
                               _%target4950550174%_
                               _%tl4950750177%_)
                        (letrec ((_%loop4950850180%_
                                  (lambda (_%hd4950650184%_ _%body4951250187%_)
                                    (if (gx#stx-pair? _%hd4950650184%_)
                                        (let ((_%e4950950190%_
                                               (gx#syntax-e _%hd4950650184%_)))
                                          (let ((_%lp-tl4951150197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4950950190%_)))
                                                (_%lp-hd4951050194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4950950190%_))))
                                            (_%loop4950850180%_
                                             _%lp-tl4951150197%_
                                             (cons _%lp-hd4951050194%_
                                                   _%body4951250187%_))))
                                        (let ((_%body4951350200%_
                                               (reverse _%body4951250187%_)))
                                          (let ((_%L50204%_ _%body4951350200%_)
                                                (_%L50206%_ _%hd4950350168%_)
                                                (_%L50207%_ _%hd4950050158%_)
                                                (_%L50208%_ _%hd4949750148%_))
                                            (if (let ((__tmp85042
                                                       (gx#syntax-local-value
                                                        _%L50206%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp85042))
                                                (_%__kont8006780068%_
                                                 _%L50204%_
                                                 _%L50206%_
                                                 _%L50207%_
                                                 _%L50208%_)
                                                (_%__match8015180152%_
                                                 _%e4949050124%_
                                                 _%hd4949150128%_
                                                 _%tl4949250131%_
                                                 _%e4949350134%_
                                                 _%hd4949450138%_
                                                 _%tl4949550141%_
                                                 _%e4949650144%_
                                                 _%hd4949750148%_
                                                 _%tl4949850151%_
                                                 _%e4949950154%_
                                                 _%hd4950050158%_
                                                 _%tl4950150161%_))))))))
                          (_%loop4950850180%_ _%target4950550174%_ '())))))
                (if (gx#stx-pair? _%__stx8006480065%_)
                    (let ((_%e4949050124%_ (gx#syntax-e _%__stx8006480065%_)))
                      (let ((_%tl4949250131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4949050124%_)))
                            (_%hd4949150128%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4949050124%_))))
                        (if (gx#stx-pair? _%tl4949250131%_)
                            (let ((_%e4949350134%_
                                   (gx#syntax-e _%tl4949250131%_)))
                              (let ((_%tl4949550141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4949350134%_)))
                                    (_%hd4949450138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4949350134%_))))
                                (if (gx#stx-pair? _%hd4949450138%_)
                                    (let ((_%e4949650144%_
                                           (gx#syntax-e _%hd4949450138%_)))
                                      (let ((_%tl4949850151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4949650144%_)))
                                            (_%hd4949750148%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4949650144%_))))
                                        (if (gx#stx-pair? _%tl4949850151%_)
                                            (let ((_%e4949950154%_
                                                   (gx#syntax-e
                                                    _%tl4949850151%_)))
                                              (let ((_%tl4950150161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4949950154%_)))
                                                    (_%hd4950050158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4949950154%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4950150161%_)
                                                    (let ((_%e4950250164%_
                                                           (gx#syntax-e
                                                            _%tl4950150161%_)))
                                                      (let ((_%tl4950450171%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4950250164%_)))
                    (_%hd4950350168%_
                     (let () (declare (not safe)) (##car _%e4950250164%_))))
                (if (gx#stx-null? _%tl4950450171%_)
                    (if (gx#stx-pair/null? _%tl4949550141%_)
                        (let ((_%__splice8006980070%_
                               (gx#syntax-split-splice->vector
                                _%tl4949550141%_
                                '0)))
                          (let ((_%tl4950750177%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8006980070%_ '1)))
                                (_%target4950550174%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8006980070%_ '0))))
                            (if (gx#stx-null? _%tl4950750177%_)
                                (_%__match8012780128%_
                                 _%e4949050124%_
                                 _%hd4949150128%_
                                 _%tl4949250131%_
                                 _%e4949350134%_
                                 _%hd4949450138%_
                                 _%tl4949550141%_
                                 _%e4949650144%_
                                 _%hd4949750148%_
                                 _%tl4949850151%_
                                 _%e4949950154%_
                                 _%hd4950050158%_
                                 _%tl4950150161%_
                                 _%e4950250164%_
                                 _%hd4950350168%_
                                 _%tl4950450171%_
                                 _%__splice8006980070%_
                                 _%target4950550174%_
                                 _%tl4950750177%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4948449627%_)))))
                        (let () (declare (not safe)) (_%g4948449627%_)))
                    (let () (declare (not safe)) (_%g4948449627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948449627%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948449627%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948449627%_)))))
                            (let () (declare (not safe)) (_%g4948449627%_)))))
                    (let () (declare (not safe)) (_%g4948449627%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50698%_)
        (let* ((_%__stx8030680307%_ _%stx50698%_)
               (_%g5070350763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8030680307%_))))
          (let ((_%__kont8030980310%_
                 (lambda (_%L51325%_ _%L51327%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51327%_ '()))
                               (foldr (lambda (_%g5134351346%_ _%g5134451349%_)
                                        (cons _%g5134351346%_ _%g5134451349%_))
                                      '()
                                      _%L51325%_)))))
                (_%__kont8031380314%_
                 (lambda (_%L50911%_ _%L50913%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50913%_)
                       (let* ((_%g5093350940%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50698%_
                                _%L50913%_))
                              (_%E5093550946%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5093350940%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5093651244%_
                               (lambda (_%parts50950%_ _%var50952%_)
                                 (let ((_%$e50954%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50952%_))))
                                   (if _%$e50954%_
                                       ((lambda (_%te50958%_)
                                          (let _%loop50961%_ ((_%parts50964%_
                                                               _%parts50950%_)
                                                              (_%type50966%_
                                                               (##direct-structure-ref
                                                                _%te50958%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50967%_
                                                               _%var50952%_)
                                                              (_%checked-method?50968%_
                                                               (##direct-structure-ref
                                                                _%te50958%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50969%_
                                                               '#f))
                                            (let* ((_%parts5097050978%_
                                                    _%parts50964%_)
                                                   (_%else5097251039%_
                                                    (lambda ()
                                                      (let* ((_%g5099050998%_
                                                              (lambda (_%g5099150994%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5099150994%_)))
                     (_%g5098951035%_
                      (lambda (_%g5099151002%_)
                        ((lambda (_%L51005%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L51005%_
                                       (foldr (lambda (_%g5102651029%_
                                                       _%g5102751032%_)
                                                (cons _%g5102651029%_
                                                      _%g5102751032%_))
                                              '()
                                              _%L50911%_))))
                         _%g5099151002%_))))
                (_%g5098951035%_ _%object50967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5097451218%_
                                                    (lambda (_%rest51043%_
                                                             _%part51045%_)
                                                      (if (and (not _%nil-check?50969%_)
                                                               (let ((__tmp85043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51045%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp85043)))
                  (let ((_%str51049%_ (symbol->string _%part51045%_)))
                    (_%loop50961%_
                     (cons (let ((__tmp85044
                                  (substring
                                   _%str51049%_
                                   '1
                                   (string-length _%str51049%_))))
                             (declare (not safe))
                             (##string->symbol __tmp85044))
                           _%rest51043%_)
                     _%type50966%_
                     _%object50967%_
                     _%checked-method?50968%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50966%_))
                      (let* ((_%g5105451069%_
                              (lambda (_%g5105551065%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5105551065%_)))
                             (_%g5105351138%_
                              (lambda (_%g5105551073%_)
                                (if (gx#stx-pair? _%g5105551073%_)
                                    (let ((_%e5105851076%_
                                           (gx#syntax-e _%g5105551073%_)))
                                      (let ((_%hd5105951080%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5105851076%_)))
                                            (_%tl5106051083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5105851076%_))))
                                        (if (gx#stx-pair? _%tl5106051083%_)
                                            (let ((_%e5106151086%_
                                                   (gx#syntax-e
                                                    _%tl5106051083%_)))
                                              (let ((_%hd5106251090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5106151086%_)))
                                                    (_%tl5106351093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5106151086%_))))
                                                (if (gx#stx-null?
                                                     _%tl5106351093%_)
                                                    ((lambda (_%L51096%_
                                                              _%L51098%_)
                                                       (if (null? _%rest51043%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51096%_ (cons _%L51098%_ '()))
                               (foldr (lambda (_%g5111751120%_ _%g5111851123%_)
                                        (cons _%g5111751120%_ _%g5111851123%_))
                                      '()
                                      _%L50911%_)))
                   (let ((_%$e51126%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50966%_
                           _%part51045%_)))
                     (if _%$e51126%_
                         ((lambda (_%slot-type51130%_)
                            (let ((_%slot-type51133%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50698%_
                                      _%slot-type51130%_))))
                              (_%loop50961%_
                               _%rest51043%_
                               _%slot-type51133%_
                               (cons _%L51096%_ (cons _%L51098%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50966%_
                                _%part51045%_)
                               '#f)))
                          _%$e51126%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50698%_
                          _%L50913%_
                          _%part51045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5106251090%_
                                                     _%hd5105951080%_)
                                                    (_%g5105451069%_
                                                     _%g5105551073%_))))
                                            (_%g5105451069%_
                                             _%g5105551073%_))))
                                    (_%g5105451069%_ _%g5105551073%_)))))
                        (_%g5105351138%_
                         (list (if _%nil-check?50969%_
                                   (cons 'check-nil!
                                         (cons _%object50967%_ '()))
                                   _%object50967%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50698%_
                                _%type50966%_
                                _%part51045%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50966%_))
                          (if (null? _%rest51043%_)
                              (let* ((_%g5114451159%_
                                      (lambda (_%g5114551155%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5114551155%_)))
                                     (_%g5114351212%_
                                      (lambda (_%g5114551163%_)
                                        (if (gx#stx-pair? _%g5114551163%_)
                                            (let ((_%e5114851166%_
                                                   (gx#syntax-e
                                                    _%g5114551163%_)))
                                              (let ((_%hd5114951170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5114851166%_)))
                                                    (_%tl5115051173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5114851166%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5115051173%_)
                                                    (let ((_%e5115151176%_
                                                           (gx#syntax-e
                                                            _%tl5115051173%_)))
                                                      (let ((_%hd5115251180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5115151176%_)))
                    (_%tl5115351183%_
                     (let () (declare (not safe)) (##cdr _%e5115151176%_))))
                (if (gx#stx-null? _%tl5115351183%_)
                    ((lambda (_%L51186%_ _%L51188%_)
                       (cons _%L51186%_
                             (cons _%L51188%_
                                   (foldr (lambda (_%g5120351206%_
                                                   _%g5120451209%_)
                                            (cons _%g5120351206%_
                                                  _%g5120451209%_))
                                          '()
                                          _%L50911%_))))
                     _%hd5115251180%_
                     _%hd5114951170%_)
                    (_%g5114451159%_ _%g5114551163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5114451159%_
                                                     _%g5114551163%_))))
                                            (_%g5114451159%_
                                             _%g5114551163%_)))))
                                (_%g5114351212%_
                                 (list (if _%nil-check?50969%_
                                           (cons 'check-nil!
                                                 (cons _%object50967%_ '()))
                                           _%object50967%_)
                                       (gx#stx-identifier
                                        _%L50913%_
                                        (if _%checked-method?50968%_ '"" '"&")
                                        (let ((__obj84856 _%type50966%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj84856
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj84856
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj84856
                                               'name)))
                                        '"-"
                                        _%part51045%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50698%_
                               _%L50913%_
                               _%part51045%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50698%_
                           _%type50966%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5097050978%_)
                                                  (let ((_%hd5097551222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5097050978%_)))
                                                        (_%tl5097651225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5097050978%_))))
                                                    (let* ((_%part51228%_
                                                            _%hd5097551222%_)
                                                           (_%rest51231%_
                                                            _%tl5097651225%_))
                                                      (_%K5097451218%_
                                                       _%rest51231%_
                                                       _%part51228%_)))
                                                  (_%else5097251039%_)))))
                                        _%$e50954%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50913%_
                                                   (foldr (lambda (_%g5123551238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5123651241%_)
                    (cons _%g5123551238%_ _%g5123651241%_))
                  '()
                  _%L50911%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5093350940%_)
                             (let ((_%hd5093751248%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5093350940%_)))
                                   (_%tl5093851251%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5093350940%_))))
                               (let* ((_%var51254%_ _%hd5093751248%_)
                                      (_%parts51257%_ _%tl5093851251%_))
                                 (_%K5093651244%_
                                  _%parts51257%_
                                  _%var51254%_)))
                             (_%E5093550946%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50913%_
                                   (foldr (lambda (_%g5125951262%_
                                                   _%g5126051265%_)
                                            (cons _%g5125951262%_
                                                  _%g5126051265%_))
                                          '()
                                          _%L50911%_))))))
                (_%__kont8031780318%_
                 (lambda (_%L50810%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5082550828%_ _%g5082650831%_)
                                  (cons _%g5082550828%_ _%g5082650831%_))
                                '()
                                _%L50810%_)))))
            (let* ((_%__match8039380394%_
                    (lambda (_%e5074650770%_
                             _%hd5074750774%_
                             _%tl5074850777%_
                             _%__splice8031980320%_
                             _%target5074950780%_
                             _%tl5075150783%_)
                      (letrec ((_%loop5075250786%_
                                (lambda (_%hd5075050790%_ _%arg5075650793%_)
                                  (if (gx#stx-pair? _%hd5075050790%_)
                                      (let ((_%e5075350796%_
                                             (gx#syntax-e _%hd5075050790%_)))
                                        (let ((_%lp-tl5075550803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5075350796%_)))
                                              (_%lp-hd5075450800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5075350796%_))))
                                          (_%loop5075250786%_
                                           _%lp-tl5075550803%_
                                           (cons _%lp-hd5075450800%_
                                                 _%arg5075650793%_))))
                                      (let ((_%arg5075750806%_
                                             (reverse _%arg5075650793%_)))
                                        (_%__kont8031780318%_
                                         _%arg5075750806%_))))))
                        (_%loop5075250786%_ _%target5074950780%_ '()))))
                   (_%__match8037980380%_
                    (lambda (_%e5072450841%_
                             _%hd5072550845%_
                             _%tl5072650848%_
                             _%e5072750851%_
                             _%hd5072850855%_
                             _%tl5072950858%_
                             _%e5073050861%_
                             _%hd5073150865%_
                             _%tl5073250868%_
                             _%e5073350871%_
                             _%hd5073450875%_
                             _%tl5073550878%_
                             _%__splice8031580316%_
                             _%target5073650881%_
                             _%tl5073850884%_)
                      (letrec ((_%loop5073950887%_
                                (lambda (_%hd5073750891%_ _%rand5074350894%_)
                                  (if (gx#stx-pair? _%hd5073750891%_)
                                      (let ((_%e5074050897%_
                                             (gx#syntax-e _%hd5073750891%_)))
                                        (let ((_%lp-tl5074250904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5074050897%_)))
                                              (_%lp-hd5074150901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5074050897%_))))
                                          (_%loop5073950887%_
                                           _%lp-tl5074250904%_
                                           (cons _%lp-hd5074150901%_
                                                 _%rand5074350894%_))))
                                      (let ((_%rand5074450907%_
                                             (reverse _%rand5074350894%_)))
                                        (_%__kont8031380314%_
                                         _%rand5074450907%_
                                         _%hd5073450875%_))))))
                        (_%loop5073950887%_ _%target5073650881%_ '()))))
                   (_%__match8035380354%_
                    (lambda (_%e5072450841%_
                             _%hd5072550845%_
                             _%tl5072650848%_
                             _%e5072750851%_
                             _%hd5072850855%_
                             _%tl5072950858%_)
                      (if (gx#stx-pair? _%hd5072850855%_)
                          (let ((_%e5073050861%_
                                 (gx#syntax-e _%hd5072850855%_)))
                            (let ((_%tl5073250868%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5073050861%_)))
                                  (_%hd5073150865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5073050861%_))))
                              (if (gx#identifier? _%hd5073150865%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g85045_|
                                       _%hd5073150865%_)
                                      (if (gx#stx-pair? _%tl5073250868%_)
                                          (let ((_%e5073350871%_
                                                 (gx#syntax-e
                                                  _%tl5073250868%_)))
                                            (let ((_%tl5073550878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5073350871%_)))
                                                  (_%hd5073450875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5073350871%_))))
                                              (if (gx#stx-null?
                                                   _%tl5073550878%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5072950858%_)
                                                      (let ((_%__splice8031580316%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5072950858%_
                                                              '0)))
                                                        (let ((_%tl5073850884%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8031580316%_ '1)))
                      (_%target5073650881%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8031580316%_ '0))))
                  (if (gx#stx-null? _%tl5073850884%_)
                      (_%__match8037980380%_
                       _%e5072450841%_
                       _%hd5072550845%_
                       _%tl5072650848%_
                       _%e5072750851%_
                       _%hd5072850855%_
                       _%tl5072950858%_
                       _%e5073050861%_
                       _%hd5073150865%_
                       _%tl5073250868%_
                       _%e5073350871%_
                       _%hd5073450875%_
                       _%tl5073550878%_
                       _%__splice8031580316%_
                       _%target5073650881%_
                       _%tl5073850884%_)
                      (if (gx#stx-pair/null? _%tl5072650848%_)
                          (let ((_%__splice8031980320%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5072650848%_
                                  '0)))
                            (let ((_%tl5075150783%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8031980320%_ '1)))
                                  (_%target5074950780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8031980320%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075150783%_)
                                  (_%__match8039380394%_
                                   _%e5072450841%_
                                   _%hd5072550845%_
                                   _%tl5072650848%_
                                   _%__splice8031980320%_
                                   _%target5074950780%_
                                   _%tl5075150783%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070350763%_)))))
                          (let () (declare (not safe)) (_%g5070350763%_))))))
              (if (gx#stx-pair/null? _%tl5072650848%_)
                  (let ((_%__splice8031980320%_
                         (gx#syntax-split-splice->vector _%tl5072650848%_ '0)))
                    (let ((_%tl5075150783%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '1)))
                          (_%target5074950780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '0))))
                      (if (gx#stx-null? _%tl5075150783%_)
                          (_%__match8039380394%_
                           _%e5072450841%_
                           _%hd5072550845%_
                           _%tl5072650848%_
                           _%__splice8031980320%_
                           _%target5074950780%_
                           _%tl5075150783%_)
                          (let () (declare (not safe)) (_%g5070350763%_)))))
                  (let () (declare (not safe)) (_%g5070350763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5072650848%_)
                                                      (let ((_%__splice8031980320%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5072650848%_
                                                              '0)))
                                                        (let ((_%tl5075150783%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8031980320%_ '1)))
                      (_%target5074950780%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8031980320%_ '0))))
                  (if (gx#stx-null? _%tl5075150783%_)
                      (_%__match8039380394%_
                       _%e5072450841%_
                       _%hd5072550845%_
                       _%tl5072650848%_
                       _%__splice8031980320%_
                       _%target5074950780%_
                       _%tl5075150783%_)
                      (let () (declare (not safe)) (_%g5070350763%_)))))
              (let () (declare (not safe)) (_%g5070350763%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5072650848%_)
                                              (let ((_%__splice8031980320%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5072650848%_
                                                      '0)))
                                                (let ((_%tl5075150783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8031980320%_
                                                          '1)))
                                                      (_%target5074950780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8031980320%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5075150783%_)
                                                      (_%__match8039380394%_
                                                       _%e5072450841%_
                                                       _%hd5072550845%_
                                                       _%tl5072650848%_
                                                       _%__splice8031980320%_
                                                       _%target5074950780%_
                                                       _%tl5075150783%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5070350763%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070350763%_))))
                                      (if (gx#stx-pair/null? _%tl5072650848%_)
                                          (let ((_%__splice8031980320%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5072650848%_
                                                  '0)))
                                            (let ((_%tl5075150783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8031980320%_
                                                      '1)))
                                                  (_%target5074950780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8031980320%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075150783%_)
                                                  (_%__match8039380394%_
                                                   _%e5072450841%_
                                                   _%hd5072550845%_
                                                   _%tl5072650848%_
                                                   _%__splice8031980320%_
                                                   _%target5074950780%_
                                                   _%tl5075150783%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070350763%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070350763%_))))
                                  (if (gx#stx-pair/null? _%tl5072650848%_)
                                      (let ((_%__splice8031980320%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5072650848%_
                                              '0)))
                                        (let ((_%tl5075150783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8031980320%_
                                                  '1)))
                                              (_%target5074950780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8031980320%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5075150783%_)
                                              (_%__match8039380394%_
                                               _%e5072450841%_
                                               _%hd5072550845%_
                                               _%tl5072650848%_
                                               _%__splice8031980320%_
                                               _%target5074950780%_
                                               _%tl5075150783%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070350763%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070350763%_))))))
                          (if (gx#stx-pair/null? _%tl5072650848%_)
                              (let ((_%__splice8031980320%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5072650848%_
                                      '0)))
                                (let ((_%tl5075150783%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '1)))
                                      (_%target5074950780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075150783%_)
                                      (_%__match8039380394%_
                                       _%e5072450841%_
                                       _%hd5072550845%_
                                       _%tl5072650848%_
                                       _%__splice8031980320%_
                                       _%target5074950780%_
                                       _%tl5075150783%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070350763%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070350763%_))))))
                   (_%__match8034180342%_
                    (lambda (_%e5070751275%_
                             _%hd5070851279%_
                             _%tl5070951282%_
                             _%e5071051285%_
                             _%hd5071151289%_
                             _%tl5071251292%_
                             _%__splice8031180312%_
                             _%target5071351295%_
                             _%tl5071551298%_)
                      (letrec ((_%loop5071651301%_
                                (lambda (_%hd5071451305%_ _%rand5072051308%_)
                                  (if (gx#stx-pair? _%hd5071451305%_)
                                      (let ((_%e5071751311%_
                                             (gx#syntax-e _%hd5071451305%_)))
                                        (let ((_%lp-tl5071951318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5071751311%_)))
                                              (_%lp-hd5071851315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5071751311%_))))
                                          (_%loop5071651301%_
                                           _%lp-tl5071951318%_
                                           (cons _%lp-hd5071851315%_
                                                 _%rand5072051308%_))))
                                      (let ((_%rand5072151321%_
                                             (reverse _%rand5072051308%_)))
                                        (let ((_%L51325%_ _%rand5072151321%_)
                                              (_%L51327%_ _%hd5071151289%_))
                                          (if (gx#identifier? _%L51327%_)
                                              (_%__kont8030980310%_
                                               _%L51325%_
                                               _%L51327%_)
                                              (_%__match8035380354%_
                                               _%e5070751275%_
                                               _%hd5070851279%_
                                               _%tl5070951282%_
                                               _%e5071051285%_
                                               _%hd5071151289%_
                                               _%tl5071251292%_))))))))
                        (_%loop5071651301%_ _%target5071351295%_ '())))))
              (if (gx#stx-pair? _%__stx8030680307%_)
                  (let ((_%e5070751275%_ (gx#syntax-e _%__stx8030680307%_)))
                    (let ((_%tl5070951282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5070751275%_)))
                          (_%hd5070851279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5070751275%_))))
                      (if (gx#stx-pair? _%tl5070951282%_)
                          (let ((_%e5071051285%_
                                 (gx#syntax-e _%tl5070951282%_)))
                            (let ((_%tl5071251292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5071051285%_)))
                                  (_%hd5071151289%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5071051285%_))))
                              (if (gx#stx-pair/null? _%tl5071251292%_)
                                  (let ((_%__splice8031180312%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5071251292%_
                                          '0)))
                                    (let ((_%tl5071551298%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8031180312%_
                                              '1)))
                                          (_%target5071351295%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8031180312%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5071551298%_)
                                          (_%__match8034180342%_
                                           _%e5070751275%_
                                           _%hd5070851279%_
                                           _%tl5070951282%_
                                           _%e5071051285%_
                                           _%hd5071151289%_
                                           _%tl5071251292%_
                                           _%__splice8031180312%_
                                           _%target5071351295%_
                                           _%tl5071551298%_)
                                          (if (gx#stx-pair? _%hd5071151289%_)
                                              (let ((_%e5073050861%_
                                                     (gx#syntax-e
                                                      _%hd5071151289%_)))
                                                (let ((_%tl5073250868%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5073050861%_)))
                                                      (_%hd5073150865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5073050861%_))))
                                                  (if (gx#identifier?
                                                       _%hd5073150865%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g85045_|
                                                           _%hd5073150865%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5073250868%_)
                                                              (let ((_%e5073350871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5073250868%_)))
                        (let ((_%tl5073550878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5073350871%_)))
                              (_%hd5073450875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5073350871%_))))
                          (if (gx#stx-pair/null? _%tl5070951282%_)
                              (let ((_%__splice8031980320%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5070951282%_
                                      '0)))
                                (let ((_%tl5075150783%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '1)))
                                      (_%target5074950780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075150783%_)
                                      (_%__match8039380394%_
                                       _%e5070751275%_
                                       _%hd5070851279%_
                                       _%tl5070951282%_
                                       _%__splice8031980320%_
                                       _%target5074950780%_
                                       _%tl5075150783%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070350763%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070350763%_)))))
                      (if (gx#stx-pair/null? _%tl5070951282%_)
                          (let ((_%__splice8031980320%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5070951282%_
                                  '0)))
                            (let ((_%tl5075150783%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8031980320%_ '1)))
                                  (_%target5074950780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8031980320%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075150783%_)
                                  (_%__match8039380394%_
                                   _%e5070751275%_
                                   _%hd5070851279%_
                                   _%tl5070951282%_
                                   _%__splice8031980320%_
                                   _%target5074950780%_
                                   _%tl5075150783%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070350763%_)))))
                          (let () (declare (not safe)) (_%g5070350763%_))))
                  (if (gx#stx-pair/null? _%tl5070951282%_)
                      (let ((_%__splice8031980320%_
                             (gx#syntax-split-splice->vector
                              _%tl5070951282%_
                              '0)))
                        (let ((_%tl5075150783%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8031980320%_ '1)))
                              (_%target5074950780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8031980320%_ '0))))
                          (if (gx#stx-null? _%tl5075150783%_)
                              (_%__match8039380394%_
                               _%e5070751275%_
                               _%hd5070851279%_
                               _%tl5070951282%_
                               _%__splice8031980320%_
                               _%target5074950780%_
                               _%tl5075150783%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070350763%_)))))
                      (let () (declare (not safe)) (_%g5070350763%_))))
              (if (gx#stx-pair/null? _%tl5070951282%_)
                  (let ((_%__splice8031980320%_
                         (gx#syntax-split-splice->vector _%tl5070951282%_ '0)))
                    (let ((_%tl5075150783%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '1)))
                          (_%target5074950780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '0))))
                      (if (gx#stx-null? _%tl5075150783%_)
                          (_%__match8039380394%_
                           _%e5070751275%_
                           _%hd5070851279%_
                           _%tl5070951282%_
                           _%__splice8031980320%_
                           _%target5074950780%_
                           _%tl5075150783%_)
                          (let () (declare (not safe)) (_%g5070350763%_)))))
                  (let () (declare (not safe)) (_%g5070350763%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5070951282%_)
                                                  (let ((_%__splice8031980320%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5070951282%_
                                                          '0)))
                                                    (let ((_%tl5075150783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8031980320%_
                                                              '1)))
                                                          (_%target5074950780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8031980320%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075150783%_)
                                                          (_%__match8039380394%_
                                                           _%e5070751275%_
                                                           _%hd5070851279%_
                                                           _%tl5070951282%_
                                                           _%__splice8031980320%_
                                                           _%target5074950780%_
                                                           _%tl5075150783%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070350763%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070350763%_)))))))
                                  (if (gx#stx-pair? _%hd5071151289%_)
                                      (let ((_%e5073050861%_
                                             (gx#syntax-e _%hd5071151289%_)))
                                        (let ((_%tl5073250868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073050861%_)))
                                              (_%hd5073150865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073050861%_))))
                                          (if (gx#identifier? _%hd5073150865%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g85045_|
                                                   _%hd5073150865%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5073250868%_)
                                                      (let ((_%e5073350871%_
                                                             (gx#syntax-e
                                                              _%tl5073250868%_)))
                                                        (let ((_%tl5073550878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5073350871%_)))
                      (_%hd5073450875%_
                       (let () (declare (not safe)) (##car _%e5073350871%_))))
                  (if (gx#stx-pair/null? _%tl5070951282%_)
                      (let ((_%__splice8031980320%_
                             (gx#syntax-split-splice->vector
                              _%tl5070951282%_
                              '0)))
                        (let ((_%tl5075150783%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8031980320%_ '1)))
                              (_%target5074950780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8031980320%_ '0))))
                          (if (gx#stx-null? _%tl5075150783%_)
                              (_%__match8039380394%_
                               _%e5070751275%_
                               _%hd5070851279%_
                               _%tl5070951282%_
                               _%__splice8031980320%_
                               _%target5074950780%_
                               _%tl5075150783%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070350763%_)))))
                      (let () (declare (not safe)) (_%g5070350763%_)))))
              (if (gx#stx-pair/null? _%tl5070951282%_)
                  (let ((_%__splice8031980320%_
                         (gx#syntax-split-splice->vector _%tl5070951282%_ '0)))
                    (let ((_%tl5075150783%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '1)))
                          (_%target5074950780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8031980320%_ '0))))
                      (if (gx#stx-null? _%tl5075150783%_)
                          (_%__match8039380394%_
                           _%e5070751275%_
                           _%hd5070851279%_
                           _%tl5070951282%_
                           _%__splice8031980320%_
                           _%target5074950780%_
                           _%tl5075150783%_)
                          (let () (declare (not safe)) (_%g5070350763%_)))))
                  (let () (declare (not safe)) (_%g5070350763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5070951282%_)
                                                      (let ((_%__splice8031980320%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5070951282%_
                                                              '0)))
                                                        (let ((_%tl5075150783%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8031980320%_ '1)))
                      (_%target5074950780%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8031980320%_ '0))))
                  (if (gx#stx-null? _%tl5075150783%_)
                      (_%__match8039380394%_
                       _%e5070751275%_
                       _%hd5070851279%_
                       _%tl5070951282%_
                       _%__splice8031980320%_
                       _%target5074950780%_
                       _%tl5075150783%_)
                      (let () (declare (not safe)) (_%g5070350763%_)))))
              (let () (declare (not safe)) (_%g5070350763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5070951282%_)
                                                  (let ((_%__splice8031980320%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5070951282%_
                                                          '0)))
                                                    (let ((_%tl5075150783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8031980320%_
                                                              '1)))
                                                          (_%target5074950780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8031980320%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075150783%_)
                                                          (_%__match8039380394%_
                                                           _%e5070751275%_
                                                           _%hd5070851279%_
                                                           _%tl5070951282%_
                                                           _%__splice8031980320%_
                                                           _%target5074950780%_
                                                           _%tl5075150783%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070350763%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070350763%_))))))
                                      (if (gx#stx-pair/null? _%tl5070951282%_)
                                          (let ((_%__splice8031980320%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5070951282%_
                                                  '0)))
                                            (let ((_%tl5075150783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8031980320%_
                                                      '1)))
                                                  (_%target5074950780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8031980320%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075150783%_)
                                                  (_%__match8039380394%_
                                                   _%e5070751275%_
                                                   _%hd5070851279%_
                                                   _%tl5070951282%_
                                                   _%__splice8031980320%_
                                                   _%target5074950780%_
                                                   _%tl5075150783%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070350763%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070350763%_)))))))
                          (if (gx#stx-pair/null? _%tl5070951282%_)
                              (let ((_%__splice8031980320%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5070951282%_
                                      '0)))
                                (let ((_%tl5075150783%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '1)))
                                      (_%target5074950780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8031980320%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075150783%_)
                                      (_%__match8039380394%_
                                       _%e5070751275%_
                                       _%hd5070851279%_
                                       _%tl5070951282%_
                                       _%__splice8031980320%_
                                       _%target5074950780%_
                                       _%tl5075150783%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070350763%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070350763%_))))))
                  (let () (declare (not safe)) (_%g5070350763%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51359%_)
        (let* ((_%__stx8039680397%_ _%stx51359%_)
               (_%g5136351384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8039680397%_))))
          (let ((_%__kont8039980400%_
                 (lambda (_%L51452%_)
                   (let* ((_%g5146451471%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51359%_
                            _%L51452%_))
                          (_%E5146651477%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5146451471%_
                                    '([var . parts]))
                             (void)))
                          (_%K5146751693%_
                           (lambda (_%parts51481%_ _%var51483%_)
                             (let ((_%$e51485%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51483%_))))
                               (if _%$e51485%_
                                   ((lambda (_%te51489%_)
                                      (let _%loop51492%_ ((_%parts51495%_
                                                           _%parts51481%_)
                                                          (_%type51497%_
                                                           (##direct-structure-ref
                                                            _%te51489%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51498%_
                                                           _%var51483%_)
                                                          (_%nil-check?51499%_
                                                           '#f))
                                        (let* ((_%parts5150051508%_
                                                _%parts51495%_)
                                               (_%else5150251520%_
                                                (lambda () _%object51498%_))
                                               (_%K5150451675%_
                                                (lambda (_%rest51524%_
                                                         _%part51526%_)
                                                  (if (and (not _%nil-check?51499%_)
                                                           (let ((__tmp85046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51526%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp85046)))
              (let ((_%str51530%_ (symbol->string _%part51526%_)))
                (_%loop51492%_
                 (cons (let ((__tmp85047
                              (substring
                               _%str51530%_
                               '1
                               (string-length _%str51530%_))))
                         (declare (not safe))
                         (##string->symbol __tmp85047))
                       _%rest51524%_)
                 _%type51497%_
                 _%object51498%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51497%_))
                  (let* ((_%g5153551550%_
                          (lambda (_%g5153651546%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5153651546%_)))
                         (_%g5153451667%_
                          (lambda (_%g5153651554%_)
                            (if (gx#stx-pair? _%g5153651554%_)
                                (let ((_%e5153951557%_
                                       (gx#syntax-e _%g5153651554%_)))
                                  (let ((_%hd5154051561%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5153951557%_)))
                                        (_%tl5154151564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5153951557%_))))
                                    (if (gx#stx-pair? _%tl5154151564%_)
                                        (let ((_%e5154251567%_
                                               (gx#syntax-e _%tl5154151564%_)))
                                          (let ((_%hd5154351571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5154251567%_)))
                                                (_%tl5154451574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5154251567%_))))
                                            (if (gx#stx-null? _%tl5154451574%_)
                                                ((lambda (_%L51577%_
                                                          _%L51579%_)
                                                   (if (null? _%rest51524%_)
                                                       (let ((_%$e51609%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51497%_
                                                               _%part51526%_)))
                                                         (if _%$e51609%_
                                                             ((lambda (_%slot-type51613%_)
                                                                (let* ((_%g5161651624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5161751620%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5161751620%_)))
                               (_%g5161551647%_
                                (lambda (_%g5161751628%_)
                                  ((lambda (_%L51631%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51631%_ '()))
                                                 (cons (cons _%L51577%_
                                                             (cons _%L51579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5161751628%_))))
                          (_%g5161551647%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51359%_
                              _%slot-type51613%_)))))
                      _%$e51609%_)
                     (if _%nil-check?51499%_
                         (cons _%L51577%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51579%_ '()))
                                     '()))
                         (cons _%L51577%_ (cons _%L51579%_ '())))))
               (let ((_%$e51655%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51497%_
                       _%part51526%_)))
                 (if _%$e51655%_
                     ((lambda (_%type51659%_)
                        (let ((_%type51662%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51359%_
                                  _%type51659%_))))
                          (if _%nil-check?51499%_
                              (_%loop51492%_
                               _%rest51524%_
                               _%type51662%_
                               (cons _%L51577%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51579%_ '()))
                                           '()))
                               '#f)
                              (_%loop51492%_
                               _%rest51524%_
                               _%type51662%_
                               (cons _%L51577%_ (cons _%L51579%_ '()))
                               '#f))))
                      _%$e51655%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51359%_
                      _%L51452%_
                      _%part51526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5154351571%_
                                                 _%hd5154051561%_)
                                                (_%g5153551550%_
                                                 _%g5153651554%_))))
                                        (_%g5153551550%_ _%g5153651554%_))))
                                (_%g5153551550%_ _%g5153651554%_)))))
                    (_%g5153451667%_
                     (list (if _%nil-check?51499%_
                               (cons 'check-nil! (cons _%object51498%_ '()))
                               _%object51498%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51359%_
                            _%type51497%_
                            _%part51526%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51497%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51359%_
                       _%type51497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5150051508%_)
                                              (let ((_%hd5150551679%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5150051508%_)))
                                                    (_%tl5150651682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5150051508%_))))
                                                (let* ((_%part51685%_
                                                        _%hd5150551679%_)
                                                       (_%rest51688%_
                                                        _%tl5150651682%_))
                                                  (_%K5150451675%_
                                                   _%rest51688%_
                                                   _%part51685%_)))
                                              (_%else5150251520%_)))))
                                    _%$e51485%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51452%_ '())))))))
                     (if (pair? _%g5146451471%_)
                         (let ((_%hd5146851697%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5146451471%_)))
                               (_%tl5146951700%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5146451471%_))))
                           (let* ((_%var51703%_ _%hd5146851697%_)
                                  (_%parts51706%_ _%tl5146951700%_))
                             (_%K5146751693%_ _%parts51706%_ _%var51703%_)))
                         (_%E5146651477%_)))))
                (_%__kont8040180402%_
                 (lambda (_%L51411%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51411%_ '())))))
            (let ((_%__match8041780418%_
                   (lambda (_%e5136651432%_
                            _%hd5136751436%_
                            _%tl5136851439%_
                            _%e5136951442%_
                            _%hd5137051446%_
                            _%tl5137151449%_)
                     (let ((_%L51452%_ _%hd5137051446%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51452%_)
                           (_%__kont8039980400%_ _%L51452%_)
                           (_%__kont8040180402%_ _%hd5137051446%_))))))
              (if (gx#stx-pair? _%__stx8039680397%_)
                  (let ((_%e5136651432%_ (gx#syntax-e _%__stx8039680397%_)))
                    (let ((_%tl5136851439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5136651432%_)))
                          (_%hd5136751436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5136651432%_))))
                      (if (gx#stx-pair? _%tl5136851439%_)
                          (let ((_%e5136951442%_
                                 (gx#syntax-e _%tl5136851439%_)))
                            (let ((_%tl5137151449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5136951442%_)))
                                  (_%hd5137051446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5136951442%_))))
                              (if (gx#stx-null? _%tl5137151449%_)
                                  (_%__match8041780418%_
                                   _%e5136651432%_
                                   _%hd5136751436%_
                                   _%tl5136851439%_
                                   _%e5136951442%_
                                   _%hd5137051446%_
                                   _%tl5137151449%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5136351384%_)))))
                          (let () (declare (not safe)) (_%g5136351384%_)))))
                  (let () (declare (not safe)) (_%g5136351384%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51713%_)
        (let* ((_%__stx8043480435%_ _%stx51713%_)
               (_%g5171751746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8043480435%_))))
          (let ((_%__kont8043780438%_
                 (lambda (_%L51838%_ _%L51840%_)
                   (let* ((_%g5185451861%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51713%_
                            _%L51840%_))
                          (_%E5185651867%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5185451861%_
                                    '([var . parts]))
                             (void)))
                          (_%K5185752097%_
                           (lambda (_%parts51871%_ _%var51873%_)
                             (let ((_%$e51875%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51873%_))))
                               (if _%$e51875%_
                                   ((lambda (_%te51879%_)
                                      (let _%loop51882%_ ((_%parts51885%_
                                                           _%parts51871%_)
                                                          (_%type51887%_
                                                           (##direct-structure-ref
                                                            _%te51879%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51888%_
                                                           _%var51873%_)
                                                          (_%checked-mutator?51889%_
                                                           (##direct-structure-ref
                                                            _%te51879%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51890%_
                                                           '#f))
                                        (let* ((_%parts5189151898%_
                                                _%parts51885%_)
                                               (_%E5189351904%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5189151898%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5189452079%_
                                                (lambda (_%rest51908%_
                                                         _%part51910%_)
                                                  (if (and (not _%nil-check?51890%_)
                                                           (let ((__tmp85048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51910%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp85048)))
              (let ((_%str51914%_ (symbol->string _%part51910%_)))
                (_%loop51882%_
                 (cons (let ((__tmp85049
                              (substring
                               _%str51914%_
                               '1
                               (string-length _%str51914%_))))
                         (declare (not safe))
                         (##string->symbol __tmp85049))
                       _%rest51908%_)
                 _%type51887%_
                 _%object51888%_
                 _%checked-mutator?51889%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51887%_))
                  (if (null? _%rest51908%_)
                      (let* ((_%g5192151936%_
                              (lambda (_%g5192251932%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5192251932%_)))
                             (_%g5192051993%_
                              (lambda (_%g5192251940%_)
                                (if (gx#stx-pair? _%g5192251940%_)
                                    (let ((_%e5192551943%_
                                           (gx#syntax-e _%g5192251940%_)))
                                      (let ((_%hd5192651947%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5192551943%_)))
                                            (_%tl5192751950%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5192551943%_))))
                                        (if (gx#stx-pair? _%tl5192751950%_)
                                            (let ((_%e5192851953%_
                                                   (gx#syntax-e
                                                    _%tl5192751950%_)))
                                              (let ((_%hd5192951957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5192851953%_)))
                                                    (_%tl5193051960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5192851953%_))))
                                                (if (gx#stx-null?
                                                     _%tl5193051960%_)
                                                    ((lambda (_%L51963%_
                                                              _%L51965%_)
                                                       (if _%nil-check?51890%_
                                                           (cons _%L51963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51965%_ '()))
                               (cons _%L51838%_ '())))
                   (cons _%L51963%_ (cons _%L51965%_ (cons _%L51838%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5192951957%_
                                                     _%hd5192651947%_)
                                                    (_%g5192151936%_
                                                     _%g5192251940%_))))
                                            (_%g5192151936%_
                                             _%g5192251940%_))))
                                    (_%g5192151936%_ _%g5192251940%_)))))
                        (_%g5192051993%_
                         (list _%object51888%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51713%_
                                _%type51887%_
                                _%part51910%_
                                (if _%checked-mutator?51889%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51887%_
                                     _%part51910%_)
                                    '#f)))))
                      (let ((_%$e51997%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51887%_
                              _%part51910%_)))
                        (if _%$e51997%_
                            ((lambda (_%type52001%_)
                               (let* ((_%type52004%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51713%_
                                          _%type52001%_)))
                                      (_%g5200752022%_
                                       (lambda (_%g5200852018%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5200852018%_)))
                                      (_%g5200652069%_
                                       (lambda (_%g5200852026%_)
                                         (if (gx#stx-pair? _%g5200852026%_)
                                             (let ((_%e5201152029%_
                                                    (gx#syntax-e
                                                     _%g5200852026%_)))
                                               (let ((_%hd5201252033%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5201152029%_)))
                                                     (_%tl5201352036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5201152029%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5201352036%_)
                                                     (let ((_%e5201452039%_
                                                            (gx#syntax-e
                                                             _%tl5201352036%_)))
                                                       (let ((_%hd5201552043%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5201452039%_)))
                     (_%tl5201652046%_
                      (let () (declare (not safe)) (##cdr _%e5201452039%_))))
                 (if (gx#stx-null? _%tl5201652046%_)
                     ((lambda (_%L52049%_ _%L52051%_)
                        (_%loop51882%_
                         _%rest51908%_
                         _%type52004%_
                         (cons _%L52049%_ (cons _%L52051%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type52004%_
                          _%part51910%_)
                         '#f))
                      _%hd5201552043%_
                      _%hd5201252033%_)
                     (_%g5200752022%_ _%g5200852026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5200752022%_
                                                      _%g5200852026%_))))
                                             (_%g5200752022%_
                                              _%g5200852026%_)))))
                                 (_%g5200652069%_
                                  (list (if _%nil-check?51890%_
                                            (cons 'check-nil!
                                                  (cons _%object51888%_ '()))
                                            _%object51888%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51713%_
                                         _%type52004%_
                                         _%part51910%_)))))
                             _%$e51997%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51713%_
                             _%L51840%_
                             _%part51910%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51887%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51713%_
                       _%type51887%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5189151898%_)
                                              (let ((_%hd5189552083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5189151898%_)))
                                                    (_%tl5189652086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5189151898%_))))
                                                (let* ((_%part52089%_
                                                        _%hd5189552083%_)
                                                       (_%rest52092%_
                                                        _%tl5189652086%_))
                                                  (_%K5189452079%_
                                                   _%rest52092%_
                                                   _%part52089%_)))
                                              (_%E5189351904%_)))))
                                    _%$e51875%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51713%_)))))))
                     (if (pair? _%g5185451861%_)
                         (let ((_%hd5185852101%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5185451861%_)))
                               (_%tl5185952104%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5185451861%_))))
                           (let* ((_%var52107%_ _%hd5185852101%_)
                                  (_%parts52110%_ _%tl5185952104%_))
                             (_%K5185752097%_ _%parts52110%_ _%var52107%_)))
                         (_%E5185651867%_)))))
                (_%__kont8043980440%_
                 (lambda (_%L51783%_ _%L51785%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51713%_)))))
            (let ((_%__match8046180462%_
                   (lambda (_%e5172151808%_
                            _%hd5172251812%_
                            _%tl5172351815%_
                            _%e5172451818%_
                            _%hd5172551822%_
                            _%tl5172651825%_
                            _%e5172751828%_
                            _%hd5172851832%_
                            _%tl5172951835%_)
                     (let ((_%L51838%_ _%hd5172851832%_)
                           (_%L51840%_ _%hd5172551822%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51840%_)
                           (_%__kont8043780438%_ _%L51838%_ _%L51840%_)
                           (_%__kont8043980440%_
                            _%hd5172851832%_
                            _%hd5172551822%_))))))
              (if (gx#stx-pair? _%__stx8043480435%_)
                  (let ((_%e5172151808%_ (gx#syntax-e _%__stx8043480435%_)))
                    (let ((_%tl5172351815%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5172151808%_)))
                          (_%hd5172251812%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5172151808%_))))
                      (if (gx#stx-pair? _%tl5172351815%_)
                          (let ((_%e5172451818%_
                                 (gx#syntax-e _%tl5172351815%_)))
                            (let ((_%tl5172651825%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5172451818%_)))
                                  (_%hd5172551822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5172451818%_))))
                              (if (gx#stx-pair? _%tl5172651825%_)
                                  (let ((_%e5172751828%_
                                         (gx#syntax-e _%tl5172651825%_)))
                                    (let ((_%tl5172951835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5172751828%_)))
                                          (_%hd5172851832%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5172751828%_))))
                                      (if (gx#stx-null? _%tl5172951835%_)
                                          (_%__match8046180462%_
                                           _%e5172151808%_
                                           _%hd5172251812%_
                                           _%tl5172351815%_
                                           _%e5172451818%_
                                           _%hd5172551822%_
                                           _%tl5172651825%_
                                           _%e5172751828%_
                                           _%hd5172851832%_
                                           _%tl5172951835%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5171751746%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5171751746%_)))))
                          (let () (declare (not safe)) (_%g5171751746%_)))))
                  (let () (declare (not safe)) (_%g5171751746%_))))))))))
